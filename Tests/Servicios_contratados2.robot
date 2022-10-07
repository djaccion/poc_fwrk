***Settings***

Library    AppiumLibrary   timeout=30
Library    Process
Library    DateTime
Library    OperatingSystem
Library    ..//Libraries//crear_csv.py

*** Variables ***

${REMOTE_URL}   http://localhost:4723/wd/hub
${deviceName}    RFCN90BRTAA
${platformName}    android
${noReset}    True
${archivo}    .\\output\\CSV\\Servicios_contratados.csv
${terminal}    Huawei P40 Lite
${conexion}    4G
${journy}    Servicios Contratados
${cabecera}   Terminal;Conexion;Hora inicio de sesion;Hora de fin de sesion;Dashboard;Mi linea;Mi tarifa;Servicios contratados\n

***Test Cases***

Medición de tiempos END2END

    Crear csv si no existe
    Servicios contratados
    Quit Application
    Close All Applications
    Log To Console    He finalizado la iteración


***Keywords***

Crear csv si no existe
    ${fileExists}=    File Exists    ${archivo}
    Run Keyword If    ${fileExists} is False    Append To File    ${archivo}    ${cabecera}

Servicios contratados
    
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=uiAutomator2
    ...                 platformName=Android
    ...                 platformVersion=10
    #...                 deviceName=RFCN90BRTAA  #Este es el dispositivo (adb devices)     ---> Samsung S20FE
    ...                 deviceName=EPHUT20917001626   #Este es el dispositivo (adb devices) --> Huawei P40 Lite
    ...                 appPackage=com.orange.miorange
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
    
    # Nos moleta el NBA y lo queremos quitar:esto son tiempos muertos no registrados
    Wait Until Page Contains     Smartphones    timeout= 10
    Wait Until Page Does Not Contain     Smartphones    timeout= 10

# VOY A MI LINEA
    # Estamos en el dashboard de Mis productos y pulsamos en el footer, en Mi línea
    Tap   //*[@resource-id='ocsTabBarDashboard_lnk_miLinea_1']    count=1
    ${ini_cms} =  Get Current Date
    # Esperamos a que sea visible el elemnto del título de la página: hemos cumplido con el CMS
    Wait Until Element Is Visible    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]
    #Wait Until Element Is Visible  
    ${fin_cms} =  Get Current Date
# HE LLEGADO A MI LINEA

# VOY A POR SERVICIOS CONTRATADOS
    # A la vez que acaba esa carga empieza a cargarse los componentes de servicios contratados y servicios de red
    # Guardamos otra variable de tiempo por si vemos conveniente moverla
    
    # Aquí esperamos a ver el nombre de la tarifa
    Wait Until Page Contains    Go  timeout= 30
    ${fin_tarifa_Go} =  Get Current Date
    # Para mayor seguridad leemos un literal de compromiso de permanencia
    ${ini_servicios_contratados} =  Get Current Date
    Wait Until Page Contains    Ver   timeout= 30  
    # A continuación pulsamos en el link de Servicios contratados
    Click Element    xpath=//hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[4]
    # Esperamos a que se lea el literal 5G
    Wait Until Page Contains    5G    timeout= 20
    ${fin_servicios_contratados} =  Get Current Date  
    Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Button
    Wait Until Page Contains    Inicio renderizado datos OK   timeout= 30
    ${text1}	Get Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[7]
    ${text2}	Get Text    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[12]
# HEMOS LLEGADO A SERVICIOS CONTRATADOS

########## Preparo los datos para escribir el CSV 

    ${milisegundos}=   Set Variable    1000
    ${t_Go} =   Subtract Date From Date     ${fin_tarifa_Go}     ${fin_cms}    result_format=number
    ${t_Go}  evaluate   ${t_Go}*${milisegundos}
    ${t_Go}  Convert To Integer   ${t_Go}
 
    ${t_arranque} =   Subtract Date From Date     ${fin_arranque}     ${ini_arranque}    result_format=number
    ${t_arranque}  evaluate   ${t_arranque}*${milisegundos}
    ${t_arranque}  Convert To Integer   ${t_arranque}
    
    ${t_page_cms} =   Subtract Date From Date     ${fin_cms}     ${ini_cms}    result_format=number
    ${t_page_cms}  evaluate   ${t_page_cms}*${milisegundos}
    ${t_page_cms}  Convert To Integer   ${t_page_cms}

    ${t_page_componente} =   Subtract Date From Date     ${ini_servicios_contratados}     ${fin_cms}    result_format=number
    ${t_page_componente}  evaluate   ${t_page_componente}*${milisegundos}
    ${t_page_componente}  Convert To Integer   ${t_page_componente}

    ${t_servicios_contratados} =   Subtract Date From Date     ${fin_servicios_contratados}     ${ini_servicios_contratados}    result_format=number
    ${t_servicios_contratados}  evaluate   ${t_servicios_contratados}*${milisegundos}
    ${t_servicios_contratados}  Convert To Integer   ${t_servicios_contratados}

    ${t_prueba} =   Subtract Date From Date     ${fin_servicios_contratados}      ${ini_arranque}    result_format=number
    ${t_prueba}  evaluate   ${t_prueba}*${milisegundos}
    ${t_prueba}  Convert To Integer   ${t_prueba}


########## Pintamos el dato y escribimos lo escribimos en un csv
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    Log To Console                                                         *
    Log To Console   ${terminal};${conexion};${ini_arranque};${fin_servicios_contratados};${t_arranque};${t_page_cms};${t_Go};${t_servicios_contratados};${text1};${text2}\n
    Log To Console                                                         *
    Log To Console   *********************************************************************************************************************************
    Log To Console   *********************************************************************************************************************************
    
    Append To File     ${archivo}      ${terminal};${conexion};${ini_arranque};${fin_servicios_contratados};${t_arranque};${t_page_cms};${t_Go};${t_servicios_contratados};${text1};${text2}\n   encoding=UTF-8

Close Session
    Close Application

Close Application
    Quit Application