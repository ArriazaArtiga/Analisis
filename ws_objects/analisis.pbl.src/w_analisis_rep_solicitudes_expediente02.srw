$PBExportHeader$w_analisis_rep_solicitudes_expediente02.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solicitudes_expediente02 from window
end type
type pb_1 from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type dw_1 from datawindow within w_analisis_rep_solicitudes_expediente02
end type
type rb_2 from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_1 from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type cbx_historico from checkbox within w_analisis_rep_solicitudes_expediente02
end type
type rb_providencia_activacion from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_providencia_conta from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_providencia_teso from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_resolucion from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_recibo_1er_pago from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_recibo_calculo from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_aux_post from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_liquidacion from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_resumen_expediente from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_dictamen_auditoria from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_providencia_jd from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_providencia from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_anios_pago from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_documentos from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type st_1 from statictext within w_analisis_rep_solicitudes_expediente02
end type
type pb_buscar1 from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_buscar from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type sle_buscar from singlelineedit within w_analisis_rep_solicitudes_expediente02
end type
type rb_dictamen_juridico from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type rb_vejez_calculo from radiobutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_grabar from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_2 from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type pb_3 from picturebutton within w_analisis_rep_solicitudes_expediente02
end type
type dw_report from datawindow within w_analisis_rep_solicitudes_expediente02
end type
type gb_acciones from groupbox within w_analisis_rep_solicitudes_expediente02
end type
type gb_doctos from groupbox within w_analisis_rep_solicitudes_expediente02
end type
end forward

global type w_analisis_rep_solicitudes_expediente02 from window
integer x = 1550
integer y = 120
integer width = 4658
integer height = 2712
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
dw_1 dw_1
rb_2 rb_2
rb_1 rb_1
cbx_historico cbx_historico
rb_providencia_activacion rb_providencia_activacion
rb_providencia_conta rb_providencia_conta
rb_providencia_teso rb_providencia_teso
rb_resolucion rb_resolucion
rb_recibo_1er_pago rb_recibo_1er_pago
rb_recibo_calculo rb_recibo_calculo
rb_aux_post rb_aux_post
rb_liquidacion rb_liquidacion
rb_resumen_expediente rb_resumen_expediente
rb_dictamen_auditoria rb_dictamen_auditoria
rb_providencia_jd rb_providencia_jd
rb_providencia rb_providencia
pb_anios_pago pb_anios_pago
pb_documentos pb_documentos
st_1 st_1
pb_buscar1 pb_buscar1
pb_buscar pb_buscar
sle_buscar sle_buscar
rb_dictamen_juridico rb_dictamen_juridico
rb_vejez_calculo rb_vejez_calculo
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_doctos gb_doctos
end type
global w_analisis_rep_solicitudes_expediente02 w_analisis_rep_solicitudes_expediente02

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Long il_solicitud
String is_dpi, is_tramite, is_subtipo_cv, is_auxpost
Integer ii_depto, ii_muni, ii_historico
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solicitudes_expediente02.create
this.pb_1=create pb_1
this.dw_1=create dw_1
this.rb_2=create rb_2
this.rb_1=create rb_1
this.cbx_historico=create cbx_historico
this.rb_providencia_activacion=create rb_providencia_activacion
this.rb_providencia_conta=create rb_providencia_conta
this.rb_providencia_teso=create rb_providencia_teso
this.rb_resolucion=create rb_resolucion
this.rb_recibo_1er_pago=create rb_recibo_1er_pago
this.rb_recibo_calculo=create rb_recibo_calculo
this.rb_aux_post=create rb_aux_post
this.rb_liquidacion=create rb_liquidacion
this.rb_resumen_expediente=create rb_resumen_expediente
this.rb_dictamen_auditoria=create rb_dictamen_auditoria
this.rb_providencia_jd=create rb_providencia_jd
this.rb_providencia=create rb_providencia
this.pb_anios_pago=create pb_anios_pago
this.pb_documentos=create pb_documentos
this.st_1=create st_1
this.pb_buscar1=create pb_buscar1
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.rb_dictamen_juridico=create rb_dictamen_juridico
this.rb_vejez_calculo=create rb_vejez_calculo
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_doctos=create gb_doctos
this.Control[]={this.pb_1,&
this.dw_1,&
this.rb_2,&
this.rb_1,&
this.cbx_historico,&
this.rb_providencia_activacion,&
this.rb_providencia_conta,&
this.rb_providencia_teso,&
this.rb_resolucion,&
this.rb_recibo_1er_pago,&
this.rb_recibo_calculo,&
this.rb_aux_post,&
this.rb_liquidacion,&
this.rb_resumen_expediente,&
this.rb_dictamen_auditoria,&
this.rb_providencia_jd,&
this.rb_providencia,&
this.pb_anios_pago,&
this.pb_documentos,&
this.st_1,&
this.pb_buscar1,&
this.pb_buscar,&
this.sle_buscar,&
this.rb_dictamen_juridico,&
this.rb_vejez_calculo,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_doctos}
end on

on w_analisis_rep_solicitudes_expediente02.destroy
destroy(this.pb_1)
destroy(this.dw_1)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.cbx_historico)
destroy(this.rb_providencia_activacion)
destroy(this.rb_providencia_conta)
destroy(this.rb_providencia_teso)
destroy(this.rb_resolucion)
destroy(this.rb_recibo_1er_pago)
destroy(this.rb_recibo_calculo)
destroy(this.rb_aux_post)
destroy(this.rb_liquidacion)
destroy(this.rb_resumen_expediente)
destroy(this.rb_dictamen_auditoria)
destroy(this.rb_providencia_jd)
destroy(this.rb_providencia)
destroy(this.pb_anios_pago)
destroy(this.pb_documentos)
destroy(this.st_1)
destroy(this.pb_buscar1)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.rb_dictamen_juridico)
destroy(this.rb_vejez_calculo)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_doctos)
end on

event open;Long ll_row
//iuo_Parm = Message.PowerObjectParm
//
//If Not IsValid(iuo_Parm) Then
//	Beep(1)
//
//Else
//f_db_get_dias_pago('1934001890105')
	dw_report.SetTransObject(sqlca)
	dw_1.SetTransObject(sqlca)
	dw_1.visible = false
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	/*dw_report.Modify("datawindow.print.preview.zoom = " + String(ii_CurrentZoom))*/
//	This.title = "Detail Report For " + trim(iuo_parm.is_Title) + " Example (Zoom: " + String(ii_CurrentZoom) + "%)"
//	Post Event ue_postopen()
	SetPointer(hourglass!)
//	dw_report.retrieve()
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
	cbx_historico.visible = false
	sle_buscar.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type pb_1 from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 2926
integer y = 444
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "generar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 29397330
end type

event clicked;integer id
string cui , ls_tramite, reporte
cui = buscardpi(is_dpi)
ls_tramite = f_db_get_solicitud_tramite(cui)
	id = dw_1.getitemnumber( dw_1.getrow(),2 )
	reporte = f_linkmenu_reportesexp(id,ls_tramite, 1)
	dw_report.DataObject = reporte
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
end event

type dw_1 from datawindow within w_analisis_rep_solicitudes_expediente02
integer x = 55
integer y = 232
integer width = 2089
integer height = 344
integer taborder = 60
string title = "none"
string dataobject = "dwg_menu_expedientes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type rb_2 from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 1408
integer y = 416
integer width = 503
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia 2"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_providencia_gerencia_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_prov_gerencia"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_prov_gerencia"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_prov_gerencia"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_prov_gerencia"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_prov_gerencia"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_prov_gerencia"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_1 from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 96
integer y = 244
integer width = 366
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Contenido"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '08'  /* aux postumo */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_contenido_expedientes01"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type cbx_historico from checkbox within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 3351
integer y = 76
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Histórico"
end type

event clicked;if cbx_historico.checked = true then
	ii_historico = 1
	/* inhabilitar botones de doctos, años pago e impresión */
else 
	ii_historico = 0
	/* habilitar botones de doctos, años pago e impresión */
end if
end event

type rb_providencia_activacion from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 96
integer y = 408
integer width = 658
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia Activación"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '08'  /* aux postumo */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_prov_ger_cont_act"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_providencia_conta from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2793
integer y = 328
integer width = 718
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia Contabilidad"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '08'  /* aux postumo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_cont_new"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_providencia_teso from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2130
integer y = 328
integer width = 649
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia Tesorería"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '08'  /* aux postumo */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_providencia_ger_teso_new"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_resolucion from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 1755
integer y = 328
integer width = 361
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resolución"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)

//messagebox('is_auxpost',is_auxpost)
If This.checked = True Then
	//cbx_historico.visible = true
	choose case is_tramite
		case '01'  /* Vejez */
			if is_auxpost = '1' then
				dw_report.DataObject = "d_analisis_rep_resolucion_jd"
			else
				dw_report.DataObject = "d_analisis_rep_resolucion_jd_ap"
			end if
		case '02'  /* Invalidez */
			if is_auxpost = '1' then
				dw_report.DataObject = "d_analisis_rep_inv_resolucion_jd"
			else
				dw_report.DataObject = "d_analisis_rep_inv_resolucion_jd_ap"
			end if
		case '03'  /* CV */
			if is_subtipo_cv = '1' Then
				dw_report.DataObject = "d_analisis_rep_cv_resolucion_jd"
			else
				dw_report.DataObject = "d_analisis_rep_cv_resolucion_jd_inv"
			end if
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_cmp_resolucion_jd"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_cmp_resolucion_jd"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_cmp_resolucion_jd"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_cmp_resolucion_jd"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_recibo_1er_pago from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 1221
integer y = 328
integer width = 521
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Recibo 1er. Pago"
end type

event clicked;int respuesta
string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				dw_report.DataObject = "d_analisis_rep_recibo_primer_pago"
			end if
			//dw_report.DataObject = "d_analisis_rep_recibo_primer_pago"
			//messagebox('Advertencia','Módulo bajo ventana de matenimiento según oficio DI-03-2023')
		case '02'  /* Invalidez */
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				dw_report.DataObject = "d_analisis_rep_recibo_primer_pago"
			end if
		case '03'  /* CV */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '04'  /* Muerte Jubilado */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '05'  /* Muerte Activo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '06'  /* SV jubilado */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '07'  /* SV activo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_recibo_calculo from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 745
integer y = 328
integer width = 462
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Recibo Cálculo"
end type

event clicked;Integer respuesta
string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	//cbx_historico.visible = true
	choose case is_tramite
		case '01'  /* Vejez */
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				dw_report.DataObject = "d_analisis_rep_recibo_calculo"
			end if
			//messagebox('Advertencia','Módulo bajo ventana de matenimiento según oficio DI-03-2023')
		case '02'  /* Invalidez */
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				dw_report.DataObject = "d_analisis_rep_recibo_calculo"
			end if
			//messagebox('Advertencia','Módulo bajo ventana de matenimiento según oficio DI-03-2023')
		case '03'  /* CV */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_cmp_inte_benef"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_cmp_inte_benef"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_cmp_inte_benef"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_cmp_inte_benef"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_gf_cmp_inte_benef"
	end choose	
	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_aux_post from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 791
integer y = 412
integer width = 562
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Aut. Aux. Póstumo"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_autorizacion_auxilio_postumo"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_autorizacion_auxilio_postumo"
		case '03'  /* CV */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '04'  /* Muerte Jubilado */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '05'  /* Muerte Activo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '06'  /* SV jubilado */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '07'  /* SV activo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_liquidacion from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 905
integer y = 244
integer width = 370
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Liquidación"
end type

event clicked;Integer li_cant_lineas
string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_liquidacion_expediente_parte1"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_liq_exp_parte1"
		case '03'  /* CV */
			if is_subtipo_cv = '1' Then
				dw_report.DataObject = "d_analisis_rep_cv_liq_exp_parte1"
			else
				dw_report.DataObject = "d_analisis_rep_cv_inv_liq_exp_parte1"
			end if
		case '04'  /* Muerte Jubilado */
			li_cant_lineas = f_db_get_cant_lineas_benef(cui)
			if li_cant_lineas > 22 then
				dw_report.DataObject = "d_analisis_rep_mj_liq_exp_parte1"
			else
				dw_report.DataObject = "d_analisis_rep_mj_liq_exp_parte1b"
			end if
		case '05'  /* Muerte Activo */
			li_cant_lineas = f_db_get_cant_lineas_benef(cui)
			if li_cant_lineas > 22 then
				dw_report.DataObject = "d_analisis_rep_ma_liq_exp_parte1"
			else
				dw_report.DataObject = "d_analisis_rep_ma_liq_exp_parte1b"
			end if
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_cmp_svj_liquidacion"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_cmp_sva_liquidacion"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_cmp_gf_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_resumen_expediente from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 96
integer y = 328
integer width = 626
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resumen Expediente"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_cmp_resumen"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_cmp_resumen"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_cmp_resumen"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_cmp_resumen"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_cmp_resumen"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_cmp_resumen"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_cmp_resumen"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_dictamen_auditoria from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 1746
integer y = 244
integer width = 576
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Dictamen Auditoría"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_dictamen_auditoria_interna_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_dict_ai"
		case '03'  /* CV */
			if is_subtipo_cv = '1' Then
				dw_report.DataObject = "d_analisis_rep_cv_dict_ai"
			else
				dw_report.DataObject = "d_analisis_rep_cv_dict_ai_inv"
			end if
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_dict_ai"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_dict_ai"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_cmp_svj_dict_ai"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_cmp_sva_dict_ai"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_providencia_jd from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2889
integer y = 244
integer width = 503
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia JD"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_providencia_gerencia_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_prov_gerencia"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_prov_gerencia"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_prov_gerencia"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_prov_gerencia"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_prov_gerencia"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_prov_gerencia"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_providencia from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 1294
integer y = 244
integer width = 434
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Providencia 1"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_providencia_gerencia_ai_new"
			//dw_report.DataObject = "d_analisis_rep_prov_ger_ai_tmp"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_prov_gerencia_ai"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_prov_gerencia_ai"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_prov_1"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_prov_gerencia_ai"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_prov_gerencia_ai"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_prov_gerencia_ai"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type pb_anios_pago from picturebutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2674
integer y = 52
integer width = 457
integer height = 100
integer taborder = 50
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

event clicked;st_analisis     lst_parametros

lst_parametros.sl_solicitud = il_solicitud
lst_parametros.ss_dpi        = is_dpi

Openwithparm(w_analisis_mnt_anios_pago,  lst_parametros)

lst_parametros = Message.PowerObjectParm


end event

type pb_documentos from picturebutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2162
integer y = 52
integer width = 457
integer height = 100
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Documentos"
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

Openwithparm(w_analisis_mnt_documentos_expediente,  lst_parametros)

lst_parametros = Message.PowerObjectParm


end event

type st_1 from statictext within w_analisis_rep_solicitudes_expediente02
integer x = 165
integer y = 72
integer width = 178
integer height = 72
integer textsize = -11
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

type pb_buscar1 from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 1550
integer y = 52
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
long backcolor = 0
end type

event clicked;Long ll_rows, ll_rows_detalle
String ls_tramite

dw_report.SetFocus()
il_solicitud = f_db_get_solicitud(is_dpi)
ls_tramite = f_db_get_solicitud_tramite(is_dpi)
is_tramite = ls_tramite
is_subtipo_cv = f_db_get_solicitud_subtipo_cv(is_dpi)

pb_documentos.visible = true
gb_doctos.visible = true
rb_vejez_calculo.visible = true
rb_dictamen_juridico.visible = true
rb_providencia.visible = true
rb_providencia_jd.visible = true
rb_dictamen_auditoria.visible = true
rb_aux_post.visible =true
rb_liquidacion.visible = true
rb_resumen_expediente.visible = true
rb_recibo_calculo.visible = true
rb_recibo_1er_pago.visible = true
rb_resolucion.visible = true

if lower(gs_userid) = 'mlemen' or lower(gs_userid) = 'mhernandez' or lower(gs_userid) = 'lmarroquin' or lower(gs_userid) = 'arivas' then
	rb_providencia_teso.visible = true
	rb_providencia_conta.visible = true
//	rb_providencia_activacion.visible = true
else
	rb_providencia_teso.visible = false
	rb_providencia_conta.visible = false
//	rb_providencia_activacion.visible = false
end if

choose case ls_tramite
	case '01'  /* Vejez */
		gb_doctos.text = 'Documentos Vejez'
		dw_report.DataObject = "d_analisis_rep_cmp_nomina"
	case '02'  /* Invalidez */
		gb_doctos.text = 'Documentos Invalidez'
		dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '03'  /* CV */
		rb_aux_post.visible = false
		rb_recibo_calculo.visible = false
		rb_recibo_1er_pago.visible = false
		if is_subtipo_cv = '1' Then
			gb_doctos.text = 'Documentos Contribución Voluntaria - Vejez'
		else
			gb_doctos.text = 'Documentos Contribución Voluntaria - Invalidez'
		end if
		dw_report.DataObject = "d_analisis_rep_cv_nomina"
	case '04'  /* Muerte Jubilado */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		gb_doctos.text = 'Documentos Muerte Jubilado'
		dw_report.DataObject = "d_analisis_rep_mj_nomina"
	case '05'  /* Muerte Activo */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		gb_doctos.text = 'Documentos Muerte Activo'
		dw_report.DataObject = "d_analisis_rep_ma_nomina"
	case '06'  /* SV jubilado */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_resumen_expediente.visible = true
		gb_doctos.text = 'Documentos Seguro Vida Jubilado'
		dw_report.DataObject = "d_analisis_rep_svj_nomina"
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '07'  /* SV activo */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_resumen_expediente.visible = true
		gb_doctos.text = 'Documentos Seguro Vida Activo'
		dw_report.DataObject = "d_analisis_rep_sva_nomina"
	case '08'  /* aux postumo */
		gb_doctos.text = 'Documentos Auxilio Póstumo'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '09'  /* gastos fun */
		rb_providencia.visible = false
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_dictamen_auditoria.visible = false
		rb_dictamen_juridico.visible = false
		rb_providencia_jd.visible = false
		rb_resumen_expediente.visible = false
		rb_resolucion.visible = false
		gb_doctos.text = 'Documentos Gastos Funerarios'
		dw_report.DataObject = "d_analisis_rep_gf_nomina"
end choose
dw_report.SetTransObject(sqlca)
dw_report.Modify("DataWindow.Print.Preview=Yes")
ll_rows = dw_report.retrieve(is_dpi)
commit;

//f_db_get_contribuyente()

//f_db_get_solicitud()


//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)

//if not isnull(ll_rows_detalle) then
//	ib_hay_detalle = true
//else
//	ib_hay_detalle = false
//end if
//



end event

type pb_buscar from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 1655
integer y = 52
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 29397330
end type

event clicked;Long ll_rows, ll_rows_detalle
String ls_tramite, cui

dw_report.SetFocus()
cui = buscardpi(is_dpi)

il_solicitud = f_db_get_solicitud(cui)
ls_tramite = f_db_get_solicitud_tramite(cui)
is_tramite = ls_tramite
is_subtipo_cv = f_db_get_solicitud_subtipo_cv(cui)
is_auxpost = f_db_get_solicitud_auxilio_postumo(cui)

//messagebox('ls_auxpost',ls_auxpost)

pb_documentos.visible = true
gb_doctos.visible = true
rb_vejez_calculo.visible = true
rb_dictamen_juridico.visible = true
rb_providencia.visible = true
rb_providencia_jd.visible = true
rb_dictamen_auditoria.visible = true
rb_aux_post.visible =true
rb_liquidacion.visible = true
rb_resumen_expediente.visible = true
rb_recibo_calculo.visible = true
rb_recibo_1er_pago.visible = true
rb_resolucion.visible = true
rb_1.visible = true
dw_1.visible = true
dw_1.SetTransObject(sqlca)
dw_1.retrieve(gi_unidad,is_tramite)
if gi_unidad =9 or  gi_unidad =8 then
		rb_providencia_teso.visible = true
	rb_providencia_conta.visible = true
//	rb_providencia_activacion.visible = true
else
	rb_providencia_teso.visible = false
	rb_providencia_conta.visible = false
//	rb_providencia_activacion.visible = false
end if



if is_auxpost = '1' then
	rb_aux_post.visible = true
else
	rb_aux_post.visible = false
end if

choose case ls_tramite
	case '01'  /* Vejez */
		gb_doctos.text = 'Documentos Vejez'
		//dw_report.DataObject = "d_analisis_rep_cmp_nomina"
	case '02'  /* Invalidez */
		gb_doctos.text = 'Documentos Invalidez'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '03'  /* CV */
		rb_aux_post.visible = false
		rb_recibo_calculo.visible = false
		rb_recibo_1er_pago.visible = false
		if is_subtipo_cv = '1' Then
			gb_doctos.text = 'Documentos Contribución Voluntaria - Vejez'
		else
			gb_doctos.text = 'Documentos Contribución Voluntaria - Invalidez'
		end if
	//	dw_report.DataObject = "d_analisis_rep_cv_nomina"
	case '04'  /* Muerte Jubilado */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		gb_doctos.text = 'Documentos Muerte Pensionado'
	//	dw_report.DataObject = "d_analisis_rep_mj_nomina"
	case '05'  /* Muerte Activo */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		gb_doctos.text = 'Documentos Muerte Activo'
	//	dw_report.DataObject = "d_analisis_rep_ma_nomina"
	case '06'  /* SV jubilado */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_resumen_expediente.visible = true
		gb_doctos.text = 'Documentos Seguro Vida Jubilado'
	//	dw_report.DataObject = "d_analisis_rep_svj_nomina"
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '07'  /* SV activo */
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_resumen_expediente.visible = true
		gb_doctos.text = 'Documentos Seguro Vida Activo'
		dw_report.DataObject = "d_analisis_rep_sva_nomina"
	case '08'  /* aux postumo */
		gb_doctos.text = 'Documentos Auxilio Póstumo'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '09'  /* gastos fun */
		rb_providencia.visible = false
		rb_aux_post.visible = false
		rb_recibo_1er_pago.visible = false
		rb_dictamen_auditoria.visible = false
		rb_dictamen_juridico.visible = false
		rb_providencia_jd.visible = false
		rb_resumen_expediente.visible = false
		rb_resolucion.visible = false
		gb_doctos.text = 'Documentos Gastos Funerarios'
		//dw_report.DataObject = "d_analisis_rep_gf_nomina"
end choose
//dw_report.SetTransObject(sqlca)
//dw_report.Modify("DataWindow.Print.Preview=Yes")
//ll_rows = dw_report.retrieve(cui)
commit;


//f_db_get_contribuyente()

//f_db_get_solicitud()


//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)

//if not isnull(ll_rows_detalle) then
//	ib_hay_detalle = true
//else
//	ib_hay_detalle = false
//end if
//



end event

type sle_buscar from singlelineedit within w_analisis_rep_solicitudes_expediente02
integer x = 361
integer y = 52
integer width = 1120
integer height = 112
integer taborder = 10
integer textsize = -10
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

type rb_dictamen_juridico from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 2341
integer y = 244
integer width = 539
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Dictamen Jurídico"
end type

event clicked;string cui 
cui = buscardpi(is_dpi)
If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_dictamen_juridico_new"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_dict_juridico"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_dict_juridico"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_dict_juridico"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_dict_juridico"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_dict_juridico"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_dict_juridico"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
		case '09'  /* gastos fun */
			//dw_report.DataObject = "d_analisis_rep_cmp_liquidacion"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	commit;
End If
end event

type rb_vejez_calculo from radiobutton within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 480
integer y = 244
integer width = 407
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Hoja Cálculo"
boolean checked = true
end type

event clicked;string cui 
cui = buscardpi(is_dpi)

If This.checked = True Then
	cbx_historico.visible = false
	choose case is_tramite
		case '01'  /* Vejez */
			dw_report.DataObject = "d_analisis_rep_cmp_nomina"
		case '02'  /* Invalidez */
			dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
		case '03'  /* CV */
			dw_report.DataObject = "d_analisis_rep_cv_nomina"
		case '04'  /* Muerte Jubilado */
			dw_report.DataObject = "d_analisis_rep_mj_nomina"
		case '05'  /* Muerte Activo */
			dw_report.DataObject = "d_analisis_rep_ma_nomina"
		case '06'  /* SV jubilado */
			dw_report.DataObject = "d_analisis_rep_svj_nomina"
		case '07'  /* SV activo */
			dw_report.DataObject = "d_analisis_rep_sva_nomina"
		case '08'  /* aux postumo */
			//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
		case '09'  /* gastos fun */
			dw_report.DataObject = "d_analisis_rep_gf_nomina"
	end choose	
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
End If
Commit;
end event

type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 4178
integer y = 88
integer width = 402
integer height = 96
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 16813032
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_grabar from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 4178
integer y = 224
integer width = 402
integer height = 96
integer taborder = 100
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;Close(w_analisis_rep_solicitudes_expediente)
end event

type pb_2 from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 4073
integer y = 88
integer width = 110
integer height = 96
integer taborder = 120
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\Printer.png"
long backcolor = 33554432
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_3 from picturebutton within w_analisis_rep_solicitudes_expediente02
integer x = 4073
integer y = 224
integer width = 110
integer height = 96
integer taborder = 130
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\Exit.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_rep_solicitudes_expediente)
end event

type dw_report from datawindow within w_analisis_rep_solicitudes_expediente02
integer x = 32
integer y = 640
integer width = 4069
integer height = 1924
integer taborder = 80
string title = "none"
string dataobject = "d_analisis_rep_cmp_nomina"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_solicitudes_expediente02
integer x = 4055
integer width = 553
integer height = 356
integer taborder = 110
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

type gb_doctos from groupbox within w_analisis_rep_solicitudes_expediente02
boolean visible = false
integer x = 37
integer y = 164
integer width = 3771
integer height = 448
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Documentos Vejez"
end type

