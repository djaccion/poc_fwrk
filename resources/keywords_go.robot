*** Settings ***
Library    json
Library    Collections
Library    String
Library    AppiumLibrary
Library    OperatingSystem
Library    RequestsLibrary
Library    DateTime
Library    ..//libraries//travelfree.py
Resource    ..//resources//keywords.robot
Resource    ..//resources//recursos.robot
Resource    ..//resources//config.robot
Resource    ..//resources//inventario_elementos.robot
Resource    ..//resources//inventario_urls.robot
Resource    ..//resources//inventario_valida.robot


*** Keywords ****


Acceder al dashboard de Fijo
    Sleep   4
    Cierro tutorial
    Sleep   1
    Go To Url   url=${env}${pag_dashboard}
    Sleep   1
    Click Element    ${fijo}
    Sleep   2
    Cierro tutorial
    Sleep   1
    Go To Url   url=${env}${pag_dashboard}
    Cierro NBA si existe

Acceder al dashboard de TV
    Sleep   4
    Click Element    ${TV}
    #Wait Until Page Contains    TV

Acceder al dashboard de recarga y gana
    Sleep   5
    Click Element    ${selector_recargaygana} 

Acceder al dashboard de Mis consumos
    Sleep   5
    Click Element    ${selector_consumos}

Acceder a Notificaciones
    Sleep    5
    Go To Url   url=${env}${pag_notificaciones}
    Sleep    5
    Wait Until Page Contains    Inicio

Acceder a Ajustes de Notificaciones
    Sleep    5
    Go To Url   url=${env}${pag_ajustes_notificaciones}
    Wait Until Page Contains    Ajustes de notificaciones

######## MENUS
Accedo al menu privado
    Sleep    2
    Click Element      ${menu_private}

######## PAGINA MI LINEA
Acceder a la página de Mi línea
    Sleep    5
    Click Element    ${mi_linea}
    #Sleep    5
    #Go To   5l=${env}${pag_mi_linea}
    Wait Until Page Contains    Compromiso de permanencia
    Sleep    5

SSO Mejora tu tarifa desde Mi linea
    Sleep    2
    Click Element       ${boton_milinea_SSO_mejoratutarifa} 
    Sleep    2
SSO Mejora tu tarifa desde Contrata
    Sleep    2
    Click Element       ${boton_contrata_SSO_mejoratutarifa}
    Sleep   10
    ${tab1}=       Switch Window	    NEW

SSO Renueva tu móvil desde Contrata
    Sleep    2
    Click Element       ${boton_contrata_SSO_renuevatumovil}
    Sleep   10
    ${tab1}=       Switch Window	    NEW

SSO Quieres mas lineas
    Click Element       ${boton_contrata_SSO_maslineas}
    Sleep   10
    ${tab1}=       Switch Window	    NEW

SSO Mejora tu fibra
    Click Element       ${boton_contrata_SSO_maslineas}
    Sleep   10
    ${tab1}=       Switch Window	    NEW

######## PAGINA FACTURAS
Acceder a la página de Facturas
    Sleep    5
    Click Element    ${facturas}
    Sleep    5
    Go To Url   url=${env}${pag_facturas}
    Sleep    5

Acceder a la página de Detalle de factura
    Sleep    5
    Go To Url   url=${env}${pag_detalle_facturas}
    Wait Until Page Contains    IVA (21%)
    Sleep    2

Acceder a la página de 13 facturas
    Sleep    5
    Go To Url   url=${env}${pag_trece_facturas}
    Wait Until Page Contains    Mis facturas
    Sleep    2

Acceder a la página de Facturas antiguas
    Sleep    5
    Go To Url   url=${env}${pag_antiguas_facturas}
    Wait Until Page Contains    Facturas antiguas
    Sleep    2

Acceder a la página de Dudas factura
    Sleep    5
    Go To Url   url=${env}${pag_dudas_facturas} 
    Wait Until Page Contains    ¿Dudas con tu factura?
    Sleep    2

Acceder a la página de Factura sin papel
    Sleep    5
    Go To Url   url=${env}${pag_factura_sin_papel}
    Wait Until Page Contains    Facturas sin papel
    Sleep    2

Acceder a la página de Ajustes de facturas
    Sleep    5
    Go To Url   url=${env}${pag_facturas}
    Sleep    3
    Click Text    Ajustes
    Wait Until Page Contains    Factura sin papel
    Sleep    2

Acceder a la página de Ranking de gastos
    Sleep    5
    Go To Url   url=${env}${pag_ranking_gasto}
    Wait Until Page Contains    Ranking de gastos
    Sleep    2

Acceder a la página de Dudas consulta factura
    Sleep    5
    Go To Url   url=${env}${pag_dudasfactura_factura}
    Wait Until Page Contains    Factura
    Sleep    2

Acceder a la página de Dudas consulta pagos
    Sleep    5
    Go To Url   url=${env}${pag_dudasfactura_pagos}
    Wait Until Page Contains    Pago
    Sleep    2

Acceder a la página de Dudas descuentos y promociones
    Sleep    5
    Go To Url   url=${env}${pag_dudasfactura_promociones}
    Wait Until Page Contains    Descuentos y promociones
    Sleep    2
Acceder a la página de Detalle de consumo fijo
    Sleep    5
    Go To Url   url=${env}${pag_detalle_misconsumosfijo}
    Wait Until Page Contains    Detalle del consumo
    Sleep    2

Acceder a la página de Detalle de consumo móvil
    Sleep    5
    Go To Url  url=${env}${pag_detalle_misconsumosmovil}
    Wait Until Page Contains    Detalle de consumo
    Sleep    2

Acceder a la página de Gasto adicional
    Sleep    5
    Go To Url  url=${env}${pag_gasto_adicional}
    Wait Until Page Contains    Gasto adicional
    Sleep    2

Acceder a la página de ayuda Diagnóstico e incidencias
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_diagnostico}
    Wait Until Page Contains    Diagnóstico e incidencias
    Sleep    2

Acceder a la página de Seguimiento de casos
    Sleep    5
    Go To Url  url=${env}${pag_ayuda_seguimientocasos}
    Wait Until Page Contains    Histórico de casos
    Sleep    2

Acceder a la página de ayuda Algo no funciona
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_algonofunciona}
    Wait Until Page Contains  ¿Algo no funciona?
    Sleep    2

Acceder a la página de ayuda Dispositivo estropeado
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_dispositivoestropeado}
    Wait Until Page Contains  Orden de reparación
    Sleep    2

Acceder a la página de ayuda Estado de mi pedido
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_mipedido}
    Wait Until Page Contains  Estado de mi pedido
    Sleep    2

Acceder a la página de ayuda Cancelar pedido explicativo
    Sleep    5
    Go To Url  url=${env}${pag_ayuda_cancelarpedido}
    Wait Until Page Contains  Quiero cancelar un pedido
    Sleep    2

Acceder a la página de ayuda Mi linea
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_milinea}
    Wait Until Page Contains  Mi línea
    Sleep    2

Acceder a la página de ayuda Servicios a terceros explicativa
    Sleep    5
    Go To Url  url=${env}${pag_ayuda_gestionarserviciosterceros}
    Wait Until Page Contains  ¿Qué es Orange Pay?
    Sleep    2

Acceder a la página de ayuda Factura
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_factura}
    Wait Until Page Contains  Facturas
    Sleep    2

Acceder a la página de ayuda Factura impagada
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_factura_impagada}
    Wait Until Page Contains  ¿Cómo abonar una factura impagada?
    Sleep    2

Acceder a la página de ayuda Contacta con Orange
    Sleep    5
    Go To Url   url=${env}${pag_ayuda_contacta} 
    Wait Until Page Contains  Contacta con Orange
    Sleep    2

Acceder a la página de ayuda Preguntas frecuentes
    Sleep    5
    Go To Url  url=${env}${pag_ayuda_preguntas_frecuentes}
    Wait Until Page Contains  Preguntas frecuentes
    Sleep    2

Acceder a la página de Mi saldo
    Sleep    5
    Go To Url   url=${env}${pag_prepago_misaldo}
    Wait Until Page Contains  Mi saldo
    Sleep    2

Acceder a la página de Traspaso de saldo
    Sleep    5
    Go To Url   url=${env}${pag_prepago_traspaso}
    Wait Until Page Contains  Traspaso de saldo
    Sleep    2

Acceder a la página de Histórico de movimientos
    Sleep    5
    Go To Url   url=${env}${pag_prepago_historicomovimientos} 
    Wait Until Page Contains  Histórico de movimientos
    Sleep    2

Acceder a la página de Histórico de recargas
    Sleep    5
    Go To Url   url=${env}${pag_prepago_historicorecargas}
    Wait Until Page Contains  Histórico de recargas
    Sleep    2

Acceder a la página de Histórico de traspasos
    Sleep    5
    Go To Url   url=${env}${pag_prepago_historicotraspaso}
    Wait Until Page Contains  Histórico de traspaso
    Sleep    2

Acceder a la página de Descubre tu premio
    Sleep    5
    Go To Url   url=${env}${pag_recarga_descubretupremio}
    Wait Until Page Contains  Descubre tu premio
    Sleep    2

Acceder a la página de Consulta tus premios
    Sleep    5
    Go To Url   url=${env}${pag_recarga_consultapremios}
    Wait Until Page Contains  Disfruta de tus premios
    Sleep    2

Acceder a la página de FAQs de Recarga y Gana
    Sleep    5
    Go To Url   url=${env}${pag_recarga_faqs} 
    Wait Until Page Contains  Preguntas frecuentes Recarga y Gana
    Sleep    2
    
A por el histograma
    Sleep    5
    Go To Url   url=${env}${pag_facturas}

A por Datos Personales
    Sleep    5
    Go To Url   url=${env}${pag_datos_personales}

A por servicios contratados
    Sleep    5
    Go To Url   url=${env}${pag_mi_linea}

######## PAGINA DE CONTRATA
Acceder a la página de Contrata
    Sleep    5
    Click Element    ${contrata}
    Sleep    5
    Go To Url   url=${env}${pag_contrata}
    Sleep    5

######## PAGINA DE AYUDA
Acceder a la página de Ayuda
    Sleep    5
    Click Element    ${ayuda}
    Sleep    5
    Go To Url   url=${env}${pag_ayuda}
    Wait Until Page Contains    Ayuda   timeout=20

######## PAGINA DEL BUSCADOR
Acceder al Buscador
    #Sleep    5
    #Tap   ${buscar}
    Sleep    5
    Go To Url   url=${env}${pag_buscador}
    Sleep    5

######## PAGINA SER DE ORANGE
Acceder a la página de Ser de Orange
    Sleep    5
    #Click Element    ${menu_mas}
    #Sleep    2
    #Click Text   Ser
    #Sleep    2
    Go To Url   url=${env}${pag_SdO}
    Sleep    5
    Wait Until Page Contains    Ser de Orange   timeout=20
######## PAGINA COMPROMISO DE PERMANENCIA
Acceder a la página de Compromiso de Permanencia
    Sleep   4
    ${present_permanencia}=    Run Keyword And Return Status    Page Should Contain    Actualmente no tienes permanencia.
    Run Keyword If    ${present_permanencia}    Log to Console     ¡¡¡Actualmente no tienes permanencia!!!
                    ...  ELSE     Click Text    Compromiso de permanencia


######### PAGINA DE RECARGA
Acceder a la página de recarga tarjeta
    Sleep    2
    Go To Url   url=${env}${pag_recarga_tarjeta}
    Sleep    5

Click cards página de recarga
    Sleep    5
    Click Element    ${historico_de_recargas}
    Sleep    5

######## PAGINA DE MI CONTRATO
Acceder a la página de Mi contrato
    Sleep    2
    Go To Url   url=${env}${pag_mi_contrato} 
    Sleep    5

Acceder a la página de Mis datos personales
    Sleep    2
    Go To Url   url=${env}${pag_datos_personales} 
    Sleep    5

Acceder a la página de Revisión de privacidad
    Sleep    2
    Go To Url   url=${env}${pag_revision_privacidad}
    Wait Until Page Contains    Tu política de privacidad   timeout=20

Acceder a la página de Mi documento
    Sleep    2
    Go To Url   url=${env}${pag_mi_documento}
    Sleep    5

Accedo a Mi contrato
    Sleep    3
    Click Element    ${click_contrato}
    Sleep    3

Despliego contratos
    Click Element    ${click_acordeon1}
    Click Element    ${click_acordeon2}
    Sleep    2

Acceder a Djingo
    Sleep    2
    Go To Url   url=${env}${pag_ayuda} 
    Sleep    3
    Cierro NBA si existe
    Click Text    Asistente Orange
    Wait Until Page Contains    Ayuda      timeout= 50

######## CLICK EN ELEMENTOS

Click inicio
    Sleep    2
    Wait Until Element Is Visible    ${inicio}
    Click Element    ${inicio}

Click notificaciones
    Sleep    5
    Click Element    ${inicio}
    Click Element    ${notificaciones}

Click cerrar sesion
    Sleep    5
    Click Element    ${inicio}
    Click Element    ${cerrar_sesion} 

Click formularios
    Sleep    2
    Click Element    ${click_formularios}
    Sleep    2

######## MUCHO MAS

Click menú más
    Sleep    5
    Click Element    ${menu_mas}

Acceso a Mucho Mas
    Click Element    ${Menu_Mas}
    Sleep   3
    Click Element    ${Menu_Mas}

Cierro Mucho Mas
    Wait Until Element Is Enabled    ${Close_Pag_Mas}
    Wait Until Element Is Visible    ${Close_Pag_Mas_icon}
    #Capture Element Screenshot    ${Close_Tab_Bar_Mas}
    Click Image   ${Close_Pag_Mas_icon}
