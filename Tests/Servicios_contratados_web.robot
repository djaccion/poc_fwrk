*** Settings ***
Library    SeleniumLibrary
#Library    AppiumLibrary   timeout=30
Library    Process
Library    DateTime
Library    OperatingSystem
Library    ..//Libraries//crear_csv.py
Library    ..//libraries//travelfree.py
Resource    ..//resources//keywords.robot


*** Variables ***
${archivo}    .\\output\\CSV\\Servicios_contratados.csv
${terminal}    WEB
${conexion}    WiFi
${journy}    El tiempo de carga del histograma
${cabecera}   Terminal;Conexion;Hora inicio de sesion;Hora de fin de sesion;Mi linea;Mi tarifa;Servicios contratados\n


***Test Cases***

Medición de tiempos END2END

    Crear csv si no existe
    Cargar el histograma
    Log To Console    He finalizado la iteración


***Keywords***

Crear csv si no existe
    ${fileExists}=    File Exists    ${archivo}
    Run Keyword If    ${fileExists} is False    Append To File    ${archivo}    ${cabecera}

Cargar el histograma
    ${env} =  Set Variable If
    ...  '${entorno}' == 'ENT1'     https://ecare.uat2.si.orange.es/soycliente/
    ...  '${entorno}' == 'ENT2'     https://ecare.uat.si.orange.es/soycliente/
    ...  '${entorno}' == 'ASEG'     https://ecare.ase.si.orange.es/soycliente/
    ...  '${entorno}' == 'LOCAL'    http://localhost:4201/soycliente/
    ...  '${entorno}' == 'PROD'     https://areaprivada.orange.es/soycliente/
    Set Global Variable    ${env}

    ${list} =     Create List    --ignore-certificate-errors    --allow-insecure-localhost    --window-size=1440x900    --disable-gpu   --allow-file-access-from-files     --disable-web-security
    ${args} =     Create Dictionary    args=${list}
    ${desired caps_chrome} =    Create Dictionary     name=${globalTestName}     acceptInsecureCerts=${true}      acceptSslCerts=${true}   seleniumProtocol=${seleniumProtocol}    browserName=${browser_chrome}    maxInstances=${1}    shardTestFiles=${true}    platform=${platform}    version=${version_chrome}    chromeOptions=${args}
    Open browser    url=https://areaprivada.orange.es/soycliente/  browser=chrome    desired_capabilities=${desired caps_chrome}      options=add_argument("--allow-file-access-from-files")  
    Sleep    5
    SeleniumLibrary.Click Element    ${btn_submitLoginForm_uat_consent}

    Coloco la SPA
    Introduzco usuario prod
    Introduzco password prod
    Entro en la SPA remota de prod
    A por el histograma
    Sleep    4
    Click Element    ${mi_linea}
   
## VOY AL DASHBOARD
#
    Log To Console    *
    Log To Console    Iniciado sesión en el ${terminal} con conexión ${conexion}. Estamos midiendo ${journy}    
    ${ini_cms} =  Get Current Date
    Wait Until Element Is Visible    //*[@id="secondaryContainer"]/cms-dinamic-page/cms-layout/div/div[4]/div/div/div/div/cms-module-render/ocs-title-page/h2
    ${fin_cms} =  Get Current Date
    # Esperamos a que sea visible el elemnto del título de la página: hemos cumplido con el CMS    
    
    Wait Until Page Contains    Go    timeout= 30
    ${fin_tarifa_Go} =  Get Current Date
    ${ini_servicios_contratados} =  Get Current Date
    Wait Until Page Contains    Compromiso   timeout= 30 
    Click Element    //*[@id="secondaryContainer"]/cms-dinamic-page/cms-layout/div/div[5]/div/div/div[1]/div/cms-module-render/ocs-module-grouper/div/cms-module-render[3]/ocs-container-contract-services/ocs-contract-services/ocs-accordion-row/div/ocs-accordion-header-base/button
    Wait Until Page Contains    5G   timeout= 20
    ${fin_servicios_contratados} =  Get Current Date

    Sleep    5    


########## Preparo los datos para escribir el CSV 

    ${milisegundos}=   Set Variable    1000

    ${t_Go} =   Subtract Date From Date     ${fin_tarifa_Go}     ${fin_cms}    result_format=number
    ${t_Go}  evaluate   ${t_Go}*${milisegundos}
    ${t_Go}  Convert To Integer   ${t_Go}
    
    ${t_page_cms} =   Subtract Date From Date     ${fin_cms}     ${ini_cms}    result_format=number
    ${t_page_cms}  evaluate   ${t_page_cms}*${milisegundos}
    ${t_page_cms}  Convert To Integer   ${t_page_cms}


    ${t_servicios_contratados} =   Subtract Date From Date     ${fin_servicios_contratados}     ${ini_servicios_contratados}    result_format=number
    ${t_servicios_contratados}  evaluate   ${t_servicios_contratados}*${milisegundos}
    ${t_servicios_contratados}  Convert To Integer   ${t_servicios_contratados}



########## Pintamos el dato y escribimos lo escribimos en un csv
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    Log To Console                                                         *
    Log To Console    ${terminal};${conexion};${ini_servicios_contratados};${fin_servicios_contratados};${t_page_cms};${t_Go};${t_servicios_contratados}\n
    Log To Console                                                         *
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    
    Append To File    ${archivo}    ${terminal};${conexion};${ini_servicios_contratados};${fin_servicios_contratados};${t_page_cms};${t_Go};${t_servicios_contratados}\n   encoding=UTF-8

    Close All Browsers