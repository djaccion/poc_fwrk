*** Settings ***
Library    json
Library    Collections
Library    String
Library    AppiumLibrary
Library    OperatingSystem
Library    RequestsLibrary
Library    DateTime
Library    ScreenCapLibrary
Library    Process
Library    ..//libraries//travelfree.py
Resource    ..//resources//recursos.robot
Resource    ..//resources//config.robot
Resource    ..//resources//inventario_elementos.robot
Resource    ..//resources//inventario_urls.robot
Resource    ..//resources//inventario_valida.robot

*** Variables ***
${USERNAME}     isratw_I4H2aM     #browserstack
${ACCESS_KEY}   Tz9pt7mV6wq5ghjZAi7F    #browserstack
#${USERNAME}     israelgarate     #saucelabs
#${ACCESS_KEY}   45608504-990d-4f4d-8902-f8911cb92a1e    #saucelabs
${PLATFORM_NAME}        Android             #Android
${PLATFORM_VERSION}     10      #Android
${DEVICE_NAME}          Samsung Galaxy S20          #android
${AUTOMATION_NAME}     UiAutomator2   #android
#${PLATFORM_NAME}        ios                 #ios
#${PLATFORM_VERSION}     14      #ios
#${DEVICE_NAME}          iPhone 12          #ios
#${AUTOMATION_NAME}     XCUITest   #ios
${DEVICE_ORIENTATION}   portrait
#${PRIVATE_DEVICES_ONLY}  False
${REMOTE_URL}       http://${USERNAME}:${ACCESS_KEY}@hub-cloud.browserstack.com/wd/hub          #browserstack
#${REMOTE_URL}      https://${USERNAME}:${ACCESS_KEY}@ondemand.eu-central-1.saucelabs.com:443/wd/hub            #saucelabs
${TEST_BUILD}      Prueba BrowserStack

*** Keywords ****

Abro app
    Set Library Search Order  AppiumLibrary    SikuliLibrary
   # 
    ${env} =  Set Variable If
    ...  '${entorno}' == 'ENT1'     https://ecare.uat2.si.orange.es/soycliente/
    ...  '${entorno}' == 'ENT2'     https://ecare.uat.si.orange.es/soycliente/
    ...  '${entorno}' == 'ASEG'     https://ecare.ase.si.orange.es/soycliente/
    ...  '${entorno}' == 'LOCAL'    http://localhost:4201/soycliente/
    ...  '${entorno}' == 'PROD'     https://areaprivada.orange.es/soycliente/
    Set Global Variable    ${env}


    Open Application    ${REMOTE_URL}
    ...                 platformName=${PLATFORM_NAME}
    ...                 os_version=${PLATFORM_VERSION}    #browserstack
    #...                 platformVersion=${PLATFORM_VERSION}       #saucelabs
    ...                 device=${DEVICE_NAME}  #BrowserStack
    #...                 deviceName=${DEVICE_NAME}   #saucelabs
    ...                 deviceOrientation=${DEVICE_ORIENTATION} 
    ...                 app=bs://cbd6c80adca1944db03ee7051cbbca4cea772094                   #BrowserStack android
    #...                 app=storage:filename=acmeorange-pro-unsigned-release-1.22.1.apk                        #saucelabs android
    #...                 app=bs://16a3961a9ef02c000c444c7fd19dc0f0e60e7acb                 #BrowserStack ios
    #...                 app=storage:filename=ipa_produccion_ACME.ipa                       #saucelabs ios
    ...                 name=${TEST_NAME}
    ...                 build=${TEST_BUILD}
    ...                 automationName=${AUTOMATION_NAME}
    ...                 autoGrantPermissions=true
    ...                 autoAcceptAlerts=true
    ...                 autoDismissAlerts=true
    ...                 noReset=true

    Sleep    2
    Log to Console   ${entorno}
    Log to Console   ${env}

Fecha y hora de inicio de la Suite
    ${fecha_inicial} =      Get Current Date    result_format=timestamp
    ${fecha_inicial} =      Get Current Date    result_format=%Y-%m-%dT%H:%M:%S.%f
    ${fecha_inicial} =    Get Substring    ${fecha_inicial}	0   23
    ${lista_testplan}    Create List    ${test_plan}
    ${json_xray_suite}=    Get file    ./resources/json/xray_suite_plantilla.json
    ${object}=  Evaluate   json.loads('''${json_xray_suite}''')   json
    Set To Dictionary    ${object["fields"]}      customfield_14817=${fecha_inicial}+0100
    Set To Dictionary    ${object["fields"]}      customfield_14827=${lista_testplan} 
    ${xray_suite}    Json.Dumps   ${object}     ensure_ascii=False
    Create File   ./output/xray/xray_suite.json     ${xray_suite}
    Log To Console   *
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   TEST PLAN QUE SE INICIA:
    Log To Console               ${test_plan}-[ACME-TEST PLAN-AUTOMATIC]-Batería de Pruebas de regresión automáticas ${perfil}
    Log To Console   *
    Log To Console               Lo vamos a ejecutar contra el entorno ${entorno} y sobre un navegador ${deviceName}
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************

Preparo fecha y hora de los tests
    ${json_xray_test}=    Get file    ./resources/json/xray_test_plantilla.json
    ${object}=  Evaluate   json.loads('''${json_xray_test}''')   json
    ${json_xray_test}    Json.Dumps   ${object}     ensure_ascii=False
    Create File   ./output/xray/xray_test.json    ${json_xray_test}

Fecha y hora de fin de la Suite
    Sleep   1
    ${fecha_final} =      Get Current Date    result_format=timestamp
    ${fecha_final} =      Get Current Date    result_format=%Y-%m-%dT%H:%M:%S.%f
    ${fecha_final} =	Get Substring	${fecha_final}	0   23
    ${json_xray_suite}=    Get file    ./output/xray/xray_suite.json
    ${object}=  Evaluate   json.loads('''${json_xray_suite}''')   json
    Set To Dictionary    ${object["fields"]}     customfield_14818=${fecha_final}+0100
    ${xray_suite}    Json.Dumps   ${object}        ensure_ascii=False
    Create File   ./output/xray/xray_suite.json    ${xray_suite} 
    ############################
    Sleep   5
    Graba video hasta aquí
    #Stop Screen Recording   pepepepepe.mp4
    ###########################

Fecha y hora del inicio del test
    ${inicial_test} =      Get Current Date    result_format=timestamp
    ${inicial_test} =      Get Current Date    result_format=%Y-%m-%dT%H:%M:%S.%f
    ${inicial_test} =	   Get Substring	${inicial_test}	0   23
    Set Suite Variable    ${inicial_test}
    Log To Console   *
    Log To Console   ********************************************************************************************************
    Log To Console   ********************************************************************************************************
    Log To Console   ********************************************************************************************************
    Log To Console   TEST EN EJECUCIÓN:
    Log To Console                                ${TEST_NAME}-${TEST_TAGS}
    Log To Console   *
    Log To Console                  Se trata de un perfil ${perfil} contra el entorno ${entorno} y sobre un dispositivo real
    Log To Console   *
    Log To Console   ********************************************************************************************************
    Log To Console   ********************************************************************************************************
    Log To Console   ********************************************************************************************************

Fecha y hora de fin del test
    ${final_test}=    Get Current Date      local      exclude_millis=yes      result_format=%Y-%m-%dT%H:%M:%S+01:00
    ${final_test} =   Get Current Date    result_format=timestamp
    ${final_test} =   Get Current Date    result_format=%Y-%m-%dT%H:%M:%S.%f
    ${final_test} =	  Get Substring    ${final_test}	0   23
    ${datos_test}=    Create Dictionary    testKey=${TEST_NAME}   start=${inicial_test}+0100    finish=${final_test}+0100    comment=${comentario}  status=${TEST STATUS}
    @{lista_tests}=     Create List   ${datos_test}
    ${xray_test}=    Get file    ./output/xray/xray_test.json
    ${xray_test_eval}=  Evaluate   json.loads('''${xray_test}''')   json
    Append To List	${xray_test_eval['tests']}     @{lista_tests}
    ${xray_test}=    Json.Dumps    ${xray_test_eval}     ensure_ascii=False
    Create File   ./output/xray/xray_test.json    ${xray_test} 

Pasa los certificados
    travelfree.warning    
    travelfree.verify    ${REMOTE_URL}

Coloco la SPA
    Set Window Size      1000  1000
    Set Window Position     900     0
    Set Browser Implicit Wait    2

Inicio de la aplicación
    Click Element    ${inicio}

Cierro la sesion
    Click Element     ${menu_privado}
    Click Element     ${Image_cerrar_sesion}

Cierro la aplicación
    Sleep   5
    Log To Console   *
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   TEST PLAN QUE SE ACABA:
    Log To Console                  Este Test Plan ha finalizado y voy a cerrar todos los navegadores 
    Log To Console   *
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Log To Console   *****************************************************************************************************************************************
    Quit Application
    Close All Applications

Capturo la pantalla
    Sleep    3
    Capture Page Screenshot

######## LOGIN

Introduzco usuario
    Input Text    ${input_userNameField_${entorno}}    ${CREDENTIALS_${perfil}_${entorno}}[MSISDN]

Introduzco password
    Input Text    ${input_passwordField_${entorno}}    ${CREDENTIALS_${perfil}_${entorno}}[PASS]

Entro en la SPA
    Click Button    ${btn_submitLoginForm_${entorno}}
    Wait Until Page Contains     Inicio    timeout= 10
    Sleep   4
    Cierro NBA si existe
    Cerrar tutorial si existe
    Cierro NBA si existe
    Cierro NBA si existe

Vuelvo atras
    Click Element     ${click_back}

######## CONTROL DE NBAs Y TUTORIALES

Cerrar tutorial si existe
    Sleep    2
    ${tutorial}=    Run Keyword And Return Status    Page Should Contain Element   ${tutorial}
    Run Keyword If    ${tutorial}    Log to Console     Cierro el TUTORIAL para que no interrumpa la prueba.
    Run Keyword If    ${tutorial}    Click Button   ${aspa_tutorial}
                    ...  ELSE     Log to Console     ¡Perfecto!, no he encontrado TUTORIAL que interrumpa la prueba.
    Sleep    2

Cierro NBA si existe
    Sleep    2
    ${present_NBA}=    Run Keyword And Return Status    Page Should Contain Element    ${NBA}
    Run Keyword If    ${present_NBA}    Log to Console     Cierro el NBA para que no interrumpa la prueba.
    Run Keyword If    ${present_NBA}    Click Text   Close
                    ...  ELSE     Log to Console     ¡Estupendo!, no ha aparecido NBA que interrumpa la prueba.
    Sleep    3
    
Acceder al dashboard principal postcondicion
    Sleep   4
    Go To Url   url=${env}${pag_dashboard}
    Sleep   1
    Click Element   ${TV}
    Sleep   1
    Cierro NBA si existe
    Click Element   ${selector_movil}
    Cierro NBA si existe

Cierro tutorial
    Sleep   2
    Cierro NBA si existe
    Click Element At Coordinates       987  187
    Sleep   2
    Log To Console      Intento cerrar el tutorial
    Go To Url   url=${env}${pag_dashboard}
    Cierro NBA si existe

Logado OK
    Sleep   5
    Input Text          ${input_user}       ${CREDENTIALS_${perfil}_${entorno}}[MSISDN]
    Input Password      ${input_password}   ${CREDENTIALS_${perfil}_${entorno}}[PASS]
    Sleep   2
    Click Element   ${boton_entrar}
    Cierro tutorial
    Click Element   ${TV}
    Cierro tutorial
    Click Element   ${selector_movil}
    Cierro tutorial

Acceder al dashboard principal
    Sleep   4
    Go To Url   url=${env}${pag_dashboard}
    Sleep   1
    Click Element   ${TV}
    Sleep   1
    Cierro NBA si existe
    Click Element   ${selector_movil}
    Cierro NBA si existe
    ########################
    Graba video desde aquí
    #Start Screen Recording
    ########################
Graba video desde aquí
    ${fecha_grabacion} =      Get Current Date    result_format=%d%m%Y
    ${video_name}    Set Variable      TESTPLAN-${test_plan}_TEST-${TEST_NAME}_${TEST_TAGS}_${entorno}_APP_${fecha_grabacion}
    Set Global Variable    ${video_name}
    Start Video Recording   	alias=None      name=${video_name}    fps=None       size_percentage=0.8        embed=True      embed_width=800px       monitor=1
    Log To Console      *
    Log To Console      En este momento comienzo a grabar un video que encontraras en el directorio ./output/robotframework con el nombre ${video_name}.mp4
    Log To Console      *
Graba video hasta aquí
    Sleep   4
    Stop All Video Recordings
    #Copy Files  ${video_name}_1.webm   ${video_name}.mp4
    #Remove Files    ${video_name}_1.webm
    Log To Console      *
    Log To Console      Paramos la grabación del video que encontrarás en ./output/robotframework
    Log To Console      *

Deslogarte
    Tap   ${menu_privado}    count=2
    Sleep  5
    Click Element At Coordinates       97  1117
    Sleep  5
    Click Element At Coordinates        600  1300
    Sleep  5
    Click Element   ${boton_ojito} 

Probar login KO contraseña
    Sleep   5
    Input Text      ${input_user}       655758100
    Input Password      ${input_password}   passerror
    Click Element   ${boton_ojito} 
    Click Element   ${boton_entrar}
    Sleep   5
    @{all_contexts}=     get contexts
    # log to console      @{all_contexts}[0]
    #log to console      @{all_contexts}[1]
    switch to context   WEBVIEW_com.orange.miorange.dev
    Wait Until Page Contains    Usuario/contraseña incorrecto.  timeout= 20
    Click Element   ${boton_cerrarModal}
    switch to context   NATIVE_APP
    Sleep   5

Probar login KO pasaporte
    Click Element   ${boton_tipologin}
    Input Text      ${input_user}       655758100
    Input Password      ${input_password}   zxcvbnm,
    Click Element   ${boton_ojito} 
    Click Element   ${boton_entrar}
    Sleep   15
    Wait Until Page Contains    Verifica que el pasaporte y/o contraseña introducidos son válidos.   timeout= 20
    Click Text   Verifica 
    Sleep   5
    Click Element   ${boton_tipologin}

#Usuario/contraseña incorrecto.


Add Needed Image Path
    Add Image Path    ${IMAGE_DIR}

Seguimiento
    Click    Captura.png