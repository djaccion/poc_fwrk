*** Settings ***
Library    json
Library    Collections
Library    String
Library    AppiumLibrary
#Library    SeleniumLibrary
Library    OperatingSystem
Library    RequestsLibrary
Library    DateTime
Library    ..//Libraries//travelfree.py
Resource    ..//resources//keywords.robot
Resource    ..//resources//recursos.robot
Resource    ..//resources//config.robot
Resource    ..//resources//inventario_elementos.robot
Resource    ..//resources//inventario_urls.robot
Resource    ..//resources//inventario_valida.robot


*** Keywords ****


Comprobar la carga del dashboard principal
    #Swipe    900    700    900    200
    Sleep     7
    FOR    ${item}    IN    @{val_dashboard_principal_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    300
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar el dashboard de Mis consumos
   Sleep     10
    FOR    ${item}    IN    @{val_dashboard_mis_consumos_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la carga del dashboard de Fijo
    Sleep     5
    FOR    ${item}    IN    @{val_dashboard_FIJO_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    500
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
    Click Element   ${selector_movil}

Comprobar la carga del dashboard de TV
    Sleep     5
    FOR    ${item}    IN    @{val_dashboard_TV_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    400
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
    

Comprobar el dashboard de recarga y gana
    FOR    ${item}    IN    @{val_dashboard_recargaygana}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END 
######## SELECTORES
Comprobar la carga del selector de dashboard
    FOR    ${item}    IN    @{val_selector_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

######## CONTADORES

Comprobar los contadores
    Sleep   4
    FOR    ${item}    IN    @{val_contadores_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar componente d??as ??ltima factura
    Sleep   4
    FOR    ${item}    IN    @{val_dias_ultima}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END
Comprobar componente Mis servicios contratados
    Click Element   ${mis_servicios_contratados}
    Page Should Contain Text    Fecha de alta:

Comprobar componente Configuro mi l??nea
    Click Element   ${configuro_milinea}
    Wait Until Page Contains    Roaming
    FOR    ${item}    IN    @{val_componente_configuro_milinea}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

######## P??GINAS
Comprobar la p??gina de recarga
    FOR    ${item}    IN    @{val_pagina_recarga_tarjeta}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END
Comprobar la p??gina de Mi l??nea
    Sleep   5
    FOR    ${item}    IN    @{val_pagina_milinea_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    625
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de Facturas
    Sleep   5
    FOR    ${item}    IN    @{val_pagina_facturas_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la vista cl??sica de factura
    Sleep   5
    Click Element   ${pag_vistaclasica_factura}
    FOR    ${item}    IN    @{val_vistaclasica_factura_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar la vista gr??fica de factura
    Sleep   5
    Click Element   ${pag_vistagrafica_factura}
    FOR    ${item}    IN    @{val_vistagrafica_factura_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text   ${item}
    END

Comprobar el comparador de facturas
    Sleep   5
    Click Element   ${pag_comparador_factura}
    FOR    ${item}    IN    @{val_comparador_factura_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar la p??gina de 13 facturas
    Sleep   5
    FOR    ${item}    IN    @{val_trece_facturas_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text   ${item}
    END

Comprobar la p??gina de Facturas antiguas
    Sleep   5
    FOR    ${item}    IN    @{val_antiguas_facturas_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END
Comprobar la p??gina de Dudas factura
    Sleep   5
    FOR    ${item}    IN    @{val_dudas_facturas_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Factura sin papel
    Sleep   5
    Click Element   ${pag_switch_facturasinpapel}
    Wait Until Page Contains    Hemos recibido tu solicitud, en breve recibir??s un sms de confirmaci??n cuando haya sido procesada.

Comprobar la p??gina de Ajustes de facturas
    Sleep   5
    FOR    ${item}    IN    @{val_ajustes_factura_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Ranking de gastos
    Page Should Contain    Selecciona la factura y el par??metro que desea comparar:
    Wait Until Page Contains    Importe
    Wait Until Page Contains    Enviar
    Wait Until Page Contains    Descargar PDF
    @{lista}=    Get List Items     ${pag_combo_ranking_importe2}
    #Remove values from list    ${lista}    Importe
    FOR    ${item}   IN    @{lista}
        Sleep   2
        Log to Console  *****
        Log to Console      Para validar la prueba busco en el combo: ${item}
        Log to Console  *****
    END
    Click Element   ${pag_combo_ranking_importe2}
    Sleep   2
    Click Element   ${pag_combo_ranking_datos1}
    Sleep   2
    Click Element   ${pag_combo_ranking_datos2}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasmoviles1}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasmoviles2}
    Sleep   2
    Click Element   ${pag_combo_ranking_SMS1}
    Sleep   2
    Page Should Contain    SMS
    Click Element   ${pag_combo_ranking_SMS2}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasinternacionales1}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasinternacionales2}
    Sleep   2
    Click Element  ${pag_combo_ranking_llamadasfijos1}
    Sleep   2
    Click Element  ${pag_combo_ranking_llamadasfijos2}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasespeciales1}
    Sleep   2
    Click Element   ${pag_combo_ranking_llamadasespeciales2}

    
Comprobar la p??gina de Dudas consulta factura
    Sleep   5
    FOR    ${item}    IN    @{val_pagina_Dudas_consulta_factura}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
 
Comprobar la p??gina de Dudas consulta pagos
    Sleep   5
    FOR    ${item}    IN    @{val_pagina_Dudas_consulta_pagos}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar la p??gina de Dudas descuentos y promociones
    Sleep   5
    FOR    ${item}    IN    @{val_pagina_Dudas_descuentos_promociones}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000


Comprobar la p??gina de Contrata
    Sleep     5
    FOR    ${item}    IN    @{val_pagina_contrata_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    500
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Ayuda
    Sleep     5
    FOR    ${item}    IN    @{val_pagina_ayuda_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    575
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Ser de Orange
    Sleep     5
    FOR    ${item}    IN    @{val_pagina_SdO_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    600
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Compromiso de Permanencia
    ${present_permanencia}=    Run Keyword And Return Status    Page Should Contain    Actualmente no tienes permanencia.
    Run Keyword If    ${present_permanencia}    Log to Console     ??????S??, s??, no tienes permanencia; an??mate y renueva tu dispositivo!!!
                    ...  ELSE     Verifico Compromiso de Permanencia

Verifico Compromiso de Permanencia
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_compromiso_${perfil}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END
    
Comprobar la p??gina de Notificaciones
    Sleep   4
    ${present_notificaciones}=    Run Keyword And Return Status    Page Should Contain Text    	Sin nuevos mensajes
    Run Keyword If    ${present_notificaciones}    Log to Console     Parece que no tienes notificaciones todav??a
    Run Keyword If    ${present_notificaciones}    Page Should Contain Text   En estos momentos no tienes ninguna notificaci??n para esta l??nea
                    ...  ELSE     Page Should Contain Text      Nuevos mensajes

Comprobar la p??gina de Ajustes de Notificaciones
    Sleep   4
    FOR    ${item}    IN    @{val_ajustes_notificaciones}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar la p??gina de Mi contrato
    Sleep   4
    FOR    ${item}    IN    @{val_pag_mi_contrato}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Comprobar la p??gina de Mis datos personales
    Sleep   4
    FOR    ${item}    IN    @{val_pag_mis_datos_personales}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END
Comprobar la p??gina de Revisi??n de privacidad
    Sleep   4
    FOR    ${item}    IN    @{val_pag_revision_privacidad}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de Mi documento
    Sleep   4
    FOR    ${item}    IN    @{val_pag_mi_documento}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END


Comprobar la p??gina de Detalle de consumo fijo
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_detalleconsumofijo}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000


Comprobar la p??gina de Detalle de consumo m??vil
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_detalleconsumomovil}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Gasto adicional
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_gastoadicional}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de ayuda Diagn??stico e incidencias
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_diagnosticoeincidencias}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000


Comprobar la p??gina de Seguimiento de casos
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_seguimientodecasos}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Algo no funciona
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_algonofunciona}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Dispositivo estropeado
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_dispositivoestropeado}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Estado de mi pedido
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_estadodemipedido}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Cancelar pedido explicativo
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_cancelarpedidoexplicativo}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Mi linea
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_ayudamilinea}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Servicios a terceros explicativa
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_serviciosatercerosexplicativa}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Factura
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_ayudafactura}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Contacta con Orange
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_ayudacontactaorange}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de ayuda Factura impagada
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_ayudafacturaimpagada}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000
Comprobar la p??gina de ayuda Preguntas frecuentes
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_preguntasfrecuentes}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de de Mi saldo
    Sleep   4
    FOR    ${item}    IN    @{val_pag_prepago_misaldo}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Traspaso de saldo
    Sleep   4
    FOR    ${item}    IN    @{val_pag_prepago_traspaso}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Swipe    900    700    900    650
        Page Should Contain Text    ${item}
    END 
    Swipe    900   400    900    2000

Comprobar la p??gina de Hist??rico de movimientos
    Sleep   4
    FOR    ${item}    IN    @{val_pag_prepago_historicomovimientos}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina de Hist??rico de recargas
    Sleep   4
    FOR    ${item}    IN    @{val_pag_prepago_historicorecargas}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina de Hist??rico de traspasos
    Sleep   4
    FOR    ${item}    IN    @{val_pag_prepago_historicotraspaso}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina de Descubre tu premio
    Sleep   4
    FOR    ${item}    IN    @{val_pag_recarga_descubretupremio}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina de Consulta tus premios
    Sleep   4
    FOR    ${item}    IN   @{val_pag_recarga_consultapremios} 
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina de FAQs de Recarga y Gana
    Sleep   4
    FOR    ${item}    IN    @{val_pag_recarga_faqs}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar el Componente de bloqueo de traspaso
    Sleep   4
    FOR    ${item}    IN    @{val_pag_recarga_bloqueos_traspasaso}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar la p??gina del Buscador
    Sleep   4
    FOR    ${item}    IN    @{val_pagina_buscador_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain Text    ${item}
    END

Probar el Buscador: palabras que S?? deben estar
    Sleep   2
    FOR    ${item}    IN    @{val_buscador_buenas_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Deber??as encontrar: ${item} 
        Log to Console  *****
        Input Text    ${texto_buscador}     ${item}
        Sleep  2
        Click Text  ${item}
        Press Keycode   66
        Wait Until Page Contains     de tu b??squeda
    END

Probar el Buscador: palabras que NO deben estar
    Sleep   2
    FOR    ${item}    IN    @{val_buscador_malas_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      Seguro que no sabes lo que es: ${item}
        Log to Console  *****
        Input Text    ${texto_buscador}     ${item}
        Sleep  2
        Click Text  ${item}
        Press Keycode   66
        Wait Until Page Contains    Te sugerimos:
        Sleep   2
        Page Should Contain Text    Lo sentimos mucho. No encontramos ning??n resultado para el t??rmino
    END

Probar el Buscador: palabras que te sugerimos
    Sleep   2
    FOR    ${item}    IN    @{val_buscador_sugeridas_${perfil}_${entorno}}
        Log to Console  *****
        Log to Console      ??Me sugieres algo para?: ${item}
        Log to Console  *****
        Input Text    ${texto_buscador}     ${item}
        Sleep  2
        Click Text  ${item}
        Press Keycode   66
        Wait Until Page Contains    Te sugerimos:
        Sleep   2
        Page Should Contain Text     Quiz??s quisiste decir...
    END


Probar Djingo

    Wait Until Page Contains     Reiniciar conversaci??n     timeout= 20
    #Page Should Contain Text     Vas a comenzar conversaci??n con Asistente Orange
    Page Should Contain Text     Enviar
    Click Element At Coordinates    169   2087
    Click Text  Enviar
   

Dialogo con Djingo
    Page Should Contain Element    ${frame_Djingo}                    
    Select Frame    ${frame_Djingo}
    Sleep    5
    Log To console      Ahora estoy interactuando con Djingo
    Current Frame Should Contain    Reiniciar conversaci??n
    Click Element   ${reiniciar_conversacion}
    Wait Until Page Contains    ??qu?? puedo hacer por ti?
    Input Text    ${input_Djingo}   RENOVE
    Press Keys    ${input_Djingo}   ENTER
    Sleep   7
    Double Click Element   ${enviar_Djingo}
    Sleep   5
    #Current Frame Should Contain    Por tu seguridad, tienes que usar WhatsApp desde la l??nea de contrato en la que necesitas hacer la gesti??n.
    Current Frame Should Contain    ${CREDENTIALS_${perfil}_${entorno}}[MSISDN]
    #Click Element   ${boton_No}
    #Sleep   5
    #Current Frame Should Contain    Espero haberte ayudado
    Click Element   ${reiniciar_conversacion}
    Sleep   5
    Current Frame Should Contain    ??qu?? puedo hacer por ti?
    Input Text    ${input_Djingo}      De robot a robot: ??HASTA LUEGO COLEGA!
    Press Keys    ${input_Djingo}   ENTER
    Sleep   5
    Click Element   ${enviar_Djingo}

Comprobar Renovaci??n de beneficio de prepago
    Wait Until Page Contains    Renovaci??n beneficio prepago    timeout= 20
    FOR    ${item}    IN    @{val_prepago_beneficio}
        Log to Console  *****
        Log to Console      Para validar la prueba busco el literal: ${item}
        Log to Console  *****
        Page Should Contain    ${item}
    END

Comprobar salto de SSO mejora tu tarifa
    Usuario formateado
    Wait Until Page Contains    ??Qu?? necesitas?    timeout= 20
    Page Should Contain     ${msisdn_formateado}
    Log to Console  Debo de estar logado porque Altamira me ense??a el n??mero de mi l??nea, el ${msisdn_formateado}
    Log to Console  Voy a salir de la parte logada: es la prueba definitiva de que funciona el SSO; ????Gracias Fareed????
    Log to Console  Antes voy a maximizar el tama??o del navegador porque hay veces que no veo el bot??n de Salir
    Maximize Browser Window
    Sleep   3
    Click Element   ${boton_salir_tiendaonline}
    Sleep   3
    Log to Console  Coloco el navegador como lo encontr??
    Coloco la SPA
    Wait Until Page Contains    ??Quieres cerrar sesi??n?   timeout= 20
    Sleep    5
    Click Element   ${boton_cerrarNBA_tiendaonline}


Comprobar salto de SSO Renueva tu m??vil
    Usuario formateado
    Wait Until Page Contains    Filtrar    timeout= 20
    Page Should Contain     ${msisdn_formateado}
    Log to Console  Debo de estar logado porque Altamira me ense??a el n??mero de mi l??nea, el ${msisdn_formateado}
    Log to Console  Voy a salir de la parte logada: es la prueba definitiva de que funciona el SSO; ????Gracias Fareed????
    Log to Console  Antes voy a maximizar el tama??o del navegador porque hay veces que no veo el bot??n de Salir
    Maximize Browser Window
    Sleep   3
    Click Element   ${boton_salir_tiendaonline}
    Sleep   3
    Wait Until Page Contains    ??Quieres cerrar sesi??n?   timeout= 20
    Sleep   5
    #Click Element   ${boton_aceptarNBA_tiendaonline}
    Log to Console  Coloco el navegador como lo encontr??
    Coloco la SPA


Comprobar salto de SSO Quieres mas l??neas
    Usuario formateado
    Cierro NBA de Tiendaonline si existe
    Wait Until Page Contains    ??Qu?? necesitas?    timeout= 20
    Page Should Contain     ${msisdn_formateado}
    Log to Console  Debo de estar logado porque Altamira me ense??a el n??mero de mi l??nea, el ${msisdn_formateado}
    Log to Console  Voy a salir de la parte logada: es la prueba definitiva de que funciona el SSO; ????Gracias Fareed????
    Log to Console  Antes voy a maximizar el tama??o del navegador porque hay veces que no veo el bot??n de Salir
    Maximize Browser Window
    Sleep   3
    Click Element   ${boton_salir_tiendaonline}
    Sleep   3
    Wait Until Page Contains    ??Quieres cerrar sesi??n?   timeout= 20
    Sleep   5
    #Click Element   ${boton_aceptarNBA_tiendaonline}
    Log to Console  Coloco el navegador como lo encontr??
    Coloco la SPA

Comprobar salto de SSO Mejora tu fibra
    Usuario formateado
    Cierro NBA de Tiendaonline si existe
    Wait Until Page Contains    ??Qu?? necesitas?    timeout= 20
    Page Should Contain     ${msisdn_formateado}
    Log to Console  Debo de estar logado porque Altamira me ense??a el n??mero de mi l??nea, el ${msisdn_formateado}
    Log to Console  Voy a salir de la parte logada: es la prueba definitiva de que funciona el SSO; ????Gracias Fareed????
    Log to Console  Antes voy a maximizar el tama??o del navegador porque hay veces que no veo el bot??n de Salir
    Maximize Browser Window
    Sleep   3
    Click Element   ${boton_salir_tiendaonline}
    Sleep   3
    Log to Console  Coloco el navegador como lo encontr??
    Coloco la SPA
    Wait Until Page Contains    ??Quieres cerrar sesi??n?   timeout= 20
    Sleep    5
    Click Element   ${boton_cerrarNBA_tiendaonline}


Vuelve de SSO desde nueva pesta??a
    Sleep   2
    Go Back
    Close Window
    Switch Window	MAIN

Vuelve de SSO embebido
    Sleep   2
    Go Back
