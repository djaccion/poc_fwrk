*** Settings *** 
Library    AppiumLibrary

*** Variables *****

#########  LOGIN

${boton_entrar}    //*[@resource-id='ocsLoginPassword_btn_submitLoginForm'] 

	
${input_user}        xpath=//android.view.View[@resource-id="ocsLoginPassword_input_userNameField"]/descendant::android.widget.EditText
${input_password}    xpath=//android.view.View[@resource-id="ocsLoginPassword_input_passwordField"]/descendant::android.widget.EditText

${input_users20}        xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[1]/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText
${input_passwordS20}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[2]/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText

${boton_tipologin}    //*[@resource-id='ocsLoginPassword_btn_toggleUserNameFieldType'] 


${boton_ojito}    //*[@resource-id='ocsLoginPassword_btn_togglePasswordFieldVisibility'] 

${menu_publico}     //*[@resource-id='loginPage_btn_openSideMenu'] 


${cambiar_contraseña}   //*[@resource-id='ocsLoginPassword_btn_resetPassword'] 

${MC_contraseña}   //*[@resource-id='ocsLogin_text_changeLoginTypeTitle'] 

${boton_cerrarModal}   xpath=(//button[@title="Cerrar ventana modal"])[2]



#   Área de clientes
#   Resulve tus dudas
#   98   672 ¿Cómo acceder al área privada?
#   98   836 Diagnóstico móvil y cobertura
#   98   1007 Descubre qué puedes hacer con tu Livebox
#   98   1171 Estado de mi pedido
#   98   1309 Recarga tarjeta
#   98   1437 Soporte y ayuda
#   98   1576 En mi tienda
#   98   1709 Acerca de
  

#############   PANTALLA DE LOGIN
${loginPage_img_openSideMenu}    id=loginPage_img_openSideMenu
${input_userNameField}    id=ocsLoginPassword_input_userNameField
${input_passwordField}    id=ocsLoginPassword_input_passwordField
${btn_submitLoginForm}    id=ocsLoginPassword_btn_submitLoginForm
${btn_resetPassword}    id=ocsLoginPassword_btn_resetPassword
${btn_changeStyleNight}    id=loginPage_btn_changeStyleNight
${img_changeLoginTypeArrowUp}    d=ocsLogin_img_changeLoginTypeArrowUp
${text_changeLoginTypeTitle}    id=ocsLogin_text_changeLoginTypeTitle
${img_toggleUserNameFieldType}    id=ocsLoginPassword_img_toggleUserNameFieldType
${img_togglePasswordFieldVisibility}    id=ocsLoginPassword_img_togglePasswordFieldVisibility
${error_userpassword}    xpath=/html/body/ocs-notification-container/div/div[2]/div/ocs-notification/div/button

${input_userNameField_ENT1}    xpath=//*[@id="uat"]
${input_passwordField_ENT1}    xpath=//*[@id="inputPassword"]
${btn_submitLoginForm_ENT1}    xpath=//*[contains(@id,'authBoxLogin_btn_Cliente_Entrar')]

${input_userNameField_ENT2}    xpath=//*[@id="uat"]
${input_passwordField_ENT2}    xpath=//*[@id="inputPassword"]
${btn_submitLoginForm_ENT2}    xpath=//*[contains(@id,'authBoxLogin_btn_Cliente_Entrar')]

${input_userNameField_ASEG}    xpath=//*[@id="uat"]
${input_passwordField_ASEG}    xpath=//*[@id="inputPassword"]
${btn_submitLoginForm_ASEG}    xpath=//*[contains(@id,'authBoxLogin_btn_Cliente_Entrar')]

${input_userNameField_PROD}    xpath=//*[@id="pro"]
${input_passwordField_PROD}    xpath=//*[@id="inputPassword"]
${btn_submitLoginForm_PROD}    xpath=//*[contains(@id,'authBoxLogin_btn_Cliente_Entrar')]

${input_userNameField_LOCAL}    xpath=//*[@id="ocsLoginPassword_input_userNameField"]/div/label/input
${input_passwordField_LOCAL}    xpath=//*[@id="ocsLoginPassword_input_passwordField"]/div/label/input
${btn_submitLoginForm_LOCAL}    xpath=//*[@id="ocsLoginPassword_btn_submitLoginForm"]/button

${btn_submitLoginForm_consent_ENT1}    xpath=//*[@id="consent_prompt_submit"]
${btn_submitLoginForm_consent_ENT2}    xpath=//*[@id="consent_prompt_submit"]
${btn_submitLoginForm_consent_ASEG}    xpath=//*[@id="consent_prompt_submit"]
${btn_submitLoginForm_consent_PROD}    xpath=//*[@id="consent_prompt_submit"]


#############   MENU PUBLICO
${close_menu_public}    id=closeSideMenu
${click_back}    id=ocsButtonMenuComponent_btn_back

#############   MENU PRIVADO

${menu_privado}    //*[@resource-id='ocsButtonBackComponent_btn_menuToggle'] 

${Image_cerrar_sesion}    xpath=//img[contains(@src, 'ico-vn-close-sesion.svg')]
${close_menu_private}    xpath=//img[contains(@src, 'ico-vn-close.svg')]
${click_inicio}        xpath=//img[contains(@src, 'link-side-menu-inicio')]
${click_contrato}        xpath=/html/body/app-root/ocs-app-theme/ocs-theme-orange/div/div/div/ocs-menu/div/cms-module-render[1]/ocs-container-side-menu/ocs-side-menu-web/div[2]/ocs-side-menu-links/div/div/div/div/div/section/nav/ul/li[1]/div/img

${click_acordeon1}          xpath=//*[@id="ocsContract_btn_accordionContract_1.80809108"]
${click_acordeon2}           xpath=//*[@id="ocsContract_btn_accordionContract_1.50809107"]
${click_notificaciones}     xpath=/html/body/app-root/ocs-app-theme/ocs-theme-orange/div/div/div/ocs-menu/div/cms-module-render[1]/ocs-container-side-menu/ocs-side-menu-web/div[2]/ocs-side-menu-links/div/div/div/div/div/section/nav/ul/li[2]
${click_formularios}        xpath=/html/body/app-root/app-theme/ocs-theme-orange/div/div/div/app-side-menu/ocs-modal/div[2]/div/div/div[2]/div/cms-module-render/ocs-container-side-menu/ocs-side-menu/div/div/div/div/div/section/nav/ul/li[6]/div/img


${notificaciones}    //*[@id="ocsHeaderDashboardWeb_btn_notifications"]
#############   HEADER

${inicio}    //*[@resource-id='ocsTabBarDashboard_lnk_inicio_0'] 

${mi_linea}    //*[@resource-id='ocsTabBarDashboard_lnk_miLinea_1'] 
${facturas}    //*[@resource-id='ocsTabBarDashboard_lnk_facturas_2'] 
${contrata}    //*[@resource-id='ocsTabBarDashboard_lnk_contratar_3'] 
${menu_mas}    //*[@resource-id='ocsTabBarDashboard_lnk_muchoMas_4'] 


${ayuda}    //*[@resource-id='ocsHeaderDashboard_btn_help'] 
${buscar}   //*[@resource-id='ocsHeaderDashboard_btn_search'] 

${texto_buscador}    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[1]/android.view.View[1]/android.view.View/android.view.View/android.widget.EditText

${notificaciones}    //*[@id="ocsHeaderDashboardWeb_btn_notifications"]
${cerrar_sesion}    xpath=//*[@id="ocsHeaderDashboardWeb_btn_session"]/img

#############   FACTURAS
${pag_vistaclasica_factura}     xpath://*[contains(text(), "Vista clásica")]
${pag_vistagrafica_factura}     xpath://*[contains(text(), "Vista gráfica")]
${pag_comparador_factura}       xpath://*[contains(text(), "Comparar facturas")]
${pag_ajustes_factura}       xpath://*[contains(text(), "Ajustes")]
${pag_switch_facturasinpapel}    xpath://*[@id="switch1"]

#############   RANKING DE GASTOS


${pag_combo_ranking_importe1}       xpath://*[contains(text(), "Importe")]
${pag_combo_ranking_importe2}      xpath://*[@id="undefinedtypeAmount"]
${pag_combo_ranking_datos1}    xpath://*[contains(text(), "Datos")]
${pag_combo_ranking_datos2}  xpath://*[@id="undefinedtypeData"]
${pag_combo_ranking_llamadasmoviles1}    xpath://*[contains(text(), "Llamadas a móviles")]
${pag_combo_ranking_llamadasmoviles2}    xpath://*[@id="undefinedtypeMobileCalls"]
${pag_combo_ranking_MMS1}    xpath://*[contains(text(), "MMS")]
${pag_combo_ranking_MMS2}    xpath://*[@id="undefinedtypeMMS"]
${pag_combo_ranking_SMS1}    xpath://*[contains(text(), "SMS")]
${pag_combo_ranking_SMS2}    xpath://*[@id="undefinedtypeSMS"]
${pag_combo_ranking_llamadasinternacionales1}    xpath://*[contains(text(), "LLamadas internacionales")]
${pag_combo_ranking_llamadasinternacionales2}        xpath://*[@id="undefinedtypeInternationalCalls"]
${pag_combo_ranking_llamadasfijos1}     xpath://*[contains(text(), "Llamadas a fijos")]
${pag_combo_ranking_llamadasfijos2}     xpath://*[@id="undefinedtypeFixedCalls"]
${pag_combo_ranking_llamadasespeciales1}    xpath://*[contains(text(), "Llamadas especiales")]
${pag_combo_ranking_llamadasespeciales2}    xpath://*[@id="undefinedtypeSpecialCalls"]

#############   Menú Más

${ser_de_orange}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_0"]
${orange_bank}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_1"]
${mis_ofertas}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_2"]
${tiendas_orange}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_3"]

#############   Pagina de Notificaciones
${img_no_notificaciones}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Image
${img_si_notificaciones}      xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.widget.Image


#############   Pagina de mi línea
${compromiso_permanencia}    //*[contains(text(), "Compromiso de permanencia")]
#ocs-permanence-agreement

#############   SELECTOR DE DASHBOARD

${selector_productos}    //*[@resource-id='ocsMenuSelectorDashboardComponent_lnk_1'] 

${selector_consumos}    //*[@resource-id='ocsMenuSelectorDashboardComponent_lnk_2'] 

${selector_recargaygana}    //*[@resource-id='ocsMenuSelectorDashboardComponent_lnk_0'] 



#############   ELEMENTOS EMERGENTES
${NBA}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View[2]/android.view.View/android.view.View/android.view.View

${aspa_NBA}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.widget.Button


${tutorial}    xpath=//*[@id="undefined"]/div/div/div/div[2]/div/owl-carousel/owl-carousel-child/div[1]/div/div[2]/div/div[1]
${aspa_tutorial}    xpath=//*[@id="undefined"]/div/div/div/div[3]/button


#############   SELECTOR DE PRODUCTOS

${selector_movil}   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View[3]

${fijo}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View[5]

${TV}   xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.view.ViewGroup/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View/android.view.View/android.view.View[2]/android.view.View[2]/android.view.View/android.view.View[1]

${chevron_selector_linea}     xpath=/html/body/app-root/ocs-app-theme/ocs-theme-orange/div/div/div/ocs-menu/div/cms-module-render[2]/ocs-container-selector-lines-web/ocs-selector-lines-web/div/ul/ocs-carousel/div/button[2]
${Altamira}    xpath=/html/body/app-root/ocs-app-theme/ocs-theme-orange/div/div/div/cms-dinamic-page/cms-layout/div/div[5]/div/div/div[1]/div/cms-module-render/ocs-module-grouper/div/cms-module-render[6]/ocs-container-generic-module/ocs-link[1]/div/div/a

#############   DJINGO

${asistente_Orange}     xpath://*[contains(text(), "Asistente Orange")]

#${input_Djingo}     xpath://*[@id="inputUser"]
${enviar_Djingo}        xpath://*[contains(text(), "Enviar")]

${frame_Djingo}     xpath: //*[@id="iframeBau"]

	
${input_Djingo}     xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.RelativeLayout/android.widget.RelativeLayout/android.webkit.WebView/android.webkit.WebView/android.view.View/android.view.View[2]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[1]/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View/android.view.View[4]/android.view.View

${boton_No}    xpath://*[contains(text(), "No")]
${boton_Si}     xpath://*[contains(text(), "Sí")]
${reiniciar_conversacion}     xpath://*[contains(text(), "Reiniciar conversación")]


#############   COMPONENTES
${mis_servicios_contratados}   //*[contains(text(), "Mis servicios contratados")]

${configuro_milinea}   //*[contains(text(), "Configuro mi línea")]

#//*[@id="secondaryContainer"]/cms-dinamic-page/cms-layout/div/div[5]/div/div/div[1]/div/cms-module-render/ocs-module-grouper/div/cms-module-render[4]/ocs-container-set-myline-container/ocs-setmyline/ocs-accordion-row/div/ocs-accordion-header-base/button


#############   MUCHO MAS

${Image_Parachute}    xpath=//img[contains(@src, 'ico-vn-paratrooper')]

${Close_Pag_Mas}    xpath=//*[@id="closeMoreOptions"]
${Close_Pag_Mas_icon}    xpath=//*[@id="closeMoreOptions"]/img

${Link_Mucho_Mas}    xpath://*[contains(text(), "Mucho más...")]

${Link_Ser_Orange}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_serdeorange_1"]
${Link_Ser_Orange_txt}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_serdeorange_1"]/p
${Link_Ser_Orange_icon}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_serdeorange_1"]/div/img

${Link_Orange_Bank}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_orangebank_2"]
${Link_Orange_Bank_txt}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_orangebank_2"]/p
${Link_Orange_Bank_icon}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_orangebank_2"]/div/img

${Link_Mi_Tienda}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_enMiTienda_3"]
${Link_Mi_Tienda_txt}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_enMiTienda_3"]/p
${Link_Mi_Tienda_icon}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_enMiTienda_3"]/div/img

${Link_Mis_Ofertas}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_misOfertas_4"]
${Link_Mis_Ofertas_txt}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_misOfertas_4"]/p
${Link_Mis_Ofertas_icon}    xpath=//*[@id="ocsMoreOptionsMenuModal_lnk_misOfertas_4"]/div/img

${Link_NBA}       xpath=/html/body/ocs-nba-popups-container/div/div/div/div/div/div/div/div/ocs-nba-popup/div/div/div/div/div/div[2]/div/p/a

${aspa_tutorial}    //*[@id="undefined"]/div/div/div/div[3]/button/svg/path

######     PREPAGO

${historico_de_recargas}    xpath=//*[contains(text(),'Histórico')]


