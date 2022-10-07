*** Settings *** 
Library    AppiumLibrary
*** Variables *****

###### DASHBOARD

@{val_dashboard_principal_POSTPAGO RESI_PROD}
    ...    Mis dispositivos
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos

@{val_dashboard_principal_POSTPAGO RESI_ENT2}
    ...    Mis dispositivos
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos

@{val_dashboard_principal_POSTPAGO RESI_ENT1}
    ...    Mis dispositivos
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos

@{val_dashboard_principal_PREPAGO_PROD}
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos

@{val_dashboard_principal_PREPAGO_ENT2}
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos

@{val_dashboard_principal_PREPAGO_ENT1}
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?
    ...    Renueva tus dispositivos


@{val_dashboard_FIJO__POSTPAGO RESI_PROD}
    ...    Configura tu línea
    ...    Mis dispositivos
    ...    Listado de llamadas
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?

@{val_dashboard_FIJO_POSTPAGO RESI_ENT2}
    ...    Configura tu línea
    ...    Mis dispositivos
    ...    Listado de llamadas
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?

@{val_dashboard_FIJO_POSTPAGO RESI_ENT1}
    ...    Configura tu línea
    ...    Mis dispositivos
    ...    Listado de llamadas
    ...    Te ayudamos
    ...    ¿Necesitas ayuda?

@{val_dashboard_TV_POSTPAGO RESI_PROD}
    ...    Contraseña
    ...    Gestiona tus dispositivos
    #...    Dispositivos asociados
    ...    Te puede interesar
    ...    Te ayudamos

@{val_dashboard_TV_POSTPAGO RESI_ENT1}
    ...    Contraseña
    #...    Gestiona tus dispositivos
    ...    Dispositivos asociados
    ...    Te puede interesar
    ...    Te ayudamos

@{val_dashboard_TV_POSTPAGO RESI_ENT2}
    ...    Contraseña
    ...    Gestiona tus dispositivos
    ...    Dispositivos asociados
    ...    Te puede interesar
    ...    Te ayudamos

@{val_dashboard_recargaygana}
    ...   Recarga tu tarjeta
    ...   Descubre tu premio
    ...   Consulta tus premios
    ...   Bases del sorteo y Condiciones legales
    ...   Preguntas frecuentes

@{val_dashboard_mis_consumos_POSTPAGO RESI_ENT2}
    ...   Aquí se muestra el consumo acumulado de datos
    ...   tu grupo
    ...   tu consumo
    #...   minutos
    #...   Edita tus límites
@{val_dashboard_mis_consumos_POSTPAGO RESI_ENT1}
    ...   Aquí se muestra el consumo acumulado de datos
    ...   tu grupo
    ...   tu consumo
    ...   minutos
    ...   Edita tus límites
@{val_dashboard_mis_consumos_POSTPAGO RESI_PROD}
    ...   Aquí se muestra el consumo acumulado de datos
    ...   Consumidos hasta hoy
    ...   Contratar bonos extra
    #...   minutos
    #...   Edita tus límites

@{val_pagina_detalleconsumofijo}
    ...   Consumo
    ...   Llamadas
    #...   En esta página puedes ver
    #...   Lo sentimos

@{val_pagina_detalleconsumomovil}
    ...   Consumo del
    ...   Llamadas
    ...   Datos
    ...   SMS

###### SELECTORES
@{val_selector_POSTPAGO RESI}
    ...    Mis productos
    ...    Mis consumos

@{val_selector_PREPAGO}
    ...    Recarga y Gana
    ...    Mis productos
    ...    Mis consumos

@{val_dias_ultima}
    #...    para la próxima factura

###### CONTADORES
@{val_contadores_POSTPAGO RESI}
    ...    Gasto extra
    #...    Consumidos
    ...    Última factura

@{val_contadores_PREPAGO}
    ...    Mi saldo

###### PAGINAS
@{val_pagina_recarga_tarjeta}
    ...   Recargas
    ...   Recarga con una tarjeta de crédito extranjera
    ...   Histórico de recarga

@{val_pagina_milinea_POSTPAGO RESI}
    ...   Mi línea
   #...   Mis servicios contratados
    ...   Ver detalles
    ...   Mejora tu tarifa
    #...   Configuro mi línea
    ...   Servicios a la carta
    ...   Compromiso de permanencia
    ...   Orange Pay y Suscripciones web
    ...   Gestiona tu SIM
    ...   Resuelve tus dudas
    ...   Preguntas frecuentes
##################################AFACTURAS
@{val_pagina_facturas_POSTPAGO RESI}
    ...   Mis facturas
    ...   Ajustes
    #...   para la próxima factura
    #...   Más información
    ...   Última factura
    ...   Ver factura
    ...   Descargar factura
    ...   Enviar mail
    ...   Todas mis facturas
    ...   ¿Dudas con tu factura?


@{val_vistaclasica_factura_POSTPAGO RESI}
    ...   Última factura
    ...   IVA (21%)
    ...   Enviar
    ...   Total factura
    ...   Descargar PDF
    ...   Detalles de llamadas, MB, SMS
    ...   Ranking de consumo
    ...   Atención por WhatsApp

@{val_vistagrafica_factura_POSTPAGO RESI}
    ...   Última factura
    ...   Cuota
    ...   IVA (21%)
    ...   Gasto adicional
    ...   Total factura
    ...   Enviar
    ...   Descargar PDF
    ...   Detalles de llamadas, MB, SMS
    ...   Ranking de consumo
    ...   Atención por WhatsApp

@{val_comparador_factura_POSTPAGO RESI}
    ...   Cuota
    ...   Gasto adicional
    ...   Otros
    ...   Descuentos
    ...   IVA (21%)
    ...   Total factura
    ...   Ver factura
    ...   Enviar
    ...   Descargar PDF
    ...   Más información sobre tu vista gráfica
    ...   Atención por WhatsApp
    
@{val_trece_facturas_POSTPAGO RESI}
    ...   Recuerda que pasarán entre
    ...   desde tu fecha fin de ciclo hasta que puedas consultar tu factura digital
    ...   Facturas antiguas
 

@{val_antiguas_facturas_POSTPAGO RESI}
    #...   Tipo
    #...   Mes
    #...   Importe factura
    #...   Acciones
    ...   Consulta en esta sección tus facturas más antiguas, podrás acceder a las facturas de más de 1 año de antigüedad.

@{val_dudas_facturas_POSTPAGO RESI}
    ...   Para que podamos ayudarte,
    ...   Factura
    ...   Pagos
    ...   Descuentos y promociones
    ...   ¿Tienes dudas con la factura?

@{val_pagina_Dudas_consulta_factura}
    ...   Detalle de mi factura
    ...   Gastos adicionales
    ...   Devoluciones y ajustes
    ...   Datos de mi contrato
    ...   ¿Tienes dudas con la factura?

@{val_pagina_Dudas_consulta_pagos}
    ...   Consulta de impago
    ...   Pago de facturas
    ...   Fecha de pago de tu factura
    ...   ¿Tienes dudas con la factura?

@{val_pagina_Dudas_descuentos_promociones}
    ...   Servicios contratados
    ...   Mis descuentos aplicados en factura
    ...   Consulta tu Documentación
    #...   ¿Tienes dudas con la factura?

@{val_ajustes_factura_POSTPAGO RESI}
    ...   Factura sin papel
    ...   Cambio de cuenta corriente
    #...   Cambios en el ciclo de facturación
    ...   Datos de mi contrato
    #...   ¿Dudas con tu factura?

@{val_pagina_gastoadicional}
    ...   Es el consumo fuera de las características de tu tarifa, realizado durante el mes en curso, y verás reflejado en tu próxima factura.
    ...   El importe aquí reflejado no incluye el IVA.
    ...   Consumos más comunes que ocasionan gasto adicional

@{val_pagina_diagnosticoeincidencias}
    ...   Estado de mi reparación
    ...   Estado de mi incidencia
    ...   ¿Algo no funciona?

@{val_pagina_seguimientodecasos}
    ...   Aquí podrás ver los casos asignados a tus líneas en los últimos seis meses.
    #...   Fecha
    #...   ID Caso
    #...   Estado
    #...   Tipo
    #...   Subtipo
    #...   Línea

@{val_pagina_algonofunciona}
    ...   Dispositivo estropeado

@{val_pagina_dispositivoestropeado}
    ...   404 - Página no encontrada


@{val_pagina_estadodemipedido}
    ...   Seguimiento de mi pedido
    ...   Cancelar mi pedido
    ...   Estado de mi reparación
    
@{val_pagina_cancelarpedidoexplicativo}
    ...   ¿Y si quiero volver a hacer un nuevo pedido?
    ...   3 días hábiles
    ...   7 días naturales

@{val_pagina_ayudamilinea}
    #...   Contraseña Orange TV
    ...   Mejorar mi contrato
    ...   Gestionar mis servicios
    ...   Gestionar servicios de terceros
    ...   Consumo actual
    ...   Repartir mis datos
    #...   Más megas o minutos

@{val_pagina_serviciosatercerosexplicativa}
    ...   ¿Qué es Orange Pay?
    ...   Orange Pay es un servicio gratuito que te permite pagar contenidos

@{val_pagina_ayudafactura}
    ...   Fecha e importe de mi última factura
    ...   Ver o descargar mis facturas
    ...   Recuperar facturas antiguas
    ...   Gestionar pagos a terceros
    ...   Pagar una factura pendiente

@{val_pagina_ayudacontactaorange}
    ...   Comunidad Orange
    ...   Tiendas Orange
    ...   Blog de Orange y redes sociales
    ...   Atención por WhatsApp
    ...   Asistente Orange

@{val_pagina_ayudafacturaimpagada}
    ...   Abona tus facturas impagadas desde tu móvil siguiendo estos pasos:
    ...   Al acceder al área de clientes de Orange
    ...   Al hacer click en alguno de los avisos aterrizarás en el listado

@{val_pagina_preguntasfrecuentes}
    ...   Top preguntas
    ...   Categorías de ayuda
    ...   Mi tarifa y consumo
    ...   Productos y servicios
    ...   Configuración y datos personales
    ...   Facturas
    ...   Incidencias y diagnóstico
    ...   Mi Livebox

@{val_pagina_contrata_POSTPAGO RESI}
    ...   Para tu línea
    ...   Mejora tu tarifa
    ...   Renueva tu móvil
    ...   Mis promociones
    ...   ¿Quieres más líneas?
    #...   ¿Necesitas más megas?
    #...   Contratar más servicios
    #...   Te puede interesar
    #...   Internet segunda vivienda
    #...   Protege tu móvil con Seguro Móvil
    #...   Mejora tu fibra
    #...   Servicio Kids Ready
    #...   Orange TV
    #...   Te ayudamos

@{val_pagina_ayuda_POSTPAGO RESI}
    ...   Ayuda
    ...   Asistente Orange
    ...   Lo más consultado
    ...   Diagnóstico e incidencias
    ...   Estado de mi pedido
    ...   Mi línea
    ...   Factura
    ...   Contacta con Orange
    ...   Preguntas frecuentes
    ...   Te puede interesar

@{val_pagina_SdO_POSTPAGO RESI}
    ...   Ser de Orange
    #...   Disfruta de ventajas y descuentos exclusivos solo por Ser de Orange
    ...   Descuentos para tu día a día
    ...   Ayuda
    ...   Acumula en tu hucha
    ...   Servicios Extra
    ...   Cepsa
    ...   Descuentos cerca de ti
    ...   Calcula tu ahorro
    ...   Contacta
    ...   Mis compras
    ...   Preguntas frecuentes

@{val_pagina_compromiso_POSTPAGO RESI}
    ...   Compromiso de permanencia
    ...   Para tu línea
    ...   Fecha de inicio
    ...   Fecha de fin
    ...   Importe de penalización
    ...   Motivo

@{val_pagina_buscador_POSTPAGO RESI_PROD}
    ...   Top búsquedas
    ...   Facturas
    ...   Amazon Prime?
    ...   Netflix?
    #...   TV Play?
    #...   Mi Livebox?

@{val_pagina_buscador_POSTPAGO RESI_ENT1}
    ...   Top búsquedas
    ...   Facturas
    #...   Amazon Prime?
    #...   Netflix?
    #...   TV Play?
    #...   Mi Livebox?

@{val_pagina_buscador_POSTPAGO RESI_ENT2}
    ...   Top búsquedas
    ...   Facturas
    #...   Amazon Prime?
    #...   Netflix?
    #...   TV Play?
    #...   Mi Livebox?

@{val_buscador_buenas_POSTPAGO RESI_ENT1}
    ...   factura
    ...   Facturas
    ...   fact
    ...   ciclo de facturación
    ...   Tarifa
    #...   ayuda
    #...   Love
    #...   amazón
    #...   livebox

@{val_buscador_buenas_POSTPAGO RESI_ENT2}
    ...   factura
    ...   Facturas
    ...   fact
    ...   ciclo de facturación
    ...   Tarifa
    ...   ayuda
    #...   Love
    #...   amazón
    #...   livebox

@{val_buscador_buenas_POSTPAGO RESI_PROD}
    ...   factura
    ...   Facturas
    ...   fact
    ...   ciclo de facturación
    ...   Tarifa
    ...   ayuda
    ...   Love
    ...   amazón
    ...   livebox
    
@{val_buscador_malas_POSTPAGO RESI_ENT1}
    ...   penélope
    ...   parterre
    ...   paradigmático
    ...   revelador
    ...   Tránsito
    ...   misántropa

@{val_buscador_malas_POSTPAGO RESI_ENT2}
    ...   penélope
    ...   parterre
    ...   paradigmático
    ...   revelador
    ...   Tránsito
    ...   misántropa

@{val_buscador_malas_POSTPAGO RESI_PROD}
    ...   penélope
    ...   parterre
    ...   paradigmático
    ...   revelador
    ...   Tránsito
    ...   misántropa

@{val_buscador_sugeridas_POSTPAGO RESI_ENT1}
    ...   nesflix
    ...   netflis
    ...   libebox
    ...   libevox

@{val_buscador_sugeridas_POSTPAGO RESI_ENT2}
    ...   nesflix
    ...   netflis
    ...   libebox
    ...   libevox

@{val_buscador_sugeridas_POSTPAGO RESI_PROD}
    ...   nesflix
    ...   netflis
    ...   libebox
    ...   libevox

@{val_ajustes_notificaciones}
    ...   Control de consumo
    ...   Avisos y alertas
    ...   Solo para ti
    ...   Estrena móvil
    ...   Trucos y consejos

@{val_pag_mi_contrato}
    ...   Mi contrato
    ...   Documento de identidad
    ...   Consulta los datos de tu contrato
    ...   Consulta tu documentación
    ...   Revisión de privacidad

@{val_pag_mis_datos_personales}
    ...   Datos de mi contrato
    ...   Nombre y Apellidos
    ...   Datos de Contacto
    ...   Teléfonos de contacto
    ...   Dirección
    ...   Email
    #...   Datos de pago
    #...   Cuenta bancaria (sin código IBAN)
    #...   Si realizas un cambio después de 10 días de haber empezado tu ciclo de facturación es posible que el cargo en el banco aún llegue a tu antigua cuenta bancaria.

@{val_pag_revision_privacidad}
    ...   Tu política de privacidad
    ...   Cesión De Datos Empresas Orange
    ...   Incluir en Guías
    ...   Comunicaciones comerciales
    ...   Cesión de datos a empresas participadas y grupo Orange
    ...   Comunicaciones comerciales de terceros
    ...   Cesión de datos a terceros

@{val_pag_mi_documento}
    ...   Documento de identidad
    ...   Tipo de documento
    ...   DNI/NIF

@{val_componente_configuro_milinea}
    ...   Llamadas internacionales
    ...   Roaming
    ...   Control de consumo de datos desde el extranjero
    ...   SMS Premium
    ...   Permitir llamadas a números especiales (80X)
    ...   Permitir llamadas a números especiales (90X)
    ...   Buzón de voz/Desvío de llamadas
    ...   MMS
    ...   Aviso de llamadas
    ...   Envío SMS
    ...   Recepción SMS
    ...   Llamada en espera
    ...   Multiconferencia
    ...   Ocultación de número
    ...   Aviso de disponibilidad

######################## PREPAGO ESPECÍFICOS
@{val_prepago_beneficio}
    ...   Renovación beneficio prepago
    #...   Beneficio Inactivo

@{val_pag_prepago_misaldo}
    ...   Mi saldo
    ...   Saldo de recarga
    ...   Gestión de saldo
    ...   Recarga de saldo
    ...   Traspaso de saldo
    ...   Histórico de movimientos

@{val_pag_prepago_traspaso}
    ...   Traspaso de saldo
    ...   Realizar
    ...   Solicitar
    ...   Quiero traspasarle saldo a este número

@{val_pag_prepago_historicomovimientos}
    ...   Histórico de movimientos
    ...   Histórico de recarga
    ...   Histórico de traspaso

@{val_pag_prepago_historicorecargas}
    ...   Histórico de recargas
    ...   Se muestran datos de los últimos 90 días

@{val_pag_prepago_historicotraspaso}
    ...   Histórico de traspaso
    ...   Se muestran datos de los últimos 90 días

@{val_pag_recarga_descubretupremio}
    ...   Descubre tu premio

@{val_pag_recarga_consultapremios}
    ...   Disfruta de tus premios
    ...   Histórico de premios
    ...   Filtrar

@{val_pag_recarga_faqs}
    ...   Preguntas frecuentes Recarga y Gana
    ...   ¿Qué es recarga y gana?
    ...   ¿Cómo puedo conseguir premio?
    ...   ¿Cuánto tengo que recargar para ganar un premio seguro?
    ...   ¿Quién participa en Recarga y Gana?
    ...   ¿Cómo se participa?
    ...   ¿Qué premios puedo ganar?
    ...   ¿Cuándo podré saber si tengo premio y cuál es?
    ...   ¿Cuánto tiempo tengo para confirmar mi premio?
    ...   ¿Puedo transferir mi premio a otro número?

@{val_pag_recarga_bloqueos_traspasaso}
    ...   Bloqueos de traspaso
    ...   Bloquear traspasos de saldo
    ...   Bloquear recibir saldo
    ...   Bloquear solicitudes de traspasos de saldo
