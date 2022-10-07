*** Settings ***
Library    SeleniumLibrary    timeout=30
#Library    AppiumLibrary   timeout=30
Library    Process
Library    DateTime
Library    OperatingSystem
Library    ..//Libraries//crear_csv.py
Library    ..//libraries//travelfree.py
Resource    ..//resources//keywords.robot


*** Variables ***
${archivo}    .\\output\\CSV\\Cargar_DatsPersonales.csv
${terminal}    WEB
${conexion}    Ethernet
${journy}    El tiempo de carga de Datos Personales
${cabecera}   Terminal;Conexion;Hora inicio de sesion;Hora de fin de sesion;Datos personales CMS;Datos personales CC\n


***Test Cases***

Medición de tiempos END2END

    Crear csv si no existe
    Cargar datos personales
    Log To Console    He finalizado la iteración


***Keywords***

Crear csv si no existe
    ${fileExists}=    File Exists    ${archivo}
    Run Keyword If    ${fileExists} is False    Append To File    ${archivo}    ${cabecera}

Cargar datos personales
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
    Click Element    ${btn_submitLoginForm_uat_consent}

    Coloco la SPA
    Introduzco usuario prod
    Introduzco password prod
    Entro en la SPA remota de prod
    A por Datos Personales
# VOY AL DASHBOARD

    Log To Console    *
    Log To Console    Iniciado sesión en el ${terminal} con conexión ${conexion}. Estamos midiendo ${journy}


    ${ini_cms} =  Get Current Date
    Wait Until Page Contains    Datos de mi contrato
    ${fin_cms} =  Get Current Date
    Wait Until Page Contains    Nombre y Apellidos
    ${fin_datos_personales} =  Get Current Date


########## Preparo los datos para escribir el CSV 

    ${milisegundos}=   Set Variable    1000
    
    ${t_page_cms} =   Subtract Date From Date     ${fin_cms}     ${ini_cms}    result_format=number
    ${t_page_cms}  evaluate   ${t_page_cms}*${milisegundos}
    ${t_page_cms}  Convert To Integer   ${t_page_cms}


    ${t_datos_personales} =   Subtract Date From Date     ${fin_datos_personales}     ${fin_cms}    result_format=number
    ${t_datos_personales}  evaluate   ${t_datos_personales}*${milisegundos}
    ${t_datos_personales}  Convert To Integer   ${t_datos_personales}


########## Pintamos el dato y escribimos lo escribimos en un csv
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    Log To Console                                                         *
    Log To Console    ${terminal};${conexion};${ini_cms};${fin_datos_personales};${t_page_cms};${t_datos_personales}\n
    Log To Console                                                         *
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    
    Append To File     ${archivo}      ${terminal};${conexion};${ini_cms};${fin_datos_personales};${t_page_cms};${t_datos_personales}\n   encoding=UTF-8


    Close All Browsers