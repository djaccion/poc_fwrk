***Settings***

Library    AppiumLibrary   timeout=30
Library    Process
Library    DateTime
Library    OperatingSystem
Library    ..//Libraries//crear_csv.py

*** Variables ***

${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    52004befb4c2155f
${platformName}    android
${noReset}    True
${archivo}    .\\output\\CSV\\Datos_personales.csv
${terminal}    Samsung A5
${conexion}    Wifi
${journy}    El tiempo de carga del componeteds de datos personales
${cabecera}   Terminal;Conexion;Hora inicio de sesion;Hora de fin de sesion;Dashboard;Datos peronales CMS;Datos personales CC\n


***Test Cases***

Medición de tiempos END2END
    Crear csv si no existe
    Cargar datos personales
    Quit Application
    Close All Applications
    Log To Console    He finalizado la iteración


***Keywords***

Crear csv si no existe
    ${fileExists}=    File Exists    ${archivo}
    Run Keyword If    ${fileExists} is False    Append To File    ${archivo}    ${cabecera}
    
Cargar datos personales
    
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=uiAutomator2
    ...                 platformName=Android
    ...                 platformVersion=8
    #...                 deviceName=RFCN90BRTAA  #Este es el dispositivo (adb devices)     ---> Samsung S20FE
    ...                 deviceName=52004befb4c2155f   #Este es el dispositivo (adb devices) --> Huawei P40 Lite
    ...                 appPackage=com.orange.miorange.dev
    ...                 appActivity=com.orange.MainActivity 
    ...                 autoGrantPermissions=true
    ...                 noReset=true

# VOY AL DASHBOARD

    Log To Console    *
    Log To Console    Iniciado sesión en el ${terminal} con conexión ${conexion}. Estamos midiendo ${journy}
    # Esperamos hasta que se lean Mis productos
    ${ini_arranque} =  Get Current Date
    Wait Until Page Contains    Mis productos
    ${fin_arranque} =  Get Current Date
    
# HE LLEGADO AL DASHBOARD
    
    Go To Url   https://areaprivada.orange.es/soycliente/mi-contrato/mis-datos-personales
    ${ini_cms} =  Get Current Date
    Wait Until Page Contains    Datos de mi contrato
    ${fin_cms} =  Get Current Date
    Wait Until Page Contains    Nombre y Apellidos
    ${fin_datos_personales} =  Get Current Date

########## Preparo los datos para escribir el CSV 

    ${milisegundos}=   Set Variable    1000
 
    ${t_arranque} =   Subtract Date From Date     ${fin_arranque}     ${ini_arranque}    result_format=number
    ${t_arranque}  evaluate   ${t_arranque}*${milisegundos}
    ${t_arranque}  Convert To Integer   ${t_arranque}
    
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
    Log To Console    ${terminal};${conexion};${ini_arranque};${fin_datos_personales};${t_arranque};${t_page_cms};${t_datos_personales}\n
    Log To Console                                                         *
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    
    Append To File     ${archivo}      ${terminal};${conexion};${ini_arranque};${fin_datos_personales};${t_arranque};${t_page_cms};${t_datos_personales}\n   encoding=UTF-8

Close Session
    Close Application

Close Application
    Quit Application   
