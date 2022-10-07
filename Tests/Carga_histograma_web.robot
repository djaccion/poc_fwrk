*** Settings ***
#Library    SeleniumLibrary
Library    AppiumLibrary   timeout=30
Library    Process
Library    DateTime
Library    OperatingSystem
Library    ..//Libraries//crear_csv.py
Library    ..//libraries//travelfree.py
Resource    ..//resources//keywords.robot


*** Variables ***
${archivo}    .\\output\\CSV\\Cargar_histograma.csv
${terminal}    WEB
${conexion}    WiFi
${journy}    El tiempo de carga del histograma
${cabecera}   Terminal;Conexion;Hora inicio de sesion;Hora de fin de sesion;Facturas;Histograma;En tu banco\n


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
   
## VOY AL DASHBOARD
#
   Log To Console    *
   Log To Console    Iniciado sesión en el ${terminal} con conexión ${conexion}. Estamos midiendo ${journy}

    ${ini_cms} =  Get Current Date
    # Esperamos a que sea visible el elemnto del título de la página: hemos cumplido con el CMS    
    Wait Until Page Contains    Ajustes    timeout= 30 
    ${fin_cms} =  Get Current Date

    ${ini_histograma} =  Get Current Date
    Wait Until Page Contains    10,21€  timeout= 20
    ${fin_histograma} =  Get Current Date
    #Sleep    7
    Wait Until Page Contains    Ya disponible   timeout= 20
    ${fin_ya} =  Get Current Date


########## Preparo los datos para escribir el CSV 

    ${milisegundos}=   Set Variable    1000

    
    ${t_page_cms} =   Subtract Date From Date     ${fin_cms}     ${ini_cms}    result_format=number
    ${t_page_cms}  evaluate   ${t_page_cms}*${milisegundos}
    ${t_page_cms}  Convert To Integer   ${t_page_cms}


    ${t_histograma} =   Subtract Date From Date     ${fin_histograma}     ${ini_histograma}    result_format=number
    ${t_histograma}  evaluate   ${t_histograma}*${milisegundos}
    ${t_histograma}  Convert To Integer   ${t_histograma}


    ${t_ya} =   Subtract Date From Date     ${fin_ya}     ${fin_histograma}    result_format=number
    ${t_ya}  evaluate   ${t_ya}*${milisegundos}
    ${t_ya}  Convert To Integer   ${t_ya}

########## Pintamos el dato y escribimos lo escribimos en un csv
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    Log To Console                                                         *
    Log To Console    ${terminal};${conexion};${ini_histograma};${fin_histograma};${t_page_cms};${t_histograma};${t_ya}\n
    Log To Console                                                         *
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    
    Append To File    ${archivo}    ${terminal};${conexion};${ini_histograma};${fin_histograma};${t_page_cms};${t_histograma};${t_ya}\n   encoding=UTF-8

    Close All Browsers