README

ARCLMU-3181.robot
ARCLMU-3548.robot

pip install robotframework-screencaplibrary: para grabar videos

Para instalar allure
npm install -g allure-commandline --save-dev
para levantar report

allure serve ./output/allure

/soycliente/dashboard?tab=mis-productos/dashboard
*************   COMANDO PYTHON:

python ./tests/lanzamiento_HW.py Carga_histograma_web.robot 2000

python ./tests/lanzamiento_HW.py Servicios_contratados_web.robot 2000
python ./tests/lanzamiento_HW.py Carga_MisDatosPersonales.robot 2

python ./tests/lanzamiento_LOCAL.py ENT2 https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ARCLMU-8271 "ARCLMU-8334"

python ./tests/lanzamiento.py PROD https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ARCLMU-3181 "*"

python ./tests/lanzamiento.py ENT1 https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ARCLMU-3181 "*"

python ./tests/lanzamiento.py ENT2 https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ARCLMU-8271 "*" 

python ./tests/lanzamiento.py ENT1 https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ARCLMU-3181 "ARCLMU-1411,ARCLMU-1412,ARCLMU-1414   "

python ./tests/lanzamiento.py ENT1 https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub chrome ejecuta2  "ARCLMU-123456,ARCLMU-789,pepep, ajjdjhndf   ,ieie,ARCLMU-*"
*************   COMANDO:

    robot -d ./results --variable grid:$GRID --variable navega:$BROWSER ./tests/demo_spa.robot

*************  GRIDS:

        https://gcsw-testfed-grid-devtc.shared-nonprod.cloud.si.orange.es/wd/hub
        https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub

*************  BROWSERS:

        chrome
        firefox

*************  EJECUCIONES:

robot -d ./output/robotframework --variable entorno:http://localhost:4201/soycliente/dashboard --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome --listener allure_r
obotframework ./tests/000*



robot -d ./output/robotframework --variable entorno:https://ecare.uat2.si.orange.es/soycliente/ --variable navega:chrome --listener allure_robotframework ./tests/*

entorno:
        https://ecare.uat2.si.orange.es/soycliente/
        https://ecare.uat.si.orange.es/soycliente/
        https://ecare.ase.si.orange.es/soycliente/
        http://localhost:4201/soycliente/
        https://areaprivada.orange.es/soycliente/

    
    ${env} =  Set Variable If
    ...  '${entorno}' == 'ENT1'     https://ecare.uat2.si.orange.es/soycliente/
    ...  '${entorno}' == 'ENT2'     https://ecare.uat.si.orange.es/soycliente/
    ...  '${entorno}' == 'ASEG'     https://ecare.ase.si.orange.es/soycliente/
    ...  '${entorno}' == 'LOCAL'    http://localhost:4201/soycliente/
    ...  '${entorno}' == 'PROD'     https://areaprivada.orange.es/soycliente/
    Set Global Variable    ${env}

http://localhost:4201/soycliente/publica/login

navega:
        chrome
        firefox

robot -d ./output/robotframework --variable entorno:https://ecare.uat.si.orange.es/soycliente/ --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome --listener allure_robotframework ./tests/0001_P*

 robot -d ./output/robotframework --variable entorno:LOCAL --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:firefox --listener allure_robotframework ./tests/0001_R*

robot -d  ./results ./tests/demo_spa.robot
robot --listener allure_robotframework ./tests/demo_spa.robot

robot -d ./output/robotframework --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome --listener allure_robotframework ./tests/

$ robot -d ./output/robotframework --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome --listener allure_robotframework --include inicioORMas ./tests/



robot -d ./results --variable grid:https://gcsw-testfed-grid-devtc.shared-nonprod.cloud.si.orange.es/wd/hub --variable navega:chrome ./tests/login_uat.robot

robot -d ./results --variable grid:https://gcsw-testfed-grid-devtc.shared-nonprod.cloud.si.orange.es/wd/hub --variable navega:chrome ./tests/demo_spa.robot

robot -d ./results --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome ./tests/demo_spa.robot
robot -d ./results --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:firefox ./tests/local.robot
robot -d ./results --variable grid:https://gcsw-testfed-grid-devtc.shared.cloud.si.orange.es/wd/hub --variable navega:chrome ./tests/local.robot

robot -d  ./results ./tests/demo_spa_local.robot
*************  RECURSOS & PERFILES
# POSTPAGO RESI                 -->ARCLMU-3181
# POSTPAGO RESI INFANCIA        -->ARCLMU-8272
# POSTPAGO RESI IMPAGO          -->ARCLMU-8273
# POSTPAGO RESI BASICO         
# POSTPAGO RESI INFANCIA BASICO
# POSTPAGO RESI IMPAGO BASICO
# PREPAGO                       -->ARCLMU-8271
# PREPAGO INFANCIA              -->ARCLMU-8274
# TARIFA KIDS                   -->ARCLMU-8275
# TARIFA KIDS MONOLINEA
# LOVE RESIDENCIAL              -->ARCLMU-8276
# LOVE RESIDENCIAL BASICO
# FIJO RESIDENCIAL              -->ARCLMU-8277
# FIJO RESIDENCIAL INFANCIA     -->ARCLMU-8278
# FIJO IMPAGO                   -->ARCLMU-8279
# FIJO BAJA                     -->ARCLMU-8280
# FIJO EMPRESAS                 -->ARCLMU-8281
# FIJO EMPRESAS INFANCIA        -->ARCLMU-8282
# POSTPAGO EMPRESAS INFANCIA
# POSTPAGO EMPRESAS IMPAGO
# POSTPAGO EMPRESAS
# POSTPAGO EMPRESAS AUTONOMO
# FRAUDE
# FRAUDE BASICO


*************  CAPABILITIES:
${list} =     Create List    --ignore-certificate-errors    --allow-insecure-localhost   --window-size=1440x900    --headless    --disable-gpu   --allow-file-access-from-files     --disable-web-security --user-data-dir=..//drivers//travelfree.py

${desired caps_chrome} =    Create Dictionary     name=${globalTestName}     acceptInsecureCerts=${true}      acceptSslCerts=${true}   seleniumProtocol=${seleniumProtocol}    maxInstances=${1}     shardTestFiles=${true}     platform=${platform}    version=${version_chrome}    chromeOptions=${args}


 ${desired caps_firefox} =    Create Dictionary    name=${globalTestName}    acceptSslCerts=${true}      acceptInsecureCerts=${true}    browserName=${BROWSER2}      maxInstances=${1}    platform=${platform}     seleniumProtocol=${seleniumProtocol}     version=${version_firefox}

options=add_argument("--disable-popup-blocking"); add_argument("--ignore-certificate-errors"); add_argument("--allow-insecure-localhost")



*************  OPTIONS

chromeOptions=${args}:
--ignore-certificate-errors    
--allow-insecure-localhost   
--window-size=1440x900    
--headless    
--disable-gpu    
--no-sandbox     
--disable-extensions   
--no-default-browser-check    
--no-first-run     
--disable-default-apps   
--disable-dev-shm-usage
--proxy-server=null



--disable-background-networking 
--enable-features=NetworkService,NetworkServiceInProcess 
--disable-background-timer-throttling 
--disable-backgrounding-occluded-windows 
--disable-breakpad 
--disable-client-side-phishing-detection 
--disable-component-extensions-with-background-pages 
--disable-default-apps 
--disable-dev-shm-usage 
--disable-extensions 
--disable-features=TranslateUI 
--disable-hang-monitor 
--disable-ipc-flooding-protection 
--disable-popup-blocking 
--disable-prompt-on-repost 
--disable-renderer-backgrounding 
--disable-sync 
--force-color-profile=srgb 
--metrics-recording-only 
--no-first-run
--enable-automation 
--password-store=basic 
--use-mock-keychain 
--disable-web-security 
--user-data-dir=/var/www/project-generator/var/chrome-user-data 
--allow-file-access-from-files 
--no-sandbox
--no-sandbox-and-elevated 
--no-zygote 
--enable-webgl 
--use-gl=desktop 
--use-skia-renderer 
--enable-gpu-rasterization 
--enable-zero-copy 
--disable-gpu-sandbox 
--enable-native-gpu-memory-buffers 
--disable-background-timer-throttling 
--disable-backgrounding-occluded-windows 
--disable-renderer-backgrounding 
--ignore-certificate-errors 
--enable-hardware-overlays 
--num-raster-threads=4 
--default-tile-width=512 
--default-tile-height=512 
--enable-oop-rasterization 
--remote-debugging-port=0 
--flag-switches-begin 
--flag-switches-end 
--enable-audio-service-sandbox 


globalTestName
acceptInsecureCerts      
acceptSslCerts   
seleniumProtocol
maxInstances
shardTestFiles
platform
version
resolution
screen-resolution
screenResolution
WebDriver
server
CONFIG_UUID
tz
    

*************  CMD

robot -d  ./results --log NONE --output NONE --report NONE -t read ./tests/Demo_SPA.robot

robot --variable Build_Id:$Build_Id path/to/tests/

--log
--output
--report
--variable

***************CONFIGURACION DE NAVEGADOR PARA PASAR DE HTTPS A PETICIONES HTTP
C:\Program Files (x86)\Google\Chrome\Application\chrome.exe" /a 
--allow-file-access-from-files 
--disable-web-security 
--user-data-dir 
--allow-running-insecure-content 
--ignore-certificate-errors




  ; add_argument("--allow-file-access-from-files"); add_argument("--disable-web-security"); add_argument("--user-data-dir"); add_argument("--allow-running-insecure-content")

  
libraries
        travelfree.py
resources
        config.robot: guardado de variables globales
        recursos.robot: guardado los recursos de prueba de user password
        inventory.robot inventario de todos los elementos de la spa
        keywords.robot pequeñas funciones nombradas como lenguaje natural
results
        log.html  
        output.xml:   este es el fchero que se le pasa a la API de XRay
        report.html
tests
        local.robot  este es una test suite que contiene varios tests
