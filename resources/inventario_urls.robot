*** Settings *** 
Library    AppiumLibrary

*** Variables *****

${pag_dashboard}    dashboard?tab=mis-productos/dashboard
#############   Menú privado

    #############   Mi contrato
${pag_mi_contrato}    mi-contrato
${pag_datos_personales}    mi-contrato/mis-datos-personales
${pag_revision_privacidad}    mi-contrato/revision-privacidad
${pag_mi_documento}      mi-contrato/mi-documento
${pag_cambiocuentacorriente}    cambiocuentacorriente   ####################################################
${pag_escanear_documento}    scan-document

    #############   Notificaciones
${pag_notificaciones}    notificaciones
${pag_ajustes_notificaciones}    notificaciones/ajustes

    #############   Seguridad
${pag_seguridad}    seguridad
${pag_acerca_de}    acerca-de-orange

#############   Dashboard fijo y móvil
${pag_mis_dispositivos}    mis-dispositivos             ####################################################

#############   Mi Línea
${pag_mi_linea}    mi-linea 
${pag_mi_tarifa}    mi-linea/mi-tarifa
${pag_permanencia}    mi-linea/compromiso-permanencia

${pag_configuro_mi_linea}    configuro-mi-linea
${pag_pay_suscripciones}    orange-pay-subscription

#############   Facturas
${pag_facturas}    facturas
${pag_detalle_facturas}    facturas/detalles-factura
${pag_trece_facturas}    facturas/mis-facturas      
${pag_antiguas_facturas}   facturas/mis-facturas/facturas-antiguas  
${pag_dudas_facturas}        facturas/dudas-facturas
${pag_factura_sin_papel}    facturas/ajustes/factura-sin-papel       
${pag_factura_ciclo}    facturas/ciclo-facturacion-reclamacion-factura                  ####################################################
${pag_ranking_gasto}    facturas/detalles-factura/ranking-gastos           
${pag_dudasfactura_factura}    facturas/dudas-facturas/consulta-factura                
${pag_dudasfactura_pagos}    facturas/dudas-facturas/consulta-pagos                    
${pag_dudasfactura_promociones}    facturas/dudas-facturas/descuentos-promociones      

${pag_detalle_misconsumosfijo}     mis-consumos/detalle-consumo-fijo
${pag_detalle_misconsumosmovil}     mis-consumos/detalle-consumo-movil      
${pag_gasto_adicional}   gasto-adicional       
${pag_contrata}    contrata
${pag_kids}    kids-ready

#############   Ayuda
${pag_ayuda}    ayuda

${pag_ayuda_diagnostico}    ayuda/diagnostico-incidencias       
${pag_ayuda_seguimientocasos}   seguimiento-casos              
${pag_ayuda_algonofunciona}   ayuda/diagnostico-incidencias/algo-no-funciona    
${pag_ayuda_dispositivoestropeado}  orden-de-reparacion   

${pag_ayuda_mipedido}    ayuda/estado-mi-pedido         
${pag_ayuda_cancelarpedido}   cancelar-pedido-explicativa       

${pag_ayuda_milinea}    ayuda/mi-linea  
${pag_ayuda_gestionarserviciosterceros}    ayuda/faq/orange-pay
${pag_ayuda_factura}    ayuda/factura   
${pag_ayuda_contacta}    ayuda/contacta-con-orange     
${pag_ayuda_factura_impagada}       factImpagadaFaq   
${pag_ayuda_preguntas_frecuentes}       ayuda/faq       



#############   Buscador
${pag_buscador}    buscador

#############   Ser de Orange
${pag_SdO}    ser-de-orange-dashboard
${pag_descuentos_cerca}    descuento-cerca-de-ti


#############   Prepago
${pag_recarga_tarjeta}  recarga-tarjeta

${pag_prepago_misaldo}  mi-saldo                                        ######################
${pag_prepago_traspaso}  mi-saldo/traspaso                              ######################
${pag_prepago_historicomovimientos}  mi-saldo/historico-de-movimientos  ######################
${pag_prepago_historicorecargas}  mi-saldo/historico-de-movimientos/historico-recargas  ######################
${pag_prepago_historicotraspaso}  mi-saldo/historico-de-movimientos/historico-traspasos  ######################
${pag_recarga_descubretupremio}  recargaygana/descubre-tu-premio              ######################
${pag_recarga_consultapremios}  recargaygana/consulta-tus-premios            ######################
${pag_recarga_faqs}  faq-recarga-y-gana                                   ######################


#############       ALTAMIRA
${altamira_pro}      https://tiendaonline.orange.es/clientes/tarifas