*** Settings ***
#Library    SeleniumLibrary      timeout= 30
Library    ScreenCapLibrary
Library    ..//libraries//travelfree.py
Resource    ..//resources//keywords.robot
Resource    ..//resources//keywords_go.robot
Resource    ..//resources//keywords_valida.robot
Resource    ..//resources//teardown_ARCLMU_3181.robot
#Library           SikuliLibrary

Test Teardown    Teardown ${TEST_NAME}

*** Variables ***
${perfil}        POSTPAGO RESI
${test_plan}    ARCLMU-3181
${comentario}   Test vinculado al Test Plan ${test_plan} y que se ocupa del perfil ${perfil} ejecutado en el entorno ${entorno} sobre un dispositivo real.
${IMAGE_DIR}      .//img

*** Test Cases ***
PRECONDICION
    Fecha y hora de inicio de la Suite
    Preparo fecha y hora de los tests
    Pasa los certificados
    Abro app
    #Logado OK


ARCLMU-9999
    [Tags]    TEST-000-ARCLMU-9999-Prueba de logado
    Fecha y hora del inicio del test
    #Acceder al dashboard principal
    #Deslogarte
    Probar login KO contraseña
    #Probar login KO pasaporte
    Logado OK
    
# ARCLMU-8888
#     [Tags]    TEST-001-ARCLMU-8888-Correcta visualización de dashboard POSTPAGO RESI
#     Fecha y hora del inicio del test
#     #Acceder al dashboard principal
#    #Deslogarte
#     Sleep   2
#     Click Element       ${menu_publico}
#     Sleep   2
#     Page Should Contain Text     Área de clientes
#     #Page Should Contain Text     Resulve todas tus dudas
#     #Page Should Contain Text     Acerca de
#     Click Element At Coordinates    98   1709
#     Wait Until Page Contains    Domicilio social:
#     Page Should Contain Text      Versión: 
#     Page Should Contain Text      7.2.0
#     Page Should Contain Text      LU: 
# #   98   672 ¿Cómo acceder al área privada?
# #   98   836 Diagnóstico móvil y cobertura
# #   98   1007 Descubre qué puedes hacer con tu Livebox
# #   98   1171 Estado de mi pedido
# #   98   1309 Recarga tarjeta
# #   98   1437 Soporte y ayuda
# #   98   1576 En mi tienda
# #   98   1709 Acerca de

# ARCLMU-1411
#     [Tags]    TEST-001-ARCLMU-1411-Correcta visualización de dashboard POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Comprobar la carga del dashboard principal

# ARCLMU-8123
#     [Tags]    TEST-002-ARCLMU-8123-Correcta visualización de los contadores del dashboard POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Comprobar los contadores

# ARCLMU-8124
#     [Tags]    TEST-003-ARCLMU-8124-Correcta visualización del componente días para última factura POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Comprobar componente días última factura

# ARCLMU-8125
#     [Tags]    TEST-004-ARCLMU-8125-Correcta carga del selector de dashboard POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Comprobar la carga del selector de dashboard

# ARCLMU-8126
#     [Tags]    TEST-005-ARCLMU-8126-Comprobación del dashboard de Fijo POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder al dashboard de Fijo
#     Comprobar la carga del dashboard de Fijo

# ARCLMU-8127
#     [Tags]    TEST-006-ARCLMU-8127-Comprobación del dashboard de TV POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder al dashboard de TV
#     Comprobar la carga del dashboard de TV

# ARCLMU-1412
#     [Tags]    TEST-007-ARCLMU-1412-Visualización correcta de la página de Mi línea POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mi línea
#     Comprobar la página de Mi línea

# ARCLMU-1414
#     [Tags]    TEST-008-ARCLMU-1414-Visualización de la página de Facturas POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Facturas
#     Comprobar la página de Facturas

# ARCLMU-1415     
#     [Tags]    TEST-009-ARCLMU-1415-Correcta visualizacion de la página de Contrata POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Contrata
#     Comprobar la página de Contrata

# ARCLMU-1416
#     [Tags]    TEST-010-ARCLMU-1416-Sección Ayuda POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Ayuda
#     Comprobar la página de Ayuda

# ARCLMU-1424
#     [Tags]    TEST-011-ARCLMU-1424-Buscador POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder al Buscador
#     Comprobar la página del Buscador
#     Probar el Buscador: palabras que SÍ deben estar
#     Probar el Buscador: palabras que NO deben estar
#     Probar el Buscador: palabras que te sugerimos

# ARCLMU-1440
#     [Tags]    TEST-012-ARCLMU-1440-Acceso Ser de Orange (SdO) y consulta Ventajas, Hucha, Servicios Extra y Descuentos POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Ser de Orange
#     Comprobar la página de Ser de Orange

# ARCLMU-3555
#     [Tags]    TEST-013-ARCLMU-3555-Consulta de Compromiso Permanencia POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mi línea
#     Acceder a la página de Compromiso de Permanencia
#     Comprobar la página de Compromiso de Permanencia

# ARCLMU-8652
#     [Tags]    TEST-014-ARCLMU-8652-Correcta visualización de dashboard de Mis consumos POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder al dashboard de Mis consumos
#     Comprobar el dashboard de Mis consumos

# ARCLMU-8653
#     [Tags]    TEST-015-ARCLMU-8653-Correcta visualización de las Notificaciones POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a Notificaciones
#     Comprobar la página de Notificaciones

# ARCLMU-8654
#     [Tags]    TEST-016-ARCLMU-8654-Comprobar la página de Ajustes de Notificaciones POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a Ajustes de Notificaciones
#     Comprobar la página de Ajustes de Notificaciones

# ARCLMU-8655
#     [Tags]    TEST-017-ARCLMU-8655-Comprobar página de Mi contrato POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mi contrato
#     Comprobar la página de Mi contrato

# ARCLMU-8656
#     [Tags]    TEST-018-ARCLMU-8656-Comprobar página de Mis datos personales POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mis datos personales
#     Comprobar la página de Mis datos personales

# ARCLMU-8657
#     [Tags]    TEST-019-ARCLMU-8657-Comprobar página de Mi documento POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mi documento
#     Comprobar la página de Mi documento

# ARCLMU-8658
#     [Tags]    TEST-020-ARCLMU-8658-Comprobar página Revisión de privacidad POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Revisión de privacidad
#     Comprobar la página de Revisión de privacidad

# ARCLMU-8659
#     [Tags]    TEST-021-ARCLMU-8659-Componente Mis servicios contratados POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Mi línea
#     Cierro NBA si existe
#     Comprobar componente Mis servicios contratados

# #ARCLMU-8660
# #    [Tags]    TEST-022-ARCLMU-8660-Componente Configuro mi línea POSTPAGO RESI
# #    Fecha y hora del inicio del test
# #    Acceder al dashboard principal
# #    Acceder a la página de Mi línea
# #    Cierro NBA si existe
# #    Comprobar componente Configuro mi línea
# #
# #ARCLMU-8661
# #    [Tags]    TEST-023-ARCLMU-8661-Comprobación de las vistas del detalle de factura POSTPAGO RESI
# #    Fecha y hora del inicio del test
# #    Acceder al dashboard principal
# #    Acceder a la página de Detalle de factura
# #    Comprobar la vista clásica de factura
# #    Comprobar la vista gráfica de factura
# #    Comprobar el comparador de facturas
    
# ARCLMU-8662
#     [Tags]    TEST-024-ARCLMU-8662-Djingo POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a Djingo
#     Probar Djingo

# ARCLMU-8763
#     [Tags]   TEST-025-ARCLMU-8763-Comprobación de la página de 13 facturas POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de 13 facturas
#     Comprobar la página de 13 facturas

# ARCLMU-8764
#     [Tags]    TEST-026-ARCLMU-8764-Comprobación de la página de Facturas antiguas POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Facturas antiguas
#     Comprobar la página de Facturas antiguas
# #############################################NUEVOS TESTS
# ARCLMU-8765
#     [Tags]    TEST-027-ARCLMU-8765-Comprobación de la página Dudas con tu factura POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Dudas factura
#     Comprobar la página de Dudas factura

# #ARCLMU-8766
# #    [Tags]    TEST-028-ARCLMU-8766-Comprobación de Factura sin papel POSTPAGO RESI
# #    Fecha y hora del inicio del test
# #    Acceder al dashboard principal
# #    Acceder a la página de Factura sin papel
# #    Comprobar la página de Factura sin papel
# #
# ARCLMU-8767
#     [Tags]    TEST-029-ARCLMU-8767-Comprobación del dashboard de Ajustes de factura POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Ajustes de facturas
#     Comprobar la página de Ajustes de facturas

# #ARCLMU-8768
# #    [Tags]    TEST-030-ARCLMU-8768-Comprobación del Ranking de gastos POSTPAGO RESI
# #    Fecha y hora del inicio del test
# #    Acceder al dashboard principal
# #    Acceder a la página de Ranking de gastos
# #    Comprobar la página de Ranking de gastos
# #
# ARCLMU-8769
#     [Tags]    TEST-031-ARCLMU-8769-Comprobación de la página Dudas consulta factura POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Dudas consulta factura
#     Comprobar la página de Dudas consulta factura

# ARCLMU-8770
#     [Tags]    TEST-032-ARCLMU-8770-Comprobación de la página Dudas consulta pagos POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Dudas consulta pagos
#     Comprobar la página de Dudas consulta pagos
# ######################################################################################5/12/2021
# ARCLMU-8771
#     [Tags]    TEST-033-ARCLMU-8771-Comprobación de la página Dudas descuentos y promociones POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Dudas descuentos y promociones
#     Comprobar la página de Dudas descuentos y promociones

# ARCLMU-8895
#     [Tags]    TEST-034-ARCLMU-8895-Comprobación de la página de detalle de consumos fijo POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder al dashboard de Fijo
#     Acceder a la página de Detalle de consumo fijo
#     Comprobar la página de Detalle de consumo fijo

# ARCLMU-8896
#     [Tags]    TEST-035-ARCLMU-8896-Comprobación de la página de Detalle de consumos móvil POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Detalle de consumo móvil
#     Comprobar la página de Detalle de consumo móvil

# ARCLMU-8897
#     [Tags]    TEST-036-ARCLMU-8897-Comprobación de la página de Gasto adicional POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Gasto adicional
#     Comprobar la página de Gasto adicional

# ARCLMU-8898
#     [Tags]    TEST-037-ARCLMU-8898-Comprobación de la página de ayuda Diagnostico e incidencias POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Diagnóstico e incidencias
#     Comprobar la página de ayuda Diagnóstico e incidencias

# ARCLMU-8899
#     [Tags]    TEST-038-ARCLMU-8899-Comprobación de la página de ayuda Seguimiento de casos POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de Seguimiento de casos
#     Comprobar la página de Seguimiento de casos

# ARCLMU-8900
#     [Tags]    TEST-039-ARCLMU-8900-Comprobación de la página de ayuda Algo no funciona POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Algo no funciona
#     Comprobar la página de ayuda Algo no funciona

# ARCLMU-8901
#     [Tags]    TEST-040-ARCLMU-8901-Comprobación de la página de ayuda Dispositivo estropeado POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Dispositivo estropeado
#     Comprobar la página de ayuda Dispositivo estropeado

# ARCLMU-8902
#     [Tags]    TEST-041-ARCLMU-8902-Comprobación de la página de ayuda Estado de mi pedido POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Estado de mi pedido
#     Comprobar la página de ayuda Estado de mi pedido

# ARCLMU-8903
#     [Tags]    TEST-042-ARCLMU-8903-Comprobación de la página de ayuda Cancelar pedido explicativo POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Cancelar pedido explicativo
#     Comprobar la página de ayuda Cancelar pedido explicativo

# ARCLMU-8904
#     [Tags]    TEST-043-ARCLMU-8904-Comprobación de la página de ayuda Mi linea POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Mi linea 
#     Comprobar la página de ayuda Mi linea 

# ARCLMU-8905
#     [Tags]    TEST-044-ARCLMU-8905-Comprobación de la página de ayuda Servicios a terceros explicativa POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Servicios a terceros explicativa
#     Comprobar la página de ayuda Servicios a terceros explicativa

# ARCLMU-8906
#     [Tags]    TEST-045-ARCLMU-8906-Comprobación de la página de ayuda Factura POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Factura 
#     Comprobar la página de ayuda Factura 

# ARCLMU-8907
#     [Tags]    TEST-046-ARCLMU-8907-Comprobación de la página de ayuda Contacta con Orange POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Contacta con Orange 
#     Comprobar la página de ayuda Contacta con Orange 

# ARCLMU-8908
#     [Tags]    TEST-047-ARCLMU-8908-Comprobación de la página de ayuda Factura impagada POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Factura impagada
#     Comprobar la página de ayuda Factura impagada

# ARCLMU-8909
#     [Tags]    TEST-048-ARCLMU-8909-Comprobación de la página de ayuda Preguntas frecuentes POSTPAGO RESI
#     Fecha y hora del inicio del test
#     Acceder al dashboard principal
#     Acceder a la página de ayuda Preguntas frecuentes
#     Comprobar la página de ayuda Preguntas frecuentes
#ARCLMU-8910
#    [Tags]    TEST-049-ARCLMU-8910-Comprobación SSO Mejora tu tarifa desde Contrata POSTPAGO RESI
#    Fecha y hora del inicio del test
#    Acceder al dashboard principal
#    Acceder a la página de Contrata
#    SSO Mejora tu tarifa desde Contrata
#    Comprobar salto de SSO Mejora tu tarifa
#    Vuelve de SSO desde nueva pestaña
#
#ARCLMU-8911
#    [Tags]    TEST-050-ARCLMU-8911-Comprobación SSO Mejora tu tarifa desde Mi linea POSTPAGO RESI
#    Fecha y hora del inicio del test
#    Acceder al dashboard principal
#    Acceder a la página de Mi línea
#    SSO Mejora tu tarifa desde Mi linea
#    Comprobar salto de SSO Mejora tu tarifa
#    Vuelve de SSO embebido
#
#ARCLMU-8912
#    [Tags]    TEST-051-ARCLMU-8912-Comprobación SSO Renueva tu móvil desde Contrata POSTPAGO RESI
#    Fecha y hora del inicio del test
#    Acceder al dashboard principal
#    Acceder a la página de Contrata
#    SSO Renueva tu móvil desde Contrata
#    Comprobar salto de SSO Renueva tu móvil
#    Vuelve de SSO desde nueva pestaña
#
#ARCLMU-8913
#    [Tags]    TEST-052-ARCLMU-8913-Comprobación SSO Quieres más líneas desde Contrata POSTPAGO RESI
#    Fecha y hora del inicio del test
#    Acceder al dashboard principal
#    Acceder a la página de Contrata
#    SSO Quieres mas lineas
#    Comprobar salto de SSO Quieres mas líneas
#    Vuelve de SSO desde nueva pestaña
#
#ARCLMU-8914
#    [Tags]    TEST-053-ARCLMU-8914-Comprobación SSO Mejora tu fibra Contrata POSTPAGO RESI
#    Fecha y hora del inicio del test
#    Acceder al dashboard principal
#    Acceder a la página de Contrata
#    SSO Mejora tu fibra
#    Comprobar salto de SSO Mejora tu fibra
#    Vuelve de SSO desde nueva pestaña
POSTCONDICION
    Fecha y hora del inicio del test
    #Acceder al dashboard principal postcondicion
    #Deslogarte
    #Cierro la aplicación