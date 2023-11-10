$PBExportHeader$w_analisis_mnt_cambio_etapas.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_cambio_etapas from window
end type
type dw_detalle_requisitos from datawindow within w_analisis_mnt_cambio_etapas
end type
type pb_salir from picturebutton within w_analisis_mnt_cambio_etapas
end type
type pb_grabar from picturebutton within w_analisis_mnt_cambio_etapas
end type
type dw_etapas_solicitudes from datawindow within w_analisis_mnt_cambio_etapas
end type
type dw_cambio_etapa from datawindow within w_analisis_mnt_cambio_etapas
end type
type dw_solicitud_contribuyente from datawindow within w_analisis_mnt_cambio_etapas
end type
type sle_buscar from singlelineedit within w_analisis_mnt_cambio_etapas
end type
type pb_buscar from picturebutton within w_analisis_mnt_cambio_etapas
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_cambio_etapas
end type
type st_1 from statictext within w_analisis_mnt_cambio_etapas
end type
end forward

global type w_analisis_mnt_cambio_etapas from window
integer x = 1550
integer y = 120
integer width = 3794
integer height = 3968
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
dw_detalle_requisitos dw_detalle_requisitos
pb_salir pb_salir
pb_grabar pb_grabar
dw_etapas_solicitudes dw_etapas_solicitudes
dw_cambio_etapa dw_cambio_etapa
dw_solicitud_contribuyente dw_solicitud_contribuyente
sle_buscar sle_buscar
pb_buscar pb_buscar
pb_buscar1 pb_buscar1
st_1 st_1
end type
global w_analisis_mnt_cambio_etapas w_analisis_mnt_cambio_etapas

type variables
String is_dpi, is_etapa_desc, is_tramite
Integer ii_etapa_actual, ii_etapa_nueva
Long il_solicitud
end variables

on w_analisis_mnt_cambio_etapas.create
this.dw_detalle_requisitos=create dw_detalle_requisitos
this.pb_salir=create pb_salir
this.pb_grabar=create pb_grabar
this.dw_etapas_solicitudes=create dw_etapas_solicitudes
this.dw_cambio_etapa=create dw_cambio_etapa
this.dw_solicitud_contribuyente=create dw_solicitud_contribuyente
this.sle_buscar=create sle_buscar
this.pb_buscar=create pb_buscar
this.pb_buscar1=create pb_buscar1
this.st_1=create st_1
this.Control[]={this.dw_detalle_requisitos,&
this.pb_salir,&
this.pb_grabar,&
this.dw_etapas_solicitudes,&
this.dw_cambio_etapa,&
this.dw_solicitud_contribuyente,&
this.sle_buscar,&
this.pb_buscar,&
this.pb_buscar1,&
this.st_1}
end on

on w_analisis_mnt_cambio_etapas.destroy
destroy(this.dw_detalle_requisitos)
destroy(this.pb_salir)
destroy(this.pb_grabar)
destroy(this.dw_etapas_solicitudes)
destroy(this.dw_cambio_etapa)
destroy(this.dw_solicitud_contribuyente)
destroy(this.sle_buscar)
destroy(this.pb_buscar)
destroy(this.pb_buscar1)
destroy(this.st_1)
end on

event open;pb_buscar.backcolor = rgb(59,140,188)
pb_buscar.TEXTcolor =  rgb(255,255,255)

pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.TEXTcolor =  rgb(255,255,255)

pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)

end event

type dw_detalle_requisitos from datawindow within w_analisis_mnt_cambio_etapas
boolean visible = false
integer x = 215
integer y = 3064
integer width = 2967
integer height = 752
integer taborder = 40
string title = "none"
string dataobject = "d_analisis_mnt_det_requisitos_solicitudes2"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

type pb_salir from picturebutton within w_analisis_mnt_cambio_etapas
integer x = 3259
integer y = 1348
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

event clicked;Close(w_analisis_mnt_cambio_etapas)
end event

type pb_grabar from picturebutton within w_analisis_mnt_cambio_etapas
boolean visible = false
integer x = 3259
integer y = 1228
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

event clicked;Long ll_rows, ll_rows_detalle
String ls_descripcion, ls_nomextr, ls_resolucion
Integer li_nomextr_abierta, li_añoslab, li_meseslab, li_diaslab, li_tipo_pensionado
Decimal ldc_pension, ldc_primer_pago

IF dw_etapas_solicitudes.Update() = 1 THEN	
	COMMIT using SQLCA;	
	this.visible=false 
	MessageBox("Grabar","El registro se grabó con éxito")
	//MessageBox("is_dpi",is_dpi)
	//MessageBox("il_solicitud",il_solicitud)
	//MessageBox("ii_etapa_nueva",ii_etapa_nueva)
	f_db_upd_etapa_solicitud(is_dpi,il_solicitud,ii_etapa_nueva)
	
	If (is_tramite = '01' or is_tramite = '02') and ii_etapa_nueva = 180 then
		li_nomextr_abierta = f_db_get_nomina_extraordinaria(ls_nomextr)
		If li_nomextr_abierta = 0 Then
			f_db_ins_nomina_extraordinaria()
		End If			
		
		f_db_get_tiempo_servicio(is_dpi,il_solicitud,li_añoslab, li_meseslab, li_diaslab)
		ls_resolucion = f_db_get_resolucion(is_dpi,il_solicitud)
		if is_tramite = '01' then
			li_tipo_pensionado = 1
		else
			li_tipo_pensionado = 2
		end if
		ldc_pension = f_db_get_pension_inicial(is_dpi)
		ldc_primer_pago = f_db_get_monto_primer_pago(is_dpi)
		
		 f_db_ins_nom_extr_det(ls_nomextr,li_tipo_pensionado,ls_resolucion,is_dpi,'',li_añoslab, li_meseslab, li_diaslab,ldc_primer_pago,ldc_pension)
	End If
	
	// si es tramite de mj y la etapa nueva es 180
	// primero ver si hay nomina mj abierta
	// si no hay crearla, si hay tomar los datos necesarios
	// crear el registro en el detalle de la mj
	
//	pb_grabar_detalle_icon.enabled = true
//	pb_grabar_detalle.enabled = true
	//dw_detalle_requisitos.enabled = true
	
	/* reset dw's */
	dw_solicitud_contribuyente.reset()
	dw_etapas_solicitudes.reset()
	dw_cambio_etapa.reset()
	
	/* reload data */
	ll_rows = dw_solicitud_contribuyente.retrieve(is_dpi)
	ii_etapa_actual = f_db_get_etapa_actual (is_dpi,il_solicitud)
	ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
	dw_cambio_etapa.retrieve(ii_etapa_actual)
	Commit;
ELSE	
	ROLLBACK using SQLCA;
END IF

IF dw_detalle_requisitos.Update() = 1 then
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro en detalle requisitos se grabó con éxito")
	this.visible=false 
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type dw_etapas_solicitudes from datawindow within w_analisis_mnt_cambio_etapas
integer x = 695
integer y = 608
integer width = 1723
integer height = 344
integer taborder = 30
string title = "none"
string dataobject = "d_analisis_mnt_det_etapas_solicitudes_new"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)

end event

type dw_cambio_etapa from datawindow within w_analisis_mnt_cambio_etapas
integer x = 329
integer y = 960
integer width = 2702
integer height = 2072
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_mnt_cambio_etapas"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
borderstyle borderstyle = styleshadowbox!
end type

event clicked;Integer     li_etapa_cambio, li_estado
Long         ll_row
Boolean     lb_aceptado

If dwo.name  =  "b_cambio" Then
	li_etapa_cambio   =   This.Object.idEtapa[row]
	choose case ii_etapa_actual
		case 10       /* Recepcion solicitud */
			if  gi_unidad = 7 or  gi_unidad = 8 or  gi_unidad = 9 then 
				If li_etapa_cambio = 20 or li_etapa_cambio = 300 Then
					/* cambio aceptado */
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 20 o 300',StopSign!)
					lb_aceptado = False
				End If
			else
				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
			End If
		case 20 /* Documentos Requisitos Completados */
			if  gi_unidad = 7 or  gi_unidad = 8 or  gi_unidad = 9 then
				If li_etapa_cambio = 30 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 30 o 300',StopSign!)
					lb_aceptado = False
				End If			
			else
				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
			End if
		case 30 /* Dar Ingreso al Expediente */
			if  gi_unidad = 7 or  gi_unidad = 8 or  gi_unidad = 9 then 
				If li_etapa_cambio = 40 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 40 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
					Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)				
			end if
		case 40 /* Asignación de Expediente */
			if  gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 
				If li_etapa_cambio = 50 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)				
			End if
		case 50 /* Proceso de Cálculo */
			if gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 
				If li_etapa_cambio = 55 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 55 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
			end if
		case 55 /* Control de Calidad */
			if  gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 
				If li_etapa_cambio = 57 or li_etapa_cambio = 60 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 60 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
			end if
		case 57           /* Rechazo por Control de Calidad */
			If  gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 
				If (li_etapa_cambio = 55 ) or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa entre 10 a 55 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion", "Unidad de Analisis es la única que puede cambiar estas etapas",Information!)
			End if 
		case 60                              /* Enviado a Auditoría Interna */
			if gi_unidad = 5 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 			
				If li_etapa_cambio = 65 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 65',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion", "Auditoria Interna es la unidad autorizada para estas etapas",Information!)
			End if 	
		case 65 /* Recepción Auditoría */
			if gi_unidad = 5 or  gi_unidad = 9 then 
				If li_etapa_cambio = 70 or li_etapa_cambio = 80 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 70 o 80',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion" ,"Auditoria Interna es la unidad autorizada para este cambio de etapa",Information!)
			end if
		case 70           /* Recibido de Auditoría Interna sin Vo. Bo. */
			If gi_unidad = 5 or gi_unidad = 7 or  gi_unidad = 8  or gi_unidad = 9 then 
				If (li_etapa_cambio = 50 ) or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa entre 10 a 60 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion", "Unidad de Analisis es la única que puede cambiar estas etapas",Information!)
			End if 
		case 80        /* Recibido de Auditoría Interna con Dictamen */
			if gi_unidad = 5 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then 
				If li_etapa_cambio = 90 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 90 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion", "Unidad de Analisis es la unidad autorizada para estas etapas",Information!)
			End if
		case 90 /* Enviado a Jurídico */
			if gi_unidad = 6 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 95 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 95',StopSign!)
					lb_aceptado = False
				End If
			else
				Messagebox("Atencion", "Juridico es la unidad que puede cambiar estas etapas",Information!)
			end if 
		case 95 /* Recepción Jurídico */
			if gi_unidad = 6  or  gi_unidad = 9 then 
				If li_etapa_cambio = 100 or li_etapa_cambio = 110 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 100 o 110',StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox("Atencion" ,"Juridico es la unidad autorizada para este cambio de etapa",Information!)
			end if
		case 100       /* Recibido de Jurídico sin Vo. Bo. */
			if  gi_unidad = 6 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9  then
				If (li_etapa_cambio = 50) or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
					lb_aceptado = False
				End If
			else
				Messagebox("Atencion", "Analisis es la unidad que puede cambiar estas etapas",Information!)
			end if
		case 110           /* Recibido de Jurídico con Dictamen */  
			if gi_unidad = 6 or gi_unidad = 7 or  gi_unidad = 8 or  gi_unidad = 9 then 
					If li_etapa_cambio = 120 or li_etapa_cambio = 300 Then
						lb_aceptado = True
					Else
						messagebox('Error','Debe escoger etapa 120 o 300',StopSign!)
						lb_aceptado = False
					End If
				else
					Messagebox("Atención", "Direccion  de Clases Pasivas son los encargados de cambiar esta etapa",Information!)
   			end if
		case 120 /* Enviado a Gerencia */
			If gi_unidad = 1  or  gi_unidad = 9 then
				If li_etapa_cambio = 130 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 130' ,StopSign!)
					lb_aceptado = False
				End If
			Else
				Messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 
		case 130 /* Enviado a Junta Directiva */   // Regresa aceptado 140 o rechazado 150
			If gi_unidad = 1  or gi_unidad = 11  or gi_unidad = 9 then
				If li_etapa_cambio = 140 or li_etapa_cambio = 150 Then
					lb_aceptado = True
				Else
					Messagebox('Error','Debe escoger etapa 140 o 150',StopSign!)
					lb_aceptado  =  False
				End If
			Else
					Messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 
		case 140    /* Recibido de Junta Directiva con Resolución */
			If gi_unidad = 1  or  gi_unidad = 9 then
				If li_etapa_cambio = 160   Then
						lb_aceptado = True
				Else
						messagebox('Error','Debe escoger etapa 160',StopSign!)
						lb_aceptado = False
				End If
			Else
				Messagebox('Error','Gerencia es la undiad autorizada para este cambio de etapa',StopSign!)
			end if 	
		case 150 			/* Recibido de Junta Directiva con Rechazo. */
			If gi_unidad = 1 or  gi_unidad = 9 then
				If li_etapa_cambio = 170  Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 170 ',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 	
		case 160 /* Enviado a Análisis para providencias. */
			If gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9  then
				If li_etapa_cambio = 165 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 180 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Análisis es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 
		case 165 /* Notificacion. */
			If gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 170 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 180 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Análisis es la unidad autorizada para este cambio de etapa',StopSign!)
			end if
		case 170          /* Elaboracion Planillas. */
			If  gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 175 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Análisis es la unidad autorizada para colocar esta etapa y revisión de proceso',StopSign!)
			end if
		case 175          /* Enviado a Análisis para correcciones. */
			If  gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 180 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Análisis es la unidad autorizada para colocar esta etapa y revisión de proceso',StopSign!)
			end if 		
		case 180 /* Revisión en Analisis y Enviado a Financiero. */
			If gi_unidad = 4 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 185 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 185 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 		
		case 185 /* Recepción en Financiero. */
			If gi_unidad = 4 or gi_unidad = 7 or  gi_unidad = 8  or  gi_unidad = 9 then
				If li_etapa_cambio = 190 or li_etapa_cambio = 200 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 190 o 200',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 		
		case 190 /* Rechazado por Financiero. */
			If gi_unidad = 7 or  gi_unidad = 8  or gi_unidad = 4 or  gi_unidad = 9 then
				If li_etapa_cambio = 50 or li_etapa_cambio = 300 Then
					lb_aceptado = True
				Else
					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
					lb_aceptado = False
				End If
			Else
				messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
			end if 		
		case 200 /* Recibido de Financiero. */
			If is_tramite <> '03' Then
				If gi_unidad = 7 or  gi_unidad = 8  or gi_unidad = 4 then
					If li_etapa_cambio = 210 or li_etapa_cambio = 300 Then
						lb_aceptado = True
					Else
						messagebox('Error','Debe escoger etapa 210 o 300',StopSign!)
						lb_aceptado = False
					End If
				Else
					messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
				end if
			Else
				If gi_unidad = 7 or  gi_unidad = 8  or gi_unidad = 4 then
					If li_etapa_cambio = 220 or li_etapa_cambio = 300 Then
						lb_aceptado = True
					Else
						messagebox('Error','Debe escoger etapa 220 o 300',StopSign!)
						lb_aceptado = False
					End If
				Else
					messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
				end if
			End If
		case 210 /* Enviado a Archivo. */
			messagebox('Error','Expediente con ciclo terminado, ya no se pueden cambiar etapas.',StopSign!)
		case 220 /* CV Finalizó de Contribuir al PPEM. */
			messagebox('Error','Expediente con ciclo terminado, ya no se pueden cambiar etapas.',StopSign!)
	end choose
	If lb_aceptado = True Then
		pb_grabar.visible=true
		If f_db_get_existe_etapa_nueva(is_dpi,il_solicitud,li_etapa_cambio) > 0 then
			/* codigo para actualizar */
			ll_row          =   dw_etapas_solicitudes.retrieve(il_solicitud,li_etapa_cambio)
			dw_etapas_solicitudes.SetFocus()

			dw_etapas_solicitudes.object.No_Solicitud[ll_row]     =     il_solicitud
			dw_etapas_solicitudes.object.dpi[ll_row]                   =    is_dpi
			dw_etapas_solicitudes.object.etapa[ll_row]               =    li_etapa_cambio
			dw_etapas_solicitudes.object.fecha[ll_row]               =    f_db_get_fecha()
			dw_etapas_solicitudes.object.usuario[ll_row]            =    gs_userid
			dw_etapas_solicitudes.object.fecha_sys[ll_row]         =   f_db_get_fecha()
		else
			ll_row          =   dw_etapas_solicitudes.InsertRow(0)
			dw_etapas_solicitudes.ScrollToRow(ll_row)
			dw_etapas_solicitudes.SetFocus()

			dw_etapas_solicitudes.object.No_Solicitud[ll_row]     =     il_solicitud
			dw_etapas_solicitudes.object.dpi[ll_row]                   =    is_dpi
			dw_etapas_solicitudes.object.etapa[ll_row]               =    li_etapa_cambio
			dw_etapas_solicitudes.object.fecha[ll_row]               =    f_db_get_fecha()
			dw_etapas_solicitudes.object.usuario[ll_row]            =    gs_userid
			dw_etapas_solicitudes.object.fecha_sys[ll_row]         =   f_db_get_fecha()
		end if
		ii_etapa_nueva    =      li_etapa_cambio
		if ii_etapa_nueva = 120 then
			choose case is_tramite
				case '01'
					li_estado = 2
				case '02'
					li_estado = 3
				case '03'
					li_estado = 4
				case '04'
					li_estado = 5
				case '05'
					li_estado = 5
				case '06'
					li_estado = 5
				case '07'
					li_estado = 5
				case '08'
					li_estado = 5
				case '09'
					li_estado = 5
			end choose
			f_db_upd_estado_contribuyente(is_dpi,li_estado)
		end if
	End If
End If
end event

event constructor;This.SetTransObject(SQLCA)
end event

event doubleclicked;//Integer     li_etapa_cambio, li_estado
//Long         ll_row
//Boolean     lb_aceptado
//
//If dwo.name  =  "b_cambio" Then
//	li_etapa_cambio   =   This.Object.idEtapa[row]
//	choose case ii_etapa_actual
//		case 10       /* Recepcion solicitud */
//			if gi_unidad = 7 then 
//				If li_etapa_cambio = 20 or li_etapa_cambio = 300 Then
//					/* cambio aceptado */
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 20 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			else
//				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
//			End If
//		case 20 /* Documentos Requisitos Completados */
//			if gi_unidad = 7 then
//				If li_etapa_cambio = 30 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 30 o 300',StopSign!)
//					lb_aceptado = False
//				End If			
//			End if
//		case 30 /* Dar Ingreso al Expediente */
//			if gi_unidad = 7 then 
//				If li_etapa_cambio = 40 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 40 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//					Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)				
//			end if
//		case 40 /* Asignación de Expediente */
//			if gi_unidad = 7 then 
//				If li_etapa_cambio = 50 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)				
//			End if
//		case 50 /* Proceso de Cálculo */
//			if gi_unidad = 7 then 
//				If li_etapa_cambio = 60 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 60 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox("Atencion" ,"Analisis es la unidad autorizada para este cambio de etapa",Information!)
//			end if
//		case 60                              /* Enviado a Auditoría Interna */
//			if gi_unidad = 5 then 			
//				If li_etapa_cambio = 70 or li_etapa_cambio = 80  Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 70 o 80',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox("Atencion", "Auditoria Interna es la unidad autorizada para estas etapas",Information!)
//			End if 		
//		case 70           /* Recibido de Auditoría Interna sin Vo. Bo. */
//			If gi_unidad = 7 then 
//				If (li_etapa_cambio = 50 ) or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa entre 10 a 60 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox("Atencion", "Unidad de Analisis es la única que puede cambiar estas etapas",Information!)
//			End if 
//		case 80        /* Recibido de Auditoría Interna con Dictamen */
//			if gi_unidad = 7 then 
//				If li_etapa_cambio = 90 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 90 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox("Atencion", "Unidad de Analisis es la unidad autorizada para estas etapas",Information!)
//			End if
//		case 90 /* Enviado a Jurídico */
//			if gi_unidad    =    6 then
//				If li_etapa_cambio = 100 or li_etapa_cambio = 110  Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 100 o 110',StopSign!)
//					lb_aceptado = False
//				End If
//			else
//				Messagebox("Atencion", "Juridico es la unidad que puede cambiar estas etapas",Information!)
//			end if 
//		case 100       /* Recibido de Jurídico sin Vo. Bo. */
//			if gi_unidad = 7 then
//				If (li_etapa_cambio = 50) or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			else
//				Messagebox("Atencion", "Analisis es la unidad que puede cambiar estas etapas",Information!)
//			end if
//		case 110           /* Recibido de Jurídico con Dictamen */
//			if gi_unidad = 7 and (UPPER(gs_userid) ='ARIVAS' or UPPER(gs_userid) ='GBUCHAN') then 
//				If li_etapa_cambio = 120 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 120 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			else
//				Messagebox("Atencion", "Jefe de Unidad de Analisis es el encargado de cambiar esta etapa",Information!)
//			end if
//		case 120 /* Enviado a Gerencia */
//			If gi_unidad = 1 then
//				If li_etapa_cambio = 130 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 130' ,StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				Messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 
//		case 130 /* Enviado a Junta Directiva */   // Regresa aceptado 140 o rechazado 150
//			If gi_unidad = 1 then
//				If li_etapa_cambio = 140 or li_etapa_cambio = 150 Then
//					lb_aceptado = True
//				Else
//					Messagebox('Error','Debe escoger etapa 140 o 150',StopSign!)
//					lb_aceptado  =  False
//				End If
//			Else
//					Messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 
//		case 140    /* Recibido de Junta Directiva con Resolución */
//			If gi_unidad = 1 then
//				If li_etapa_cambio = 160   Then
//						lb_aceptado = True
//				Else
//						messagebox('Error','Debe escoger etapa 160',StopSign!)
//						lb_aceptado = False
//				End If
//			Else
//				Messagebox('Error','Gerencia es la undiad autorizada para este cambio de etapa',StopSign!)
//			end if 	
//		case 150 			/* Recibido de Junta Directiva con Rechazo. */
//			If gi_unidad = 1 then
//				If li_etapa_cambio = 170  Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 170 ',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Gerencia es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 	
//		case 160 /* Enviado a Análisis para providencias. */
//			If gi_unidad = 7 then
//				If li_etapa_cambio = 180 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 180 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Análisis es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 	
//		case 170          /* Enviado a Análisis para correcciones. */
//			If gi_unidad = 7 then
//				If li_etapa_cambio = 50 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Análisis es la unidad autorizada para colocar esta etapa y revisión de proceso',StopSign!)
//			end if 		
//		case 180 /* Enviado a Financiero. */
//			If gi_unidad = 4 then
//				If li_etapa_cambio = 190 or li_etapa_cambio = 200 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 190 o 200',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Financiero es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 		
//		case 190 /* Rechazado por Financiero. */
//			If gi_unidad = 7 then
//				If li_etapa_cambio = 50 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 50 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Analisis es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 		
//		case 200 /* Recibido de Financiero. */
//			If gi_unidad = 7 then
//				If li_etapa_cambio = 210 or li_etapa_cambio = 300 Then
//					lb_aceptado = True
//				Else
//					messagebox('Error','Debe escoger etapa 210 o 300',StopSign!)
//					lb_aceptado = False
//				End If
//			Else
//				messagebox('Error','Análisis es la unidad autorizada para este cambio de etapa',StopSign!)
//			end if 		
//		case 210 /* Enviado a Archivo. */
//			messagebox('Error','Expediente con ciclo terminado, ya no se pueden cambiar etapas.',StopSign!)
//	end choose
//	If lb_aceptado = True Then
//		ll_row          =   dw_etapas_solicitudes.InsertRow(0)
//		dw_etapas_solicitudes.ScrollToRow(ll_row)
//		dw_etapas_solicitudes.SetFocus()
//
//		dw_etapas_solicitudes.object.No_Solicitud[ll_row]     =     il_solicitud
//		dw_etapas_solicitudes.object.dpi[ll_row]                   =    is_dpi
//		dw_etapas_solicitudes.object.etapa[ll_row]               =    li_etapa_cambio
//		dw_etapas_solicitudes.object.fecha[ll_row]               =    f_db_get_fecha()
//		dw_etapas_solicitudes.object.usuario[ll_row]            =    gs_userid
//		dw_etapas_solicitudes.object.fecha_sys[ll_row]         =   f_db_get_fecha()
//		ii_etapa_nueva    =      li_etapa_cambio
//		if ii_etapa_nueva = 120 then
//			choose case is_tramite
//				case '01'
//					li_estado = 2
//				case '02'
//					li_estado = 3
//				case '03'
//					li_estado = 4
//				case '04'
//					li_estado = 5
//				case '05'
//					li_estado = 5
//				case '06'
//					li_estado = 5
//				case '07'
//					li_estado = 5
//				case '08'
//					li_estado = 5
//				case '09'
//					li_estado = 5
//			end choose
//			f_db_upd_estado_contribuyente(is_dpi,li_estado)
//		end if
//	End If
//End If
end event

type dw_solicitud_contribuyente from datawindow within w_analisis_mnt_cambio_etapas
integer x = 37
integer y = 160
integer width = 3520
integer height = 436
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_con_solicitudes_contribuyentes_new"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)

end event

type sle_buscar from singlelineedit within w_analisis_mnt_cambio_etapas
integer x = 347
integer y = 36
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

type pb_buscar from picturebutton within w_analisis_mnt_cambio_etapas
integer x = 1559
integer y = 32
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows, ll_rows_requisitos
String ls_descripcion, cui
Integer li_row, li_etapa_ini_lista
cui = buscardpi(is_dpi)
ll_rows     =       dw_solicitud_contribuyente.retrieve(cui)
if ll_rows > 0 then
	ii_etapa_actual = f_db_get_etapa_actual (cui,il_solicitud)
	is_tramite = f_db_get_tramite(cui,il_solicitud)
	ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
	// sle_etapa_actual.text = string(ii_etapa_actual) + ' ' + ls_descripcion

	If ii_etapa_actual = 10 then
		dw_detalle_requisitos.visible = true
		ll_rows_requisitos = dw_detalle_requisitos.retrieve(cui)
		for li_row=1 to dw_detalle_requisitos.rowcount()
			if dw_detalle_requisitos.object.recibido[li_row]='0' then
				dw_detalle_requisitos.object.recibido[li_row] = '1'
			end if
		next
	else 
		dw_detalle_requisitos.visible = false
	end if
	choose case ii_etapa_actual
		case 57 /*Rechazo por Control de Calidad*/
			li_etapa_ini_lista = 40
		case 70 /*Rechazado por Auditoria Interna*/
			li_etapa_ini_lista = 40
		case 100 /*Recibido de Jurídico sin Vo. Bo.*/
			li_etapa_ini_lista = 40
		case 150 /*Recibido de Junta Directiva con Rechazo.*/
			li_etapa_ini_lista = 160
		case 170 /*Enviado a Análisis para correcciones.*/
			li_etapa_ini_lista = 40
		case 190 /*Rechazado por Financiero*/
			li_etapa_ini_lista = 40
		case else
			li_etapa_ini_lista = ii_etapa_actual
	end choose

	dw_cambio_etapa.retrieve(li_etapa_ini_lista)

	Commit;

	//dw_solicitudes.SetFocus()
	//
	////f_db_get_contribuyente()
	//
	////f_db_get_solicitud()
	//

	//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
	//
	//if ll_rows_detalle > 0  then
	//	ib_hay_detalle = true
	//else
	//	ib_hay_detalle = false
	//end if
else
	messagebox('Error','no se encuentra una solicitud activa para este DPI')
End if



end event

type pb_buscar1 from picturebutton within w_analisis_mnt_cambio_etapas
integer x = 1467
integer y = 32
integer width = 110
integer height = 96
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
long backcolor = 0
end type

event clicked;Long ll_rows, ll_rows_requisitos
String ls_descripcion
Integer li_row

ll_rows = dw_solicitud_contribuyente.retrieve(is_dpi)
if ll_rows > 0 then
	ii_etapa_actual = f_db_get_etapa_actual (is_dpi,il_solicitud)
	ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
	// sle_etapa_actual.text = string(ii_etapa_actual) + ' ' + ls_descripcion

	If ii_etapa_actual = 10 then
		dw_detalle_requisitos.visible = true
		ll_rows_requisitos = dw_detalle_requisitos.retrieve(is_dpi)
		for li_row=1 to dw_detalle_requisitos.rowcount()
			if dw_detalle_requisitos.object.recibido[li_row]='0' then
				dw_detalle_requisitos.object.recibido[li_row] = '1'
			end if
		next
	else 
		dw_detalle_requisitos.visible = false
	end if

	dw_cambio_etapa.retrieve(ii_etapa_actual)

	Commit;

	//dw_solicitudes.SetFocus()
	//
	////f_db_get_contribuyente()
	//
	////f_db_get_solicitud()
	//

	//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
	//
	//if ll_rows_detalle > 0  then
	//	ib_hay_detalle = true
	//else
	//	ib_hay_detalle = false
	//end if
else
	messagebox('Error','no se encuentra una solicitud activa para este DPI')
End if



end event

type st_1 from statictext within w_analisis_mnt_cambio_etapas
integer x = 55
integer y = 52
integer width = 178
integer height = 72
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 32895212
string text = "DPI:"
alignment alignment = right!
boolean focusrectangle = false
end type

