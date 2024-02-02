$PBExportHeader$w_analisis_mnt_calculo_montos.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_calculo_montos from window
end type
type pb_calculos from picturebutton within w_analisis_mnt_calculo_montos
end type
type dw_beneficiarios from datawindow within w_analisis_mnt_calculo_montos
end type
type pb_pension from picturebutton within w_analisis_mnt_calculo_montos
end type
type dw_anios_pago from datawindow within w_analisis_mnt_calculo_montos
end type
type pb_anios_pago from picturebutton within w_analisis_mnt_calculo_montos
end type
type pb_tiempo_servicio from picturebutton within w_analisis_mnt_calculo_montos
end type
type pb_salir from picturebutton within w_analisis_mnt_calculo_montos
end type
type pb_grabar from picturebutton within w_analisis_mnt_calculo_montos
end type
type pb_3 from picturebutton within w_analisis_mnt_calculo_montos
end type
type dw_solicitud_pagos from datawindow within w_analisis_mnt_calculo_montos
end type
type sle_buscar from singlelineedit within w_analisis_mnt_calculo_montos
end type
type pb_buscar from picturebutton within w_analisis_mnt_calculo_montos
end type
type st_1 from statictext within w_analisis_mnt_calculo_montos
end type
type gb_tramite from groupbox within w_analisis_mnt_calculo_montos
end type
end forward

global type w_analisis_mnt_calculo_montos from window
integer x = 1550
integer y = 120
integer width = 6194
integer height = 3600
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle closeanimation = toproll!
pb_calculos pb_calculos
dw_beneficiarios dw_beneficiarios
pb_pension pb_pension
dw_anios_pago dw_anios_pago
pb_anios_pago pb_anios_pago
pb_tiempo_servicio pb_tiempo_servicio
pb_salir pb_salir
pb_grabar pb_grabar
pb_3 pb_3
dw_solicitud_pagos dw_solicitud_pagos
sle_buscar sle_buscar
pb_buscar pb_buscar
st_1 st_1
gb_tramite gb_tramite
end type
global w_analisis_mnt_calculo_montos w_analisis_mnt_calculo_montos

type variables
String is_dpi, is_etapa_desc, is_tramite
Integer ii_etapa_actual, ii_etapa_nueva
Long il_solicitud
end variables

on w_analisis_mnt_calculo_montos.create
this.pb_calculos=create pb_calculos
this.dw_beneficiarios=create dw_beneficiarios
this.pb_pension=create pb_pension
this.dw_anios_pago=create dw_anios_pago
this.pb_anios_pago=create pb_anios_pago
this.pb_tiempo_servicio=create pb_tiempo_servicio
this.pb_salir=create pb_salir
this.pb_grabar=create pb_grabar
this.pb_3=create pb_3
this.dw_solicitud_pagos=create dw_solicitud_pagos
this.sle_buscar=create sle_buscar
this.pb_buscar=create pb_buscar
this.st_1=create st_1
this.gb_tramite=create gb_tramite
this.Control[]={this.pb_calculos,&
this.dw_beneficiarios,&
this.pb_pension,&
this.dw_anios_pago,&
this.pb_anios_pago,&
this.pb_tiempo_servicio,&
this.pb_salir,&
this.pb_grabar,&
this.pb_3,&
this.dw_solicitud_pagos,&
this.sle_buscar,&
this.pb_buscar,&
this.st_1,&
this.gb_tramite}
end on

on w_analisis_mnt_calculo_montos.destroy
destroy(this.pb_calculos)
destroy(this.dw_beneficiarios)
destroy(this.pb_pension)
destroy(this.dw_anios_pago)
destroy(this.pb_anios_pago)
destroy(this.pb_tiempo_servicio)
destroy(this.pb_salir)
destroy(this.pb_grabar)
destroy(this.pb_3)
destroy(this.dw_solicitud_pagos)
destroy(this.sle_buscar)
destroy(this.pb_buscar)
destroy(this.st_1)
destroy(this.gb_tramite)
end on

event open;pb_buscar.backcolor = rgb(59,140,188)
pb_buscar.TEXTcolor =  rgb(255,255,255)

pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.TEXTcolor =  rgb(255,255,255)

pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)

dw_solicitud_pagos.DataObject = ""
		dw_solicitud_pagos.x = 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)


end event

type pb_calculos from picturebutton within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 3255
integer y = 92
integer width = 521
integer height = 92
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Cálculos"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 22362409
long backcolor = 32554752
end type

event clicked;Long ll_row, ll_max_monto, ll_min_monto
String  ls_subtipo_tramite, informacion
Integer respuesta, li_anios, li_i, li_j, li_k, li_edad, li_meses_b14, li_meses_agui, li_anios_lab, li_meses_lab, li_dias_lab, li_meses_agui_prov1,li_meses_b14_pend, li_meses_agui_pend, li_dias_b14_prop_p1, li_dias_b14_prop_p2, li_dias_b14_prov, li_meses_b14_prov, li_dias_agui_prov,li_meses_agui_prov, li_dias_mes_fallecimiento, li_meses_b14_p1, li_meses_b14_p2, li_dias_agui_prop_p1,li_dias_mes_agui_prop, li_dias_agui_prop_p2, li_meses_agui_p1, li_meses_agui_p2, li_cont_prestmuerte, li_cont_gasfun, li_cont_auxpost, li_cont_penspen, li_meses_agui_prov_p1, li_meses_agui_prov2,li_cont_prestmuerte1, li_cont_gasfun1, li_cont_auxpost1, li_cont_penspen1, li_dias_fin_mes_fallecimiento, li_meses_agui_prov3, li_meses_agui_prov4,li_diferencia_meses, li_diferencia_meses1, li_diferencia_meses2, li_diferencia_meses3, li_diferencia_meses4,li_diferencia_meses5, li_get_meses_p1, li_get_meses_p2,li_get_meses_p3, li_dias_fin_mes_inicio_pension, li_dias_mes_inicio_pension
Datetime ldt_fecha_fallecimiento, ldt_fecha_ultimo_pago, ldt_fecha_ini_b14, ldt_fecha_ini_agui, ldt_fecha_b14_prov,ldt_fecha_agui_prov, ldt_fecha_b14_fin_prov, ldt_fecha_agui_fin_prov, ldt_fecha_agui_fin_prop, ldt_fecha_b14_fin_prop,ldt_fecha_fin_p1,  ldt_fecha_resol, ldt_fecha_acuerdo, ldt_fecha_acuerdo1, ldt_fecha_inicio_pension
Decimal ldc_prestacion_muerte_inicial, ldc_pension_dias_pago, ldc_pension_dias_pago_suma, ldc_meses_pago, ldc_meses_pago_suma, ldc_monto_b14, ldc_prestacion_neta, ldc_prestacion, ldc_prestamo, ldc_salario_prom, ldc_pensiones_pendientes, ldc_pensiones_pendientes1, ldc_pension_maxima,	ldc_prestacion_aux,ldc_monto_agui, ldc_dias_pend, ldc_dias_pend1, ldc_total_pend, ldc_monto_b14_pend, ldc_monto_agui_pend,ldc_monto_b14_prov, ldc_monto_b14_prov1, ldc_monto_b14_prov2,ldc_monto_agui_prov, ldc_monto_agui_prov1,ldc_monto_agui_prov2, ldc_monto_diario,ldc_monto_b14_p1, ldc_monto_b14_p2, ldc_monto_agui_p1, ldc_monto_agui_p2, ldc_tot_benef, ldc_tot_benef1,ldc_tot_benef2,ldc_monto_benef, ldc_monto_benef1, ldc_monto_benef2, ldc_monto_benef3,ldc_tot_gasfun, ldc_tot_auxpos, ldc_tot_penspen, ldc_pension1, ldc_pension2, ldc_prestacion_gf, ldc_monto_reintegro, ldc_monto_descuento,Pendiente[], MontoPendiente[],PrestacionMuerte[], GastosFunerarios[], AuxilioPostumo[], BenefPendientes[], MontoPrestacionMuerte[], MontoGastosFunerarios[], MontoAuxilioPostumo[], MontoBenefPendientes[]

decimal pension1,pension2,pension3, b14Provisional,b14Proporcional,aguiProvisionado, aguiProporcional, precalculo
date f_fallece, f_upago, f_ipension1,f_fpension1,f_ipension2,f_fpension2,f_ib14,f_fb14,f_iagui,f_fagui

/*****************************************/
/*    Asignacion monto de GF para MA y SVA                 */
/*****************************************/
ll_row = dw_solicitud_pagos.getrow()

	ldt_fecha_fallecimiento = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row] 
ldt_fecha_fallecimiento = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row]
ldt_fecha_acuerdo   = datetime('14/02/2020')
ldt_fecha_acuerdo1 = datetime('01/08/2020')

if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo  and ldt_fecha_fallecimiento < ldt_fecha_acuerdo1 then
	ldc_prestacion_gf = 2000.00
else
	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo1 then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 0.00
	end if
end if

if is_tramite = '04' Then // Muerte Jubilado
	
/*****************************************/
/*    Asignacion Variables                                             */
/*****************************************/

ll_row = dw_solicitud_pagos.getrow()
li_anios_lab = li_anios
li_meses_lab = f_db_get_meses_laborados(is_dpi,il_solicitud)
li_dias_lab = f_db_get_dias_laborados(is_dpi,il_solicitud)
ldc_pension1 = dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]
ldc_pension2 = dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension2[ll_row]

ldt_fecha_inicio_pension = dw_solicitud_pagos.object.fecha_ini_pension[ll_row]

ldt_fecha_resol = dw_solicitud_pagos.object.solicitudes_fecha_resolucion[ll_row]
ldt_fecha_acuerdo = datetime('01/08/2020')
ldc_pension_maxima = 3623.00
li_dias_mes_fallecimiento = f_dias_mes(ldt_fecha_fallecimiento)
li_dias_mes_inicio_pension = f_dias_mes(ldt_fecha_inicio_pension)
li_dias_fin_mes_fallecimiento = f_dias_fin_mes(ldt_fecha_fallecimiento)
li_dias_fin_mes_inicio_pension = f_dias_fin_mes(ldt_fecha_inicio_pension)
ldt_fecha_b14_fin_prop = datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_b14[ll_row])
	
ldt_fecha_ultimo_pago = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_ultimo_pago[ll_row]
li_meses_b14 = dw_solicitud_pagos.object.meses_b14[ll_row]
li_meses_agui = dw_solicitud_pagos.object.meses_agui[ll_row]

ldt_fecha_ini_agui			= dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_inicio_agui[ll_row]
ldt_fecha_agui_fin_prop 	= datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_agui[ll_row])

	li_anios = f_db_get_anios_laborados(is_dpi,il_solicitud)
	if li_anios > 15 then
		li_anios = 15
	end if
	
	pension1=dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]
	pension2= dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension2[ll_row]
	pension3= dw_solicitud_pagos.object.monto_pension3[ll_row]
	f_fallece=date(datetime( dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row]))
	f_upago=date( datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_ultimo_pago[ll_row]))
	f_ib14 = date( datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_inicio_b14[ll_row]))
	f_fb14=date(  datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_b14[ll_row]))
	f_iagui =date( datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_inicio_agui[ll_row]))
	f_fagui =date( datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_agui[ll_row]))
	f_fpension1 =date( (dw_solicitud_pagos.object.fecha_fin_p1[ll_row]))
	ldt_fecha_fin_p1 = dw_solicitud_pagos.object.fecha_fin_p1[ll_row]
		/*****************************************/
	/*    Calculo Prestación Muerte Inicial                            */
	/*****************************************/
	if li_anios > 0 and li_anios < 15 then
		precalculo = f_calculo_pm_inicial_mj1(li_anios,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		messagebox('',string(precalculo))
		dw_solicitud_pagos.object.monto_meses[ll_row] = f_calculo_pm_inicial_mj2(li_meses_lab,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		messagebox('',string(dw_solicitud_pagos.object.monto_meses[ll_row]))
		precalculo += dw_solicitud_pagos.object.monto_meses[ll_row]
		precalculo += f_calculo_pm_inicial_mj3(li_dias_lab,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		messagebox('',string( f_calculo_pm_inicial_mj3(li_dias_lab,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)))
		dw_solicitud_pagos.object.prestacion_muerte[ll_row] = precalculo
	elseif li_anios = 15 then
		precalculo = f_calculo_pm_inicial_mj1(li_anios,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		dw_solicitud_pagos.object.prestacion_muerte[ll_row] = precalculo
	else
		dw_solicitud_pagos.object.monto_meses[ll_row] = f_calculo_pm_inicial_mj2(li_meses_lab,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		precalculo +=  dw_solicitud_pagos.object.monto_meses[ll_row]
		precalculo += f_calculo_pm_inicial_mj3(li_dias_lab,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension1,ldc_pension2,ldc_pension_maxima)
		dw_solicitud_pagos.object.prestacion_muerte[ll_row] = precalculo
	end if
	
	ldc_prestacion_muerte_inicial = dw_solicitud_pagos.object.prestacion_muerte[ll_row]
    //messagebox('x',string(dw_solicitud_pagos.object.monto_meses[ll_row]))
	 /*****************************************/
	// calculo de dias de pension pagada                              */
	/*****************************************/
	
	// dw_solicitud_pagos.object.prestacion_muerte[ll_row] = f_calculo_prestacion_muerte_inicial_mj(li_anios,ldt_fecha_fallecimiento,ldt_fecha_fin_p1,ldc_pension_maxima)
	if ldt_fecha_ultimo_pago < ldt_fecha_fallecimiento then
		if ldt_fecha_ultimo_pago >= f_fecha_ini_mes(month(date(ldt_fecha_ultimo_pago)),year(date(ldt_fecha_ultimo_pago))) then
			If ldt_fecha_fallecimiento <= dw_solicitud_pagos.object.fecha_fin_p1[ll_row] then
				ldc_pension_dias_pago_suma = round(day(date(ldt_fecha_fallecimiento)) * (ldc_pension1/li_dias_mes_fallecimiento),2)
		
			else
				ldc_pension_dias_pago_suma = round(day(date(ldt_fecha_fallecimiento)) * (ldc_pension2/li_dias_mes_fallecimiento),2)
				
			end if
		else
			ldc_pension_dias_pago_suma = 0.00
		end if
		dw_solicitud_pagos.object.monto_dias_mes[ll_row] = 0.00
		dw_solicitud_pagos.object.monto_dias_mes_suma[ll_row] = ldc_pension_dias_pago_suma
		
	else
		if ldt_fecha_fallecimiento  <  ldt_fecha_ultimo_pago  then
			if ldt_fecha_fallecimiento >= f_fecha_ini_mes(month(date(ldt_fecha_fallecimiento)),year(date(ldt_fecha_fallecimiento))) then
				If ldt_fecha_fallecimiento <= ldt_fecha_fin_p1 then
					ldc_pension_dias_pago = round(f_db_get_monto_pension_dias_pago_pm(is_dpi, ldc_pension1),2)
				else
					ldc_pension_dias_pago = round(f_db_get_monto_pension_dias_pago_pm(is_dpi, ldc_pension2),2)
				end if
			else
				ldc_pension_dias_pago = 0.00
			end if
		else
			ldc_pension_dias_pago = 0.00
		end if
		dw_solicitud_pagos.object.monto_dias_mes[ll_row] = ldc_pension_dias_pago
		dw_solicitud_pagos.object.monto_dias_mes_suma[ll_row] = 0.00
	end if
	
	 /*****************************************************/
	// calculo de meses entre fallecimiento y ultima fecha de pago de pensión */
	 /*****************************************************/
	li_diferencia_meses  = f_diferencia_meses( ldt_fecha_fallecimiento, dw_solicitud_pagos.object.fecha_fin_p1[ll_row] )
	li_diferencia_meses1 = f_diferencia_meses( dw_solicitud_pagos.object.fecha_fin_p1[ll_row], ldt_fecha_ultimo_pago )
	//li_diferencia_meses2 = f_diferencia_meses( ldt_fecha_fallecimiento, ldt_fecha_ultimo_pago )
	li_diferencia_meses2 = f_diferencia_meses(  ldt_fecha_ultimo_pago,ldt_fecha_fallecimiento )-1
	//li_diferencia_meses3 = f_diferencia_meses(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_inicio_p2[ll_row],ldt_fecha_b14_fin_prop)
	li_diferencia_meses3 = f_diferencia_meses(ldt_fecha_fallecimiento,ldt_fecha_b14_fin_prop)
	li_diferencia_meses4 = f_diferencia_meses(ldt_fecha_fallecimiento,ldt_fecha_b14_fin_prop)
	li_diferencia_meses5 = f_diferencia_meses(ldt_fecha_ultimo_pago,ldt_fecha_fallecimiento)
	
	/**************************************************************************/
	if f_fallece < f_upago then
		if pension1 <>0 and pension2 <> 0 and f_fpension1 < f_upago then
			decimal subtotalA, subtotalB =0.00

			if year(f_fallece) <> year(f_upago)then
				subtotalA =f_diferencia_meses( ldt_fecha_fallecimiento,ldt_fecha_fin_p1) * pension1
				subtotalB = (f_diferencia_meses( ldt_fecha_fin_p1,ldt_fecha_ultimo_pago)-1) * pension2
				ldc_meses_pago = round(subtotalA+subtotalB,2)
			else
				subtotalA =f_diferencia_meses( ldt_fecha_fallecimiento,ldt_fecha_fin_p1) * pension1
				subtotalB = (f_diferencia_meses( ldt_fecha_fin_p1,ldt_fecha_ultimo_pago)) * pension2
				ldc_meses_pago = round(subtotalA+subtotalB,2)
				messagebox('x2',string(ldc_meses_pago))
				
			end if
			
				
		else
			if year(f_fallece) <> year(f_upago)then
				ldc_meses_pago =  round(( f_diferencia_meses( ldt_fecha_fallecimiento,ldt_fecha_ultimo_pago))* pension1,2)
			else
				ldc_meses_pago =  round(( f_diferencia_meses( ldt_fecha_fallecimiento,ldt_fecha_ultimo_pago))* pension1,2)
			end if 
			
		end if
	elseif f_fallece > f_upago then
		if pension1 <>0 and pension2 <> 0 and  f_fpension1 > f_upago then
			decimal subtotal1, subtotal2, resultadoB =0.00
			if year(f_fallece) <> year(f_upago)then
				subtotal1 = f_diferencia_meses( ldt_fecha_ultimo_pago,ldt_fecha_fin_p1) * pension1
				subtotal2 = (f_diferencia_meses( ldt_fecha_fin_p1,ldt_fecha_fallecimiento)-1) * pension2
				ldc_meses_pago_suma = round(subtotal1+subtotal2,2)
			else 
				subtotal1 = f_diferencia_meses( ldt_fecha_ultimo_pago,ldt_fecha_fin_p1) * pension1
				subtotal2 = (f_diferencia_meses( ldt_fecha_fin_p1,ldt_fecha_fallecimiento)) * pension2
				ldc_meses_pago_suma = round(subtotal1+subtotal2,2)
			end if
			
		else
			if year(f_fallece) <> year(f_upago)then
				ldc_meses_pago_suma =   round(( (f_diferencia_meses( ldt_fecha_ultimo_pago,ldt_fecha_fallecimiento)-1) * pension1),2)
			else 
				ldc_meses_pago_suma =   round(( (f_diferencia_meses( ldt_fecha_fallecimiento,ldt_fecha_ultimo_pago)) * pension1),2)

		
			end if
			
		end if
	else
		ldc_meses_pago = 0.00
		ldc_meses_pago_suma =0.00
	end if
	if ldc_meses_pago < 0 then
		ldc_meses_pago = 0
	end if
	if ldc_meses_pago_suma <0 then
		ldc_meses_pago_suma= 0
	end if 
	dw_solicitud_pagos.object.monto_meses[ll_row] = ldc_meses_pago
	
	dw_solicitud_pagos.object.monto_meses_suma[ll_row] = ldc_meses_pago_suma
	//messagebox('x',string(dw_solicitud_pagos.object.monto_meses_suma[ll_row]))
	/**************************************************************************/
	
	


	//***************************//
	// calculo para los  bonos
	//***************************//
	
	if dw_solicitud_pagos.object.solicitud_prestacion_muerte_estado_b14_agui[ll_row] = 'B' then
		b14Proporcional = 0.00
		b14Provisional =  0.00
		aguiProporcional = round(mj_aguinaldo_proporcional(pension3,f_fallece,f_upago,f_iagui,f_fagui),2)
		aguiProvisionado=  round(mj_aguinaldo_provisional(pension3,f_fallece,f_upago,f_iagui,f_fagui),2)	
	elseif dw_solicitud_pagos.object.solicitud_prestacion_muerte_estado_b14_agui[ll_row] = 'A' then
		b14Proporcional =  round(mj_b14_proporcional(pension3,f_fallece,f_upago,f_ib14,f_fb14),2)
		b14Provisional =  round(mj_b14_provisional(pension3,f_fallece,f_upago,f_ib14,f_fb14),2)
		aguiProporcional = 0.00
		aguiProvisionado=  0.00	
	elseif dw_solicitud_pagos.object.solicitud_prestacion_muerte_estado_b14_agui[ll_row] = 'S' then
		b14Proporcional = 0.00
		b14Provisional =  0.00
		aguiProporcional =  0.00
		aguiProvisionado=  0.00	
	else
		b14Proporcional =  round(mj_b14_proporcional(pension3,f_fallece,f_upago,f_ib14,f_fb14),2)
		b14Provisional =  round(mj_b14_provisional(pension3,f_fallece,f_upago,f_ib14,f_fb14),2)
		aguiProporcional =  round(mj_aguinaldo_proporcional(pension3,f_fallece,f_upago,f_iagui,f_fagui),2)
		aguiProvisionado=  round(mj_aguinaldo_provisional(pension3,f_fallece,f_upago,f_iagui,f_fagui),2)	
	end if
	
	
	dw_solicitud_pagos.object.monto_b14[ll_row] = b14Proporcional
	ldc_prestacion_muerte_inicial -= b14Proporcional
	

	dw_solicitud_pagos.object.monto_b14_provisionado[ll_row] = b14Provisional
	ldc_prestacion_muerte_inicial += b14Provisional
	
	
	dw_solicitud_pagos.object.monto_agui[ll_row] =aguiProporcional
	ldc_prestacion_muerte_inicial -= aguiProporcional
	

	dw_solicitud_pagos.object.monto_agui_provisionado[ll_row] = aguiProvisionado
	ldc_prestacion_muerte_inicial += aguiProvisionado
	
	
	

// Verificación de monto prestamo PPEM
	if isnull(dw_solicitud_pagos.object.monto_prestamo[ll_row]) then
		dw_solicitud_pagos.object.monto_prestamo[ll_row] = 0.00
	end if
	ldc_prestamo = dw_solicitud_pagos.object.monto_prestamo[ll_row]
// Verificación de monto pensiones pendientes por mes
	if isnull(dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row]) then
		dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0.00
		ldc_pensiones_pendientes = 0.00
		ldc_pensiones_pendientes1 = 0.00
	
	else
		if dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0 then
			if ldt_fecha_fallecimiento  >  ldt_fecha_ultimo_pago  then
				if month(date(ldt_fecha_fallecimiento))  <>  month(date(ldt_fecha_ultimo_pago)) then
					if day(date(ldt_fecha_ultimo_pago ))  >  day(date(ldt_fecha_fallecimiento)) then
						dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0.00
						ldc_pensiones_pendientes1 = (f_diferencia_meses(ldt_fecha_ultimo_pago,ldt_fecha_fallecimiento) - 1) * f_db_get_pension_calculada_contribuyente(is_dpi)
						ldc_pensiones_pendientes = 0.00
					else
						dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0.00
						ldc_pensiones_pendientes1 = f_diferencia_meses(ldt_fecha_ultimo_pago,ldt_fecha_fallecimiento) * f_db_get_pension_calculada_contribuyente(is_dpi)
						ldc_pensiones_pendientes = 0.00
					end if
				else
					dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0.00
					ldc_pensiones_pendientes = 0.00
					ldc_pensiones_pendientes1 = 0.00
				end if
			else
				ldc_pensiones_pendientes = 0.00
				ldc_pensiones_pendientes1 = 0.00
				dw_solicitud_pagos.object.monto_pensiones_pendientes[ll_row] = 0.00
			end if
		end if
	end if
	
	
// Verificación de monto pensiones pendientes por dia 
	ldc_dias_pend = 0
	if isnull(dw_solicitud_pagos.object.monto_dias_pendientes[ll_row]) then
		dw_solicitud_pagos.object.monto_dias_pendientes[ll_row] = 0.00
		ldc_dias_pend = 0.00
		ldc_dias_pend1 = 0.00
	else
		if ldc_dias_pend = 0 then
			if ldt_fecha_fallecimiento  >  ldt_fecha_ultimo_pago  then
				if month(date(ldt_fecha_fallecimiento))  <>  month(date(ldt_fecha_ultimo_pago))  then
					ldc_dias_pend = 0.00
					ldc_dias_pend1 = day(date(ldt_fecha_fallecimiento)) * (f_db_get_pension_calculada_contribuyente(is_dpi) / li_dias_mes_fallecimiento)
				end if
			else
				ldc_dias_pend = 0.00
				ldc_dias_pend1 = 0.00
			end if
			if li_anios = 15 and ldc_dias_pend1 = 0.00 then
				ldc_dias_pend = 0.00
				ldc_dias_pend1 = 0.00
			end if
		end if
	end if
	dw_solicitud_pagos.object.monto_dias_pendientes[ll_row] = ldc_dias_pend
	
	if isnull(ldc_pensiones_pendientes1) then ldc_pensiones_pendientes1 = 0.00
	if isnull(ldc_dias_pend1) then ldc_dias_pend1 = 0.00
	
	ldc_total_pend = ldc_pensiones_pendientes1 + ldc_dias_pend1


	
	li_meses_b14_pend = dw_solicitud_pagos.object.dias_b14_pend[ll_row]
	//ldt_fecha_ini_b14 = dw_solicitud_pagos.object.solicitud_monto_reintegro_fecha_inicio_b14[ll_row]
	if ldt_fecha_fallecimiento >=  datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_b14[ll_row] )  and ldt_fecha_ultimo_pago <  datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_b14[ll_row]) then
		if day(date(ldt_fecha_ini_b14)) = 1 then
			ldc_monto_b14_pend = round((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) * (abs(li_meses_b14_pend + 2)) ,2)
		else
			ldc_monto_b14_pend = round((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) * (abs(li_meses_b14_pend + 1)) + ((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) / f_dias_mes(ldt_fecha_ini_b14)) * f_dias_fin_mes(ldt_fecha_ini_b14)  ,2)
		end if
	else
		ldc_monto_b14_pend = 0.00
	end if
	dw_solicitud_pagos.object.monto_b14_pendiente[ll_row] = ldc_monto_b14_pend
	li_meses_agui_pend = dw_solicitud_pagos.object.dias_agui_pend[ll_row]
	ldt_fecha_ini_agui = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_inicio_agui[ll_row]
	if ldt_fecha_fallecimiento >=  datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_agui[ll_row]) and ldt_fecha_ultimo_pago <  datetime(dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_agui[ll_row]) then
		if day(date(ldt_fecha_ini_agui)) = 1 then
			ldc_monto_agui_pend = round((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) * (abs(li_meses_agui_pend + 2)) ,2)
		else
			ldc_monto_agui_pend = round((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) * (abs(li_meses_agui_pend + 1)) + ((dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12) / f_dias_mes(ldt_fecha_ini_agui)) * f_dias_fin_mes(ldt_fecha_ini_agui)  ,2)
		end if
	else
		ldc_monto_agui_pend = 0.00
	end if
	dw_solicitud_pagos.object.monto_agui_pendiente[ll_row] = ldc_monto_agui_pend
	


	
	ldc_monto_agui= dw_solicitud_pagos.object.monto_agui_provisionado[ll_row] + dw_solicitud_pagos.object.monto_agui[ll_row]
	ldc_monto_descuento = dw_solicitud_pagos.object.monto_descuento[ll_row]
	ldc_monto_reintegro = dw_solicitud_pagos.object.monto_reintegro[ll_row]

	//bonoUnico
	if dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_ultimo_pago[ll_row] > dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row]  then
		//si es mayor la fecha de fallecimiento a la del ultimo pago (Descuento)
		dw_solicitud_pagos.object.bonounicodesc[ll_row]= round(dw_solicitud_pagos.object.bonounicodef[ll_row],2)
		dw_solicitud_pagos.object.bonounicorein[ll_row]=0.00
	end if
	if dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_ultimo_pago[ll_row] < dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row]  then
		// de lo contrario (Reintegro)
		dw_solicitud_pagos.object.bonounicorein[ll_row]= round(dw_solicitud_pagos.object.bonounicodef[ll_row],2)
		dw_solicitud_pagos.object.bonounicodesc[ll_row]=0.00
	end if
	if isnull(dw_solicitud_pagos.object.bonounicodef[ll_row]) OR dw_solicitud_pagos.object.bonounicodef[ll_row]= 0  then
		dw_solicitud_pagos.object.bonounicorein[ll_row]=0.00
		dw_solicitud_pagos.object.bonounicodesc[ll_row]=0.00
	end if
	
	
// totaliza la prestacion neta
	ldc_prestacion_neta = round(ldc_prestacion_muerte_inicial - (round(ldc_pension_dias_pago,2) + round(ldc_meses_pago,2)  + round(ldc_prestamo,2) + round(ldc_monto_descuento,2) ),2) + round(ldc_pensiones_pendientes,2) + round(ldc_dias_pend,2) + round(ldc_monto_b14_prov,2) + round(ldc_monto_agui_prov,2) + round(ldc_pension_dias_pago_suma,2) + round(ldc_meses_pago_suma,2) + round(ldc_monto_reintegro,2)+dw_solicitud_pagos.object.bonounicorein[ll_row]-dw_solicitud_pagos.object.bonounicodesc[ll_row]

	dw_solicitud_pagos.object.prestacion_muerte_neta[ll_row] = ldc_prestacion_neta

	// Calcula las prestaciones por beneficiarios
	ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
	li_edad = 0
	if month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
		if month(date(ldt_fecha_fallecimiento)) = month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) and day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
		else
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
		end if			
	else
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) -1
	end if
		
	//ldc_prestacion_neta  --   ldc_tot_benef

	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
			
	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 2000.00
	end if
	MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
	
	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_aux = 15000.00
	else
		if li_edad <= 70 then 
			ldc_prestacion_aux = 15000.00
		else
			ldc_prestacion_aux = 10000.00
		end if
	end if
	
	//PrimerBloque de Beneficiarios
/* actualizacion para decimales de los beneficiarios*/

dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
dw_beneficiarios.SetTransObject(sqlca)
dw_beneficiarios.retrieve(is_dpi)
/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next

choose case ls_subtipo_tramite
   case '0' // 0 = ninguno
		
		for li_i=1 to dw_beneficiarios.rowcount()			
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]  <> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		
		
		
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]  <> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
				ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
			end if
					
            
        next
    case '1' // 1 = S. V. y G. F.
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]  <> '0'  then // 1 = Art. 16 - Prestación por muerte
			    PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			    GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <>'0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
	    next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if

	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			    ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
		    		dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			    ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
				 	
		    end if
        next
	case '2' // 2 = S. V.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			    ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		    end if
		
		   if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '3' // 3 = G. F.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
					PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
					GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
			end if
		
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if

		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
				ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
			end if
		
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
				ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
			end if	
        next
end choose
for li_i=1 to dw_beneficiarios.rowcount()
	if dw_beneficiarios.object.detalle_beneficiarios_pendiente[li_i] <> '0' then // 1 = Pensiones Pendientes
		Pendiente[li_i] =  dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]
	end if	
next
if upperbound(Pendiente)>0 then
	MontoPendiente[]=f_monto_beneficiarios(Pendiente[],ldc_prestacion_neta)
end if

for li_i=1 to dw_beneficiarios.rowcount()
//if ls_subtipo_tramite <> '3' then
	if not isnull(dw_beneficiarios.object.detalle_beneficiarios_pendiente[li_i])  then // 1 = Pensiones Pendientes
		li_cont_penspen1 = li_cont_penspen1 + 1
	if li_cont_penspen1 = li_cont_penspen then
	    if li_cont_penspen <> 1 then
			ldc_tot_benef = round((ldc_total_pend + ldc_monto_b14_pend + ldc_monto_agui_pend) - ldc_monto_benef3,2)
			dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i] = ldc_tot_benef
		else
			dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i] = round(((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_total_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_b14_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_agui_pend),2)
		end if
		else
			dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i] = round(((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_total_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_b14_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_agui_pend),2)
			ldc_monto_benef3 = ldc_monto_benef3 + dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i]
		end if
			//dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i] = round(((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_total_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_b14_pend) + ((dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]) / 100 * ldc_monto_agui_pend),2)
	end if
		//end if
        
next
//Termina primer bloque
	//**************************//
	//* Validaciones de totales y detalle *//
	//**************************//
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
	for li_i=1 to dw_beneficiarios.rowcount()
		ldc_monto_benef += dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		ldc_monto_benef3 += dw_beneficiarios.object.detalle_beneficiarios_monto_pendiente[li_i]
		/*dw_1.object.pm.text =string(ldc_monto_benef)
		dw_1.object.gf.text =string(ldc_monto_benef1)
		dw_1.object.pg.text =string(ldc_monto_benef2
		dw_1.object.pn.text =string(ldc_monto_benef3
		dw_1.object.total.text =string(ldc_monto_benef+ldc_monto_benef1+ldc_monto_benef2+ldc_monto_benef3)*/
		
		
	next
	
End if
if is_tramite = '05' Then // Muerte Activo 
	ll_max_monto = 3623.00
	ll_min_monto = 500.00
	ll_row = dw_solicitud_pagos.getrow()
	ldt_fecha_resol = dw_solicitud_pagos.object.solicitudes_fecha_resolucion[ll_row]
	
	// dpi=2334961570802
	// calculo de prestacion de muerte inicial
	
	if dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_prestamo[ll_row] > 0 then
		ldc_salario_prom = dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] / 12
		ldc_prestacion_muerte_inicial = ldc_salario_prom * dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_prestamo[ll_row]
		
		If ldc_prestacion_muerte_inicial > ll_max_monto then
			ldc_prestacion_muerte_inicial = ll_max_monto
		end if
		dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = ldc_prestacion_muerte_inicial
	else
		li_anios = f_db_get_anios_laborados(is_dpi,il_solicitud)
		if li_anios > 15 then
			li_anios = 15
		end if
		
		li_anios_lab = li_anios
		li_meses_lab = f_db_get_meses_laborados(is_dpi,il_solicitud)
		li_dias_lab = f_db_get_dias_laborados(is_dpi,il_solicitud)
		respuesta = MessageBox("¿Modificar?", "¿Desea calcular los dias laborados?", Question!, YesNo!, 2)
		if respuesta <>1 then	
				li_dias_lab = 0
		end if 
		
		If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] > ll_max_monto then
			dw_solicitud_pagos.object.monto_dias_mes[ll_row] = (li_dias_lab * (ll_max_monto/365))
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = (li_meses_lab * (ll_max_monto/12)) 
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = (li_anios * ll_max_monto)
		Else
			If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] < ll_min_monto then
				dw_solicitud_pagos.object.monto_dias_mes[ll_row] = (li_dias_lab * (ll_max_monto/365))
				dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = (li_meses_lab * (ll_min_monto/12))
				dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = (li_anios * ll_min_monto)
			else
				dw_solicitud_pagos.object.monto_dias_mes[ll_row] = (li_dias_lab * (dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]/365))
				dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = (li_meses_lab * (dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]/12))
				dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = (li_anios * dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row])
			end if
		end if
	end if
	
	//messagebox('anios',li_anios)
	if li_anios = 15 then
		ldc_prestacion_muerte_inicial = dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row]
			dw_solicitud_pagos.object.monto_dias_mes[ll_row] = 0.00
		dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = 0.00
	else
		ldc_prestacion_muerte_inicial =dw_solicitud_pagos.object.monto_dias_mes[ll_row]+ dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] + dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] 
	end if
	
	//calculo de dias de pension pagada
	ldc_pension_dias_pago = 0.00 
	//dw_solicitud_pagos.object.monto_dias_mes[ll_row] = ldc_pension_dias_pago
	

	// calculo de meses entre fallecimiento y ultima fecha de pago de pensión
	ldc_meses_pago = 0.00
//	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = ldc_meses_pago

	// calculo para el bono 14 proporcional
	ldc_monto_b14 = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_b14[ll_row] = ldc_monto_b14

	// calculo para el aguinaldo proporcional
	ldc_monto_agui = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_agui[ll_row] = ldc_monto_agui
	
	// calculo para el descuento
	ldc_monto_reintegro = 0.00
	ldc_monto_reintegro = dw_solicitud_pagos.object.monto_reintegro[ll_row] 

	// totaliza la prestacion neta
	ldc_prestacion_neta = ldc_prestacion_muerte_inicial - (ldc_pension_dias_pago + ldc_meses_pago + ldc_monto_b14 + ldc_monto_agui + ldc_monto_reintegro)
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte_neta[ll_row] = ldc_prestacion_neta

	// Calcula las prestaciones por beneficiarios
	ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
	li_edad = 0
	if month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
		if month(date(ldt_fecha_fallecimiento)) = month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) and day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
		else
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
		end if			
	else
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) -1
	end if



	li_cont_prestmuerte = 0
	li_cont_gasfun = 0
	li_cont_auxpost = 0
	li_cont_penspen = 0
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
	ldc_tot_benef = 0
	ldc_tot_benef1 = 0
	ldc_tot_benef2 = 0
	li_j = 0
	li_k = 0
//SegundoBloque de Beneficiarios
	/* actualizacion para decimales de los beneficiarios*/

	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo  and ldt_fecha_fallecimiento < ldt_fecha_acuerdo1 then
		if li_edad <= 70 then 
			ldc_prestacion_aux = 15000.00
		else
			ldc_prestacion_aux = 10000.00
		end if
	else
		if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo1 then
			ldc_prestacion_aux = 15000.00
		else
			if li_edad <= 70 then 
				ldc_prestacion_aux = 15000.00
			else
				ldc_prestacion_aux = 10000.00
			end if
		end if
	end if
	if ldt_fecha_fallecimiento >datetime('2020-08-01') then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 2000.00
end if
dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
dw_beneficiarios.SetTransObject(sqlca)
dw_beneficiarios.retrieve(is_dpi)
/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next
choose case ls_subtipo_tramite
   case '0' // 0 = ninguno
		
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
				ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
			end if
            
        next

    case '1' // 1 = S. V. y G. F.
			
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
			    PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			    GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
	    next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if

	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			    ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
		    	dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			    ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '2' // 2 = S. V.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			    ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		    end if
		
		   if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '3' // 3 = G. F.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
					PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
					GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
			end if
			
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],ldc_prestacion_neta)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if

		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i] <> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
				ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
			end if
		
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
				ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
			end if	
        next
end choose

	
	/******Termina Actualizacion de beneficiarios-----***/
//Termina Segundo Bloque
	//**************************//
	//* Validaciones de totales y detalle *//
	//**************************//
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	for li_i=1 to dw_beneficiarios.rowcount()
		ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		ldc_monto_benef1 = ldc_monto_benef1 + dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		ldc_monto_benef2 = ldc_monto_benef2 + dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
	next
	
End if
if is_tramite ='06' then  /* Seguro Vida Jubilado */
	ll_max_monto = 3623.00
	ll_min_monto = 500.00
	ll_row = dw_solicitud_pagos.getrow()
	// dpi=2334961570802
	// calculo de prestacion de muerte inicial
	li_anios = f_db_get_anios_laborados(is_dpi,il_solicitud)
	if li_anios > 15 then
		li_anios = 15
	end if
	If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] > ll_max_monto then
		dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_max_monto
	Else
		If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] < ll_min_monto then
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_min_monto
		else
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]
		end if
	end if
	ldc_prestacion_muerte_inicial = dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row]

	// calculo de dias de pension pagada
	ldc_pension_dias_pago = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_dias_mes[ll_row] = ldc_pension_dias_pago

	// calculo de meses entre fallecimiento y ultima fecha de pago de pensión
	ldc_meses_pago = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = ldc_meses_pago

	// calculo para el bono 14 proporcional
	ldc_monto_b14 = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_b14[ll_row] = ldc_monto_b14

	// calculo para el aguinaldo proporcional
	ldc_monto_agui = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_agui[ll_row] = ldc_monto_agui

	// totaliza la prestacion neta
	ldc_prestacion_neta = ldc_prestacion_muerte_inicial - (ldc_pension_dias_pago + ldc_meses_pago + ldc_monto_b14 + ldc_monto_agui )
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte_neta[ll_row] = ldc_prestacion_neta

	// Calcula las prestaciones por beneficiarios
	ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
	li_edad = 0
	if day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) and month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
	else 
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) -1
	end if

	dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
	dw_beneficiarios.SetTransObject(sqlca)
	dw_beneficiarios.retrieve(is_dpi)
	/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next
	li_cont_prestmuerte = 0
	li_cont_gasfun = 0
	li_cont_auxpost = 0
	li_cont_penspen = 0
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
	
//TercerBloque de Beneficiarios
/* actualizacion para decimales de los beneficiarios*/
	
	
if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 2000.00
end if
	
	
if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
	ldc_prestacion_aux = 15000.00
else
	if li_edad <= 70 then 
		ldc_prestacion_aux = 15000.00
	else
		ldc_prestacion_aux = 10000.00
	end if
end if

choose case ls_subtipo_tramite
    case '0' // 0 = ninguno
        messagebox("Error","Elige los beneficios")
    case '1' // 1 = S. V. y G. F.
	    
	    for li_i=1 to dw_beneficiarios.rowcount()
		    
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			    GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
	    next
			
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if

	    for li_i=1 to dw_beneficiarios.rowcount()
		    
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
		    	dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			    ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '2' // 2 = S. V.
			
		for li_i=1 to dw_beneficiarios.rowcount()
			
			if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			if dw_beneficiarios.object.detalle_beneficiarios_pendiente[li_i] <> '0' then // 1 = Pensiones Pendientes
				li_cont_penspen = li_cont_penspen
			end if
		next
	
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if
		
	    for li_i=1 to dw_beneficiarios.rowcount()
		
		   if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '3' // 3 = G. F.
				
		for li_i=1 to dw_beneficiarios.rowcount()
		
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
					GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
			end if
			
		next
			

		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if

		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
				ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
			end if	
        next
end choose



//Termina tercer bloque
	//**************************//
	//* Validaciones de totales y detalle *//
	//**************************//
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	for li_i=1 to dw_beneficiarios.rowcount()
		ldc_monto_benef += dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
	next
	
End if


if is_tramite ='07' then  /* Seguro Vida Activo */
	
	ll_max_monto = 3623.00
	ll_min_monto = 500.00
	ll_row = dw_solicitud_pagos.getrow()
	// dpi=2334961570802
	// calculo de prestacion de muerte inicial
	li_anios = f_db_get_anios_laborados(is_dpi,il_solicitud)
	if li_anios > 15 then
		li_anios = 15
	end if
	If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] > ll_max_monto then
		dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_max_monto
	Else
		If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] < ll_min_monto then
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_min_monto
		else
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]
		end if
	end if
	ldc_prestacion_muerte_inicial = dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row]

	// calculo de dias de pension pagada
	ldc_pension_dias_pago = 0.00
	dw_solicitud_pagos.object.monto_dias_mes[ll_row] = ldc_pension_dias_pago

	// calculo de meses entre fallecimiento y ultima fecha de pago de pensión
	ldc_meses_pago = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = ldc_meses_pago

	// calculo para el bono 14 proporcional
	ldc_monto_b14 = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_b14[ll_row] = ldc_monto_b14

	// calculo para el aguinaldo proporcional
	ldc_monto_agui = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_agui[ll_row] = ldc_monto_agui

	// totaliza la prestacion neta
	ldc_prestacion_neta = ldc_prestacion_muerte_inicial - (ldc_pension_dias_pago + ldc_meses_pago + ldc_monto_b14 + ldc_monto_agui )
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte_neta[ll_row] = ldc_prestacion_neta

	// Calcula las prestaciones por beneficiarios
	ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
	li_edad = 0
	if day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) and month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
	else 
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) -1
	end if
	
	li_cont_prestmuerte = 0
	li_cont_gasfun = 0
	li_cont_auxpost = 0
	li_cont_penspen = 0
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
	//CuartoBloque de Beneficiarios
/* actualizacion para decimales de los beneficiarios*/
	dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
	dw_beneficiarios.SetTransObject(sqlca)
	dw_beneficiarios.retrieve(is_dpi)
	/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next
if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
	ldc_prestacion_gf = 5000.00
else
	ldc_prestacion_gf = 2000.00
end if
	
	
if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
	ldc_prestacion_aux = 15000.00
else
	if li_edad <= 70 then 
		ldc_prestacion_aux = 15000.00
	else
		ldc_prestacion_aux = 10000.00
	end if
end if


choose case ls_subtipo_tramite
    case '0' // 0 = ninguno
        messagebox("Error","Elige los beneficios")
    case '1' // 1 = S. V. y G. F.
			
	    for li_i=1 to dw_beneficiarios.rowcount()
		    
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			    GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0'  then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
	    next
			
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if

	    for li_i=1 to dw_beneficiarios.rowcount()
		    
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0'  then // 1 = Act. 92-2015 - Gastos funerarios
		    	dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			    ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '2' // 2 = S. V.
		for li_i=1 to dw_beneficiarios.rowcount()
			
			if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if

		next
			
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if
	    for li_i=1 to dw_beneficiarios.rowcount()
		
		   if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i] <> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    ldc_monto_benef2 += dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
		    end if
        next
	case '3' // 3 = G. F.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
					GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
			end if
			
		next

		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if

		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
				ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
			end if	
        next
end choose
//Termina cuarto bloque
	//**************************//
	//* Validaciones de totales y detalle *//
	//**************************//
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	for li_i=1 to dw_beneficiarios.rowcount()
		/*ldc_monto_benef = ldc_monto_benef + dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]*/
		ldc_monto_benef1 = ldc_monto_benef1 + dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		ldc_monto_benef2 = ldc_monto_benef2 + dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
	next
	
End if

if is_tramite ='09' then  /* Gastos Funerarios */
	ll_max_monto = 3623.00
	ll_min_monto = 500.00
	ll_row = dw_solicitud_pagos.getrow()
	ldt_fecha_fallecimiento = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[ll_row]
	// dpi=2334961570802
	// calculo de prestacion de muerte inicial
	li_anios = f_db_get_anios_laborados(is_dpi,il_solicitud)
	if li_anios > 15 then
		li_anios = 15
	end if
	If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] > ll_max_monto then
		dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_max_monto
	Else
		If dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row] < ll_min_monto then
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * ll_min_monto
		else
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row] = li_anios * dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[ll_row]
		end if
	end if
	ldc_prestacion_muerte_inicial = dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte[ll_row]

	// calculo de dias de pension pagada
	ldc_pension_dias_pago = 0.00
	dw_solicitud_pagos.object.monto_dias_mes[ll_row] = ldc_pension_dias_pago

	// calculo de meses entre fallecimiento y ultima fecha de pago de pensión
	ldc_meses_pago = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_meses[ll_row] = ldc_meses_pago

	// calculo para el bono 14 proporcional
	ldc_monto_b14 = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_b14[ll_row] = ldc_monto_b14

	// calculo para el aguinaldo proporcional
	ldc_monto_agui = 0.00
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_agui[ll_row] = ldc_monto_agui

	// totaliza la prestacion neta
	ldc_prestacion_neta = ldc_prestacion_muerte_inicial - (ldc_pension_dias_pago + ldc_meses_pago + ldc_monto_b14 + ldc_monto_agui )
	dw_solicitud_pagos.object.solicitud_prestacion_muerte_prestacion_muerte_neta[ll_row] = ldc_prestacion_neta

	// Calcula las prestaciones por beneficiarios
	ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
	li_edad = 0
	if day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) and month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) then
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] ))
	else
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[ll_row] )) -1
	end if

	dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmap_ben"
	dw_beneficiarios.SetTransObject(sqlca)
	dw_beneficiarios.retrieve(is_dpi)

	/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	ldc_monto_benef3 = 0
	//QuintoBloque de Beneficiarios

	/* actualizacion para decimales de los beneficiarios*/
	for li_i=1 to dw_beneficiarios.rowcount()
		
		if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		end if
		
	next

	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 2000.00
	end if

	if upperbound(GastosFunerarios)>0 then
		MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
	end if
	


	for li_i=1 to dw_beneficiarios.rowcount()
		
		if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i] <> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
				ldc_monto_benef1 += dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		end if
		
	next 
//Termina quinto bloque
	//**************************//
	//* Validaciones de totales y detalle *//
	//**************************//
	ldc_monto_benef   = 0
	ldc_monto_benef1 = 0
	ldc_monto_benef2 = 0
	for li_i=1 to dw_beneficiarios.rowcount()
		ldc_monto_benef += dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i]
		ldc_monto_benef1 +=  dw_beneficiarios.object.detalle_beneficiarios_monto[li_i]
		ldc_monto_benef2 +=  dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i]
	next
	
End if

end event

type dw_beneficiarios from datawindow within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 55
integer y = 2276
integer width = 6098
integer height = 892
integer taborder = 80
string title = "none"
string dataobject = "d_analisis_mnt_det_pag_sol_pmgf_ben"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)

end event

type pb_pension from picturebutton within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 2784
integer y = 84
integer width = 457
integer height = 100
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Pensión"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 25314066
long backcolor = 16833533
end type

event clicked;st_analisis     lst_parametros

lst_parametros.ss_dpi        = is_dpi

Openwithparm(w_analisis_mnt_pension_jubilado_m,  lst_parametros)

lst_parametros = Message.PowerObjectParm


end event

type dw_anios_pago from datawindow within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 5403
integer y = 12
integer width = 521
integer height = 156
integer taborder = 70
string title = "none"
string dataobject = "d_analisis_con_anios_pagos"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

type pb_anios_pago from picturebutton within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 2272
integer y = 84
integer width = 457
integer height = 100
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Años Pago"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 25314066
long backcolor = 16833533
end type

event clicked;long ll_solicitud

st_analisis     lst_parametros

ll_solicitud       = f_db_get_solicitud(is_dpi)

lst_parametros.sl_solicitud = ll_solicitud
lst_parametros.ss_dpi        = is_dpi

Openwithparm(w_analisis_mnt_anios_pago,  lst_parametros)

lst_parametros = Message.PowerObjectParm


end event

type pb_tiempo_servicio from picturebutton within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 1815
integer y = 84
integer width = 457
integer height = 100
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Tiempo Servicio"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 25314066
long backcolor = 16833533
end type

event clicked;long ll_solicitud

ll_solicitud       = f_db_get_solicitud(is_dpi)

st_analisis     lst_parametros

lst_parametros.sl_solicitud = il_solicitud
lst_parametros.ss_dpi        = is_dpi

Openwithparm(w_analisis_mnt_tiempo_servicio,  lst_parametros)

lst_parametros = Message.PowerObjectParm


end event

type pb_salir from picturebutton within w_analisis_mnt_calculo_montos
integer x = 4878
integer y = 72
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Close(w_analisis_mnt_calculo_montos)
end event

type pb_grabar from picturebutton within w_analisis_mnt_calculo_montos
integer x = 4389
integer y = 76
integer width = 457
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Grabar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

event clicked;Decimal ldc_pension
Integer li_resp, li_servicio

li_resp = MessageBox("¿Grabar?", "¿Ya reviso los cálculos?. ¿Desea Grabar?", Question!, YesNo!, 2)
If li_resp = 1  Then
	if is_tramite = '03' then
		if  dw_solicitud_pagos.object.meses_pago1[1]= 0 then
			messagebox("Error", "No aplica para contribuyente voluntario")
		else
			dw_solicitud_pagos.object.monto_anio1[1] = dw_solicitud_pagos.object.meses_pago1[1]
		dw_solicitud_pagos.object.monto_anio2[1] = round(dw_solicitud_pagos.object.cuota_laboral[1],0)
		dw_solicitud_pagos.object.monto_anio3[1] = round(dw_solicitud_pagos.object.cuota_patronal[1],0)
		dw_solicitud_pagos.object.monto_anio4[1] = round(dw_solicitud_pagos.object.pension[1],0)
		dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2[1]=dw_solicitud_pagos.object.r1_ts[1]
//		(salario1 + salario2 + salario3 + salario4 + salario5 + salario6 ) / 6
		f_db_upd_salario_contribuyente(is_dpi,dw_solicitud_pagos.object.salario[1])
		end if
		
	end if

	IF dw_solicitud_pagos.Update() = 1 THEN	
		
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro se grabó con éxito")
	
		choose case is_tramite
			case '01'
				ldc_pension = round(dw_solicitud_pagos.object.pension[1], 2)
				f_db_upd_salario_contribuyente02(dw_solicitud_pagos.object.porcentaje_pension[1],dw_solicitud_pagos.object.pension[1], is_dpi,dw_solicitud_pagos.object.promedio_anios[1])
			case '02'
				ldc_pension = round(dw_solicitud_pagos.object.pension[1], 2)
				f_db_upd_salario_contribuyente02(dw_solicitud_pagos.object.porcentaje_pension[1],dw_solicitud_pagos.object.pension[1], is_dpi,dw_solicitud_pagos.object.promedio_anios[1])
			case '03'
				ldc_pension = dw_solicitud_pagos.object.pension[1]
			case '04'
				ldc_pension = Truncate(dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[1], 0)
			case '05'
				ldc_pension = Truncate(dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[1], 0)
			case '06'
				/* no hace nada */
			case '07'
				ldc_pension = Truncate(dw_solicitud_pagos.object.solicitud_prestacion_muerte_monto_pension[1], 0)
			case '08'
				ldc_pension = Truncate(dw_solicitud_pagos.object.pension[1], 0)
			case '09'
				/* no hace nada */
		end choose
	
		if is_tramite <> '06' or is_tramite <> '01' then
			f_db_upd_contribuyente_pension(is_dpi,ldc_pension)
		end if
	
		IF dw_beneficiarios.Update() = 1 THEN	
			COMMIT using SQLCA;	
			MessageBox("Grabar","El registro en beneficiarios se grabó con éxito")
		ELSE	
			ROLLBACK using SQLCA;
		END IF
	ELSE	
		ROLLBACK using SQLCA;
	END IF
end if
end event

type pb_3 from picturebutton within w_analisis_mnt_calculo_montos
boolean visible = false
integer x = 4256
integer y = 72
integer width = 110
integer height = 96
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "CreateLibrary!"
string disabledname = "AddWatch!"
long backcolor = 33554432
end type

event clicked;Decimal pm, pmn, ldc_prestacion_gf, ldc_prestacion_aux
Decimal mpp,mdp,mdms, mms,mb14p,map,mr,bur
Decimal mdm,ms,mb14,ma,mp,md,bud
Decimal Pendiente[], MontoPendiente[],PrestacionMuerte[], GastosFunerarios[], AuxilioPostumo[], BenefPendientes[], MontoPrestacionMuerte[], MontoGastosFunerarios[], MontoAuxilioPostumo[], MontoBenefPendientes[]
Integer li_edad, li_cont_penspen1, li_cont_penspen
String ls_subtipo_tramite
Long row, li_i
datetime ldt_fecha_fallecimiento, ldt_fecha_acuerdo, ldt_fecha_nacimiento

row = dw_solicitud_pagos.getrow()
pm= dw_solicitud_pagos.object.prestacion_muerte[row]

mdm= dw_solicitud_pagos.object.monto_dias_mes[row]
ms= dw_solicitud_pagos.object.monto_meses[row]

mb14= dw_solicitud_pagos.object.monto_b14[row]
ma=dw_solicitud_pagos.object.monto_agui[row]
mp= dw_solicitud_pagos.object.monto_prestamo[row]
md= dw_solicitud_pagos.object.monto_descuento[row]
bud=dw_solicitud_pagos.object.bonounicodesc[row]

mpp= dw_solicitud_pagos.object.monto_pensiones_pendientes[row]
mdp= dw_solicitud_pagos.object.monto_dias_pendientes[row]
mdms= dw_solicitud_pagos.object.monto_dias_mes_suma[row]
mms= dw_solicitud_pagos.object.monto_meses_suma[row]
mb14p= dw_solicitud_pagos.object.monto_b14_provisionado[row]
map= dw_solicitud_pagos.object.monto_agui_provisionado[row]
mr= dw_solicitud_pagos.object.monto_reintegro[row]
bur= dw_solicitud_pagos.object.bonounicorein[row]
pmn+= pm
pmn += (mpp+mdp+mdms+mms+mb14p+map+mr+bur)
pmn -= (mdm+ms+mb14+ma+mp+md+bud)
//messagebox('Prestaciones Netas',''+string(pmn))
dw_solicitud_pagos.object.prestacion_muerte_neta[row] = pmn

ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(is_dpi)
ldt_fecha_fallecimiento = dw_solicitud_pagos.object.solicitud_prestacion_muerte_fecha_fallecimiento[row]
ldt_fecha_nacimiento = dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row]
ldt_fecha_acuerdo   = datetime('14/02/2020')
li_edad = 0
	if month(date(ldt_fecha_fallecimiento)) >= month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] )) then
		if month(date(ldt_fecha_fallecimiento)) = month(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] )) and day(date(ldt_fecha_fallecimiento)) >= day(date( dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] )) then
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] ))
		else
			li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] ))
		end if			
	else
		li_edad = year(date(ldt_fecha_fallecimiento))-year(date(  dw_solicitud_pagos.object.contribuyentes_fecha_nacimiento[row] )) -1
	end if
			
	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_gf = 5000.00
	else
		ldc_prestacion_gf = 2000.00
	end if
	
	
	if ldt_fecha_fallecimiento >= ldt_fecha_acuerdo then
		ldc_prestacion_aux = 15000.00
	else
		if li_edad <= 70 then 
			ldc_prestacion_aux = 15000.00
		else
			ldc_prestacion_aux = 10000.00
		end if
	end if


	//PrimerBloque de Beneficiarios
/* actualizacion para decimales de los beneficiarios*/

dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
dw_beneficiarios.SetTransObject(sqlca)
dw_beneficiarios.retrieve(is_dpi)
/*xv3*/
for li_i=1 to dw_beneficiarios.rowcount()
			dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = 0
			dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = 0
next
	
choose case ls_subtipo_tramite
   case '0' // 0 = ninguno
		
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],pmn)
		end if

		
		
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			end if
					
            
        next
    case '1' // 1 = S. V. y G. F.
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
			    PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
			    GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
		    end if
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
	    next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],pmn)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if

	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
		    		dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			    
		    end if
		
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
			    
				 	
		    end if
        next
	case '2' // 2 = S. V.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
				PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    AuxilioPostumo[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje2[li_i]
		    end if
			
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],pmn)
		end if
		if upperbound(AuxilioPostumo)>0 then
			MontoAuxilioPostumo[]=f_monto_beneficiarios(AuxilioPostumo[],ldc_prestacion_aux)
		end if
	    for li_i=1 to dw_beneficiarios.rowcount()
		    if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
			    dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
		    end if
		
		   if dw_beneficiarios.object.detalle_beneficiarios_tipo2[li_i]<> '0' then // 1 = Act. 93-2015 - Auxilio póstumo
			    dw_beneficiarios.object.detalle_beneficiarios_monto1[li_i] = MontoAuxilioPostumo[li_i]
		    end if
        next
	case '3' // 3 = G. F.
		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
					PrestacionMuerte[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje[li_i]
			end if
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
					GastosFunerarios[li_i] = dw_beneficiarios.object.detalle_beneficiarios_porcentaje1[li_i] 
			end if
		
		next
			
		if upperbound(PrestacionMuerte)>0 then
			MontoPrestacionMuerte[]=f_monto_beneficiarios(PrestacionMuerte[],pmn)
		end if
		if upperbound(GastosFunerarios)>0 then
			MontoGastosFunerarios[]=f_monto_beneficiarios(GastosFunerarios[], ldc_prestacion_gf)
		end if

		for li_i=1 to dw_beneficiarios.rowcount()
			if dw_beneficiarios.object.detalle_beneficiarios_tipo[li_i]<> '0' then // 1 = Art. 16 - Prestación por muerte
				dw_beneficiarios.object.detalle_beneficiarios_prestacion_muerte[li_i] = MontoPrestacionMuerte[li_i]
			end if
		
			if dw_beneficiarios.object.detalle_beneficiarios_tipo1[li_i]<> '0' then // 1 = Act. 92-2015 - Gastos funerarios
				dw_beneficiarios.object.detalle_beneficiarios_monto[li_i] = MontoGastosFunerarios[li_i]
			end if	
        next
end choose
for li_i=1 to dw_beneficiarios.rowcount()
	if dw_beneficiarios.object.detalle_beneficiarios_pendiente[li_i]<> '0' then // 1 = Pensiones Pendientes
		Pendiente[li_i] =  dw_beneficiarios.object.detalle_beneficiarios_porcentaje3[li_i]
	end if	
next
//messagebox("",""+string(pmn))
end event

type dw_solicitud_pagos from datawindow within w_analisis_mnt_calculo_montos
integer x = 32
integer y = 224
integer width = 6112
integer height = 2064
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_mnt_det_pagos_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)

end event

event itemchanged;//datetime ldt_fup
//
//This.AcceptText()
//
//Choose case dwo.name
//	case 'solicitud_prestacion_muerte_fecha_ultimo_pago'
//		ldt_fup = this.object.solicitud_prestacion_muerte_fecha_ultimo_pago[row]
//		if day(date(ldt_fup)) = 30 then
//			Choose case month(date(ldt_fup))
//				case 6
//					this.object.t_pago_b14_agui.visible = true
//					this.object.solicitud_prestacion_muerte_estado_b14_agui.visible = true
//				case 11
//					this.object.t_pago_b14_agui.visible = true
//					this.object.solicitud_prestacion_muerte_estado_b14_agui.visible = true
//				case else
//					this.object.t_pago_b14_agui.visible = false
//					this.object.solicitud_prestacion_muerte_estado_b14_agui.visible = false
//			end choose
//		end if
//end choose
end event

type sle_buscar from singlelineedit within w_analisis_mnt_calculo_montos
integer x = 302
integer y = 24
integer width = 942
integer height = 96
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event modified;is_dpi = This.text

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type pb_buscar from picturebutton within w_analisis_mnt_calculo_montos
integer x = 1285
integer y = 24
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows, ll_rows2, ll_row
Integer li_i, li_j, li_anio, li_dias_mes, li_edad
String ls_descripcion, ls_tramite, ls_subtipo_tramite, ls_subtipo_cv, cui
Decimal ldc_prestacion
cui = buscardpi(is_dpi)
il_solicitud       = f_db_get_solicitud(cui)
ls_tramite        =       f_db_get_solicitud_tramite(cui)
is_tramite = ls_tramite

choose case ls_tramite  /* verificar que tipo de tramite es para escojer la dw*/
	case '01'   /* Vejez */  /* si es vejez: d_analisis_mnt_det_pagos_solicitudes*/
		gb_tramite.text = 'Vejez'
		
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = true
		pb_pension.visible = false
		pb_calculos.visible = false
		dw_beneficiarios.visible = false
	
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_solicitudes"
		dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
	
		ll_rows = dw_solicitud_pagos.retrieve(cui)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			if ll_rows2 > 0 then
				/*insertar registros*/
				for li_i=1 to 12
					ll_row = dw_solicitud_pagos.InsertRow(0)
					dw_solicitud_pagos.ScrollToRow(ll_row)
					dw_solicitud_pagos.SetFocus()
		
					dw_solicitud_pagos.object.No_Solicitud[ll_row] = il_solicitud
					dw_solicitud_pagos.object.dpi[ll_row] = cui
					dw_solicitud_pagos.object.mes[ll_row] = li_i
					If  1 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[1]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio1.visible = true
						dw_solicitud_pagos.object.monto_anio1[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio1.visible = true
					end if
					If  2 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[2]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio2.visible = true						
						dw_solicitud_pagos.object.monto_anio2[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio2.visible = true
					end if
					If 3 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[3]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio3.visible = true
						dw_solicitud_pagos.object.monto_anio3[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio3.visible = true
					end if
					If  4 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[4]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio4.visible = true
						dw_solicitud_pagos.object.monto_anio4[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio4.visible = true
					end if
					If  5 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[5]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio5.visible = true
						dw_solicitud_pagos.object.monto_anio5[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio5.visible = true
					end if
					If  6 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[6]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio6.visible = true
						dw_solicitud_pagos.object.monto_anio6[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio6.visible = true
					end if
					If  7 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[7]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7[ll_row] = li_anio
						dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio7.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio7[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio7.visible = true
					end if
					If  8 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[8]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8[ll_row] = li_anio
						dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio8.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio8[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio8.visible = true
					end if
				next	
			end if
		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			if ll_rows2 > 0 then
				/*mostrar registros*/
				If  1 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1.visible = true
					dw_solicitud_pagos.object.monto_anio1.visible = true
					dw_solicitud_pagos.object.suma_anio1.visible = true
				end if
				If 2 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2.visible = true
					dw_solicitud_pagos.object.monto_anio2.visible = true						
					dw_solicitud_pagos.object.suma_anio2.visible = true
				end if
				If 3 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3.visible = true
					dw_solicitud_pagos.object.monto_anio3.visible = true
					dw_solicitud_pagos.object.suma_anio3.visible = true
				end if
				If 4 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4.visible = true
					dw_solicitud_pagos.object.monto_anio4.visible = true
					dw_solicitud_pagos.object.suma_anio4.visible = true
				end if
				If 5 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5.visible = true
					dw_solicitud_pagos.object.monto_anio5.visible = true
					dw_solicitud_pagos.object.suma_anio5.visible = true
				end if
				If 6 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6.visible = true
					dw_solicitud_pagos.object.monto_anio6.visible = true
					dw_solicitud_pagos.object.suma_anio6.visible = true
				end if
				If 7 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7.visible = true
					dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio7.visible = true
					dw_solicitud_pagos.object.suma_anio7.visible = true
				end if
				If 8 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8.visible = true
					dw_solicitud_pagos.object.solicitud_detalle_pagos_monto_anio8.visible = true
					dw_solicitud_pagos.object.suma_anio8.visible = true
				end if
			end if
			/**/
		end if
	case '02'   /* Invalidez */
		gb_tramite.text = 'Invalidez'
		
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = true
		pb_pension.visible = false
		pb_calculos.visible = false
		dw_beneficiarios.visible = false
	
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_solicitudes_invalidez"
		dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)

		ll_rows = dw_solicitud_pagos.retrieve(cui)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			if ll_rows2 > 0 then
				/*insertar registros*/
				for li_i=1 to 12
					ll_row = dw_solicitud_pagos.InsertRow(0)
					dw_solicitud_pagos.ScrollToRow(ll_row)
					dw_solicitud_pagos.SetFocus()
		
					dw_solicitud_pagos.object.No_Solicitud[ll_row] = il_solicitud
					dw_solicitud_pagos.object.dpi[ll_row] = cui
					dw_solicitud_pagos.object.mes[ll_row] = li_i
					If 1 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[1]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio1.visible = true
						dw_solicitud_pagos.object.monto_anio1[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio1.visible = true
					end if
					If 2 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[2]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio2.visible = true						
						dw_solicitud_pagos.object.monto_anio2[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio2.visible = true
					end if
					If 3 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[3]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio3.visible = true
						dw_solicitud_pagos.object.monto_anio3[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio3.visible = true
					end if
					If 4 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[4]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio4.visible = true
						dw_solicitud_pagos.object.monto_anio4[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio4.visible = true
					end if
					If 5 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[5]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio5.visible = true
						dw_solicitud_pagos.object.monto_anio5[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio5.visible = true
					end if
					If 6 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[6]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio6.visible = true
						dw_solicitud_pagos.object.monto_anio6[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio6.visible = true
					end if
					If 7 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[7]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio7.visible = true
						dw_solicitud_pagos.object.monto_anio7[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio7.visible = true
					end if
					If 8 <=  ll_rows2 then
						li_anio = dw_anios_pago.object.anio[8]
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8.visible = true
						dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8[ll_row] = li_anio
						dw_solicitud_pagos.object.monto_anio8.visible = true
						dw_solicitud_pagos.object.monto_anio8[ll_row] = 0.00
						dw_solicitud_pagos.object.suma_anio8.visible = true
					end if
				next	
			end if
		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			if ll_rows2 > 0 then
				/*mostrar registros*/
				If 1 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio1.visible = true
					dw_solicitud_pagos.object.monto_anio1.visible = true
					dw_solicitud_pagos.object.suma_anio1.visible = true
				end if
				If 2 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio2.visible = true
					dw_solicitud_pagos.object.monto_anio2.visible = true						
					dw_solicitud_pagos.object.suma_anio2.visible = true
				end if
				If 3 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio3.visible = true
					dw_solicitud_pagos.object.monto_anio3.visible = true
					dw_solicitud_pagos.object.suma_anio3.visible = true
				end if
				If 4 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio4.visible = true
					dw_solicitud_pagos.object.monto_anio4.visible = true
					dw_solicitud_pagos.object.suma_anio4.visible = true
				end if
				If 5 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio5.visible = true
					dw_solicitud_pagos.object.monto_anio5.visible = true
					dw_solicitud_pagos.object.suma_anio5.visible = true
				end if
				If 6 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio6.visible = true
					dw_solicitud_pagos.object.monto_anio6.visible = true
					dw_solicitud_pagos.object.suma_anio6.visible = true
				end if
				If 7 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio7.visible = true
					dw_solicitud_pagos.object.monto_anio7.visible = true
					dw_solicitud_pagos.object.suma_anio7.visible = true
				end if
				If 8 <=  ll_rows2 then
					dw_solicitud_pagos.object.solicitud_detalle_pagos_anio8.visible = true
					dw_solicitud_pagos.object.monto_anio8.visible = true
					dw_solicitud_pagos.object.suma_anio8.visible = true
				end if
			end if
			/**/
		end if
		
	case '03'   /* Contribuyente Voluntario */
		//gb_tramite.text = 'Contribuyente Voluntario'
		ls_subtipo_cv = f_db_get_solicitud_subtipo_cv(cui)
		dw_solicitud_pagos.x= 32
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = false
		pb_pension.visible = false
		pb_calculos.visible = false
		dw_beneficiarios.visible = false
	
		
		//messagebox('ls_subtipo_cv',ls_subtipo_cv)
		choose case ls_subtipo_cv
			case '1' // 1 = CV-Vejez
				dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_solicitudes_cv"
				gb_tramite.text = 'Contribuyente Voluntario - Vejez'
			case '2' // 2 = CV-Invalidez
				dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pag_sol_cv_inv"
				gb_tramite.text = 'Contribuyente Voluntario - Invalidez'
		end choose
//		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_solicitudes_cv"
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		ll_rows = dw_solicitud_pagos.retrieve(cui)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.No_Solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.dpi[ll_row] = cui
			dw_solicitud_pagos.object.mes[ll_row] = 1
		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
		end if
	case '04'   /* Muerte Jubilado */
		gb_tramite.text = 'Muerte Jubilado'
		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
		
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = false
		pb_pension.visible = true
		pb_calculos.visible = true
		dw_beneficiarios.visible = true
		pb_3.visible = true

		
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_sol_pm"
		dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		dw_solicitud_pagos.enabled = true
		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_no_solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_dpi[ll_row] = cui

		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
			choose case ls_subtipo_tramite
			case '0' // 0 = ninguno
				dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
				case '1' // 1 = S. V. y G. F.
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
			case '2' // 2 = S. V.
				dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
				case '3' // 3 = G. F.
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
					//dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgf_ben"
			end choose
			dw_beneficiarios.SetTransObject(sqlca)
			dw_beneficiarios.retrieve(cui)
		end if
	case '05'   /* Muerte Activo */
		gb_tramite.text = 'Muerte Activo'
		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = false
		pb_pension.visible = true
		pb_calculos.visible = true
		dw_beneficiarios.visible = true
		pb_3.visible = false

		
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_sol_pm_ma"
		dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		dw_solicitud_pagos.enabled = true
		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_no_solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_dpi[ll_row] = cui
//			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
//			ll_row = dw_solicitud_pagos.InsertRow(0)
//			dw_solicitud_pagos.ScrollToRow(ll_row)
//			dw_solicitud_pagos.SetFocus()
//		
//			dw_solicitud_pagos.object.No_Solicitud[ll_row] = il_solicitud
//			dw_solicitud_pagos.object.dpi[ll_row] = cui
//			dw_solicitud_pagos.object.mes[ll_row] = 1
//			dw_solicitud_pagos.object.monto_anio2[ll_row] = f_db_get_pension_calculada_contribuyente( cui ) * f_db_get_anios_laborados( cui,  il_solicitud )
//			if month(today()) = 1 or month(today()) = 3 or month(today()) = 5 or month(today()) = 7 or month(today()) = 8 or month(today()) = 10  or month(today()) = 12 then 
//				li_dias_mes = 31 
//			end if 
//			if month(today()) = 2 then 
//				li_dias_mes = 28 
//			end if
//			if month(today()) = 4 or month(today()) = 6 or month(today()) = 9 or month(today()) = 11 then
//				li_dias_mes = 30
//			end if
//			dw_solicitud_pagos.object.monto_anio3[ll_row] =  round(dw_solicitud_pagos.object.monto_anio2[ll_row]  /  li_dias_mes,2)
//			dw_solicitud_pagos.object.monto_anio4[ll_row] =  dw_solicitud_pagos.object.monto_anio1[ll_row] * dw_solicitud_pagos.object.monto_anio3[ll_row]
//			dw_solicitud_pagos.object.monto_anio5[ll_row] =  dw_solicitud_pagos.object.monto_anio2[ll_row] - dw_solicitud_pagos.object.monto_anio4[ll_row]
		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
			choose case ls_subtipo_tramite
				case '0' // 0 = ninguno
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
				case '1' // 1 = S. V. y G. F.
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
				case '2' // 2 = S. V.
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
				case '3' // 3 = G. F.
					dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
					//dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgf_ben"
			end choose
			dw_beneficiarios.SetTransObject(sqlca)
			dw_beneficiarios.retrieve(cui)

//			dw_solicitud_pagos.object.monto_anio2[1] = f_db_get_pension_calculada_contribuyente( cui ) * f_db_get_anios_laborados( cui,  il_solicitud )
//			if month(today()) = 1 or month(today()) = 3 or month(today()) = 5 or month(today()) = 7 or month(today()) = 8 or month(today()) = 10  or month(today()) = 12 then 
//				li_dias_mes = 31 
//			end if 
//			if month(today()) = 2 then 
//				li_dias_mes = 28 
//			end if
//			if month(today()) = 4 or month(today()) = 6 or month(today()) = 9 or month(today()) = 11 then
//				li_dias_mes = 30
//			end if
//			dw_solicitud_pagos.object.monto_anio3[1] =  round(dw_solicitud_pagos.object.monto_anio2[1]  /  li_dias_mes,2)
//			dw_solicitud_pagos.object.monto_anio4[1] =  dw_solicitud_pagos.object.monto_anio1[1] * dw_solicitud_pagos.object.monto_anio3[1]
//			dw_solicitud_pagos.object.monto_anio5[1] =  dw_solicitud_pagos.object.monto_anio2[1] - dw_solicitud_pagos.object.monto_anio4[1]			
		end if
	case '06'   /* Seguro Vida Jubilado */
		gb_tramite.text = 'Seguro Vida Jubilado'
		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
		pb_tiempo_servicio.visible = false
		pb_anios_pago.visible = false
		pb_pension.visible = false
		pb_calculos.visible = true
		dw_beneficiarios.visible = true
		pb_3.visible = false


		
		
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_sol_svgf"
				dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		dw_solicitud_pagos.enabled = true
		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_no_solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_dpi[ll_row] = cui

		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
			dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
			dw_beneficiarios.SetTransObject(sqlca)
			dw_beneficiarios.retrieve(cui)
		end if
	case '07'   /* Seguro Vida Activo */
		gb_tramite.text = 'Seguro Vida Activo'
		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = false
		pb_pension.visible = true
		pb_calculos.visible = true
		dw_beneficiarios.visible = true
		pb_3.visible = false


		
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_sol_pm_ma"
				dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		dw_solicitud_pagos.enabled = true
		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_no_solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_dpi[ll_row] = cui

		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
			dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
			dw_beneficiarios.SetTransObject(sqlca)
			dw_beneficiarios.retrieve(cui)
		end if
	case '08'   /* Auxilio Póstumo */
		/* este tramite no se hara porque es una institución ajena al ppem */
		
		gb_tramite.text = 'Auxilio Póstumo'
//		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
//		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
//		pb_tiempo_servicio.visible = true
//		pb_anios_pago.visible = false
//		pb_pension.visible = true
//		pb_calculos.visible = true
//		dw_beneficiarios.visible = true
//		
//		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_solicitudes_mj_svj_gf"
//		dw_solicitud_pagos.Height = 1508
//		dw_solicitud_pagos.SetTransObject(sqlca)
//		dw_solicitud_pagos.enabled = true
//		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
//		if ll_rows = 0 then
//			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
//			ll_row = dw_solicitud_pagos.InsertRow(0)
//			dw_solicitud_pagos.ScrollToRow(ll_row)
//			dw_solicitud_pagos.SetFocus()
//		
//			dw_solicitud_pagos.object.No_Solicitud[ll_row] = il_solicitud
//			dw_solicitud_pagos.object.dpi[ll_row] = cui
//			dw_solicitud_pagos.object.mes[ll_row] = 1
//			dw_solicitud_pagos.object.monto_anio2[ll_row] = f_db_get_pension_calculada_contribuyente( cui ) * f_db_get_anios_laborados( cui,  il_solicitud )
//			if month(today()) = 1 or month(today()) = 3 or month(today()) = 5 or month(today()) = 7 or month(today()) = 8 or month(today()) = 10  or month(today()) = 12 then 
//				li_dias_mes = 31 
//			end if 
//			if month(today()) = 2 then 
//				li_dias_mes = 28 
//			end if
//			if month(today()) = 4 or month(today()) = 6 or month(today()) = 9 or month(today()) = 11 then
//				li_dias_mes = 30
//			end if
//			dw_solicitud_pagos.object.monto_anio3[ll_row] =  round(dw_solicitud_pagos.object.monto_anio2[ll_row]  /  li_dias_mes,2)
//			dw_solicitud_pagos.object.monto_anio4[ll_row] =  dw_solicitud_pagos.object.monto_anio1[ll_row] * dw_solicitud_pagos.object.monto_anio3[ll_row]
//			dw_solicitud_pagos.object.monto_anio5[ll_row] =  dw_solicitud_pagos.object.monto_anio2[ll_row] - dw_solicitud_pagos.object.monto_anio4[ll_row]
//		else
//			/***/
//			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
//			dw_solicitud_pagos.object.monto_anio2[1] = f_db_get_pension_calculada_contribuyente( cui ) * f_db_get_anios_laborados( cui,  il_solicitud )
//			if month(today()) = 1 or month(today()) = 3 or month(today()) = 5 or month(today()) = 7 or month(today()) = 8 or month(today()) = 10  or month(today()) = 12 then 
//				li_dias_mes = 31 
//			end if 
//			if month(today()) = 2 then 
//				li_dias_mes = 28 
//			end if
//			if month(today()) = 4 or month(today()) = 6 or month(today()) = 9 or month(today()) = 11 then
//				li_dias_mes = 30
//			end if
//			dw_solicitud_pagos.object.monto_anio3[1] =  round(dw_solicitud_pagos.object.monto_anio2[1]  /  li_dias_mes,2)
//			dw_solicitud_pagos.object.monto_anio4[1] =  dw_solicitud_pagos.object.monto_anio1[1] * dw_solicitud_pagos.object.monto_anio3[1]
//			dw_solicitud_pagos.object.monto_anio5[1] =  dw_solicitud_pagos.object.monto_anio2[1] - dw_solicitud_pagos.object.monto_anio4[1]			
//		end if
	case '09'   /* Gastos Funerarios */
		gb_tramite.text = 'Gastos Funerarios'
		ldc_prestacion = 2000.00
		ls_subtipo_tramite = f_db_get_solicitud_subtipo_tramite(cui)
		/* 0 = ninguno, 1 = S. V. y G. F., 2 = S. V., 3 = G. F. */
		pb_tiempo_servicio.visible = true
		pb_anios_pago.visible = false
		pb_pension.visible = true
		pb_calculos.visible = true
		dw_beneficiarios.visible = true
		pb_3.visible = false


		
		
		dw_solicitud_pagos.DataObject = "d_analisis_mnt_det_pagos_sol_pm_ma"
				dw_solicitud_pagos.x= 32
		dw_solicitud_pagos.Height = 2184
		dw_solicitud_pagos.SetTransObject(sqlca)
		dw_solicitud_pagos.enabled = true
		ll_rows = dw_solicitud_pagos.retrieve(cui,ls_subtipo_tramite)
		
		if ll_rows = 0 then
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui)
			ll_row = dw_solicitud_pagos.InsertRow(0)
			dw_solicitud_pagos.ScrollToRow(ll_row)
			dw_solicitud_pagos.SetFocus()
		
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_no_solicitud[ll_row] = il_solicitud
			dw_solicitud_pagos.object.solicitud_prestacion_muerte_dpi[ll_row] = cui

		else
			/***/
			ll_rows2 = dw_anios_pago.retrieve(il_solicitud,cui) 
			dw_beneficiarios.DataObject = "d_analisis_mnt_det_pag_sol_pmgfap_ben"
			dw_beneficiarios.SetTransObject(sqlca)
			dw_beneficiarios.retrieve(cui)
		end if
		
end choose



ii_etapa_actual = f_db_get_etapa_actual (cui,il_solicitud)
ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
// sle_etapa_actual.text = string(ii_etapa_actual) + ' ' + ls_descripcion
commit;

//dw_cambio_etapa.retrieve(ii_etapa_actual)

//dw_solicitudes.SetFocus()
//
////f_db_get_contribuyente()
//
////f_db_get_solicitud()
//

//ll_rows_detalle = dw_detalle_requisitos.retrieve(cui)
//
//if ll_rows_detalle > 0  then
//	ib_hay_detalle = true
//else
//	ib_hay_detalle = false
//end if




end event

type st_1 from statictext within w_analisis_mnt_calculo_montos
integer x = 32
integer y = 36
integer width = 178
integer height = 72
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "DPI:"
alignment alignment = right!
boolean focusrectangle = false
end type

type gb_tramite from groupbox within w_analisis_mnt_calculo_montos
integer x = 1797
integer y = 16
integer width = 955
integer height = 196
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Vejez"
end type

