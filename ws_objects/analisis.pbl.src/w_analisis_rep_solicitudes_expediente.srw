$PBExportHeader$w_analisis_rep_solicitudes_expediente.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solicitudes_expediente from window
end type
type dw_1 from datawindow within w_analisis_rep_solicitudes_expediente
end type
type pb_generar from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type cbx_historico from checkbox within w_analisis_rep_solicitudes_expediente
end type
type pb_anios_pago from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type pb_documentos from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type st_1 from statictext within w_analisis_rep_solicitudes_expediente
end type
type pb_buscar1 from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type pb_buscar from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type sle_buscar from singlelineedit within w_analisis_rep_solicitudes_expediente
end type
type pb_imprimir from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type pb_salir from picturebutton within w_analisis_rep_solicitudes_expediente
end type
type dw_report from datawindow within w_analisis_rep_solicitudes_expediente
end type
type gb_acciones from groupbox within w_analisis_rep_solicitudes_expediente
end type
type gb_doctos from groupbox within w_analisis_rep_solicitudes_expediente
end type
end forward

global type w_analisis_rep_solicitudes_expediente from window
integer x = 1550
integer y = 120
integer width = 4155
integer height = 3140
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
pb_generar pb_generar
cbx_historico cbx_historico
pb_anios_pago pb_anios_pago
pb_documentos pb_documentos
st_1 st_1
pb_buscar1 pb_buscar1
pb_buscar pb_buscar
sle_buscar sle_buscar
pb_imprimir pb_imprimir
pb_salir pb_salir
dw_report dw_report
gb_acciones gb_acciones
gb_doctos gb_doctos
end type
global w_analisis_rep_solicitudes_expediente w_analisis_rep_solicitudes_expediente

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Long il_solicitud
String is_dpi, is_tramite, is_subtipo_cv, is_auxpost
Integer ii_depto, ii_muni, ii_historico
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solicitudes_expediente.create
this.dw_1=create dw_1
this.pb_generar=create pb_generar
this.cbx_historico=create cbx_historico
this.pb_anios_pago=create pb_anios_pago
this.pb_documentos=create pb_documentos
this.st_1=create st_1
this.pb_buscar1=create pb_buscar1
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.pb_imprimir=create pb_imprimir
this.pb_salir=create pb_salir
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_doctos=create gb_doctos
this.Control[]={this.dw_1,&
this.pb_generar,&
this.cbx_historico,&
this.pb_anios_pago,&
this.pb_documentos,&
this.st_1,&
this.pb_buscar1,&
this.pb_buscar,&
this.sle_buscar,&
this.pb_imprimir,&
this.pb_salir,&
this.dw_report,&
this.gb_acciones,&
this.gb_doctos}
end on

on w_analisis_rep_solicitudes_expediente.destroy
destroy(this.dw_1)
destroy(this.pb_generar)
destroy(this.cbx_historico)
destroy(this.pb_anios_pago)
destroy(this.pb_documentos)
destroy(this.st_1)
destroy(this.pb_buscar1)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.pb_imprimir)
destroy(this.pb_salir)
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

type dw_1 from datawindow within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 224
integer y = 264
integer width = 1577
integer height = 660
integer taborder = 40
string title = "none"
string dataobject = "dwg_menu_expedientes"
boolean vscrollbar = true
boolean border = false
borderstyle borderstyle = stylelowered!
end type

type pb_generar from picturebutton within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 2011
integer y = 352
integer width = 402
integer height = 100
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Generar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 29397330
end type

event clicked;integer id, respuesta, li_cant_lineas
string cui , ls_tramite, reporte, xx
pb_imprimir.visible = true
pb_salir.visible = true
cui = buscardpi(is_dpi)
ls_tramite = f_db_get_solicitud_tramite(cui)
li_cant_lineas = f_db_get_cant_lineas_benef(cui)
xx = f_db_get_solicitud_subtipo_cv(cui)
	id = dw_1.getitemnumber( dw_1.getrow(),2 )
	
	choose case id
		case 2  // Liquidacion
			if xx = '2' and Is_tramite = '03' Then
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2) //invalidez
			elseif Is_tramite = '04' and  li_cant_lineas < 22 then //pocos beneficiario
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2)
			elseif Is_tramite = '05' and  li_cant_lineas < 22 then  //pocos beneficiario
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2)
			else
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 1) 
			end if
		case 4
			if xx = '2' and Is_tramite = '03' Then
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2) //invalidez
			else
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 1) 
			end if
		case 7  // Recibo Cáculo
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2)
			end if
		case 8  // Recibo Cáculo 1er. Pago
			respuesta = MessageBox("¿Modificar?", "¿Desea modificar el recibo de cálculos?", Question!, YesNo!, 2)
			if respuesta = 1 then
				OpenWithParm(w_analisis_cal_vejez, cui)
			else
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 2)
			end if
		case 9  // Resolución
			if xx = '1' and Is_tramite = '02'  Then
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 1) //vejez
			elseif xx = '1' and Is_tramite = '03'  Then
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 1) //vejez
			else
				reporte = f_linkmenu_reportesexp(id,ls_tramite, 1) 
			end if
		case else 
			reporte = f_linkmenu_reportesexp(id,ls_tramite, 1)
	end choose	
	//messagebox("",string(trim(reporte)))
	//messagebox("s",string(xx))
	dw_report.DataObject = trim(reporte)
	//dw_report.dataobject = "d_analisis_rep_contenido_expedientes01"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(cui)
	dw_report.visible = true
	commit;
	sle_buscar.enabled = true
end event

type cbx_historico from checkbox within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 3351
integer y = 108
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

type pb_anios_pago from picturebutton within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 2706
integer y = 108
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

type pb_documentos from picturebutton within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 2176
integer y = 108
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
integer id,  li_cant_lineas
string cui , ls_tramite, reporte, xx

ll_solicitud       = f_db_get_solicitud(is_dpi)

st_analisis     lst_parametros

lst_parametros.sl_solicitud = il_solicitud
lst_parametros.ss_dpi        = is_dpi



cui = buscardpi(is_dpi)
ls_tramite = f_db_get_solicitud_tramite(cui)
li_cant_lineas = f_db_get_cant_lineas_benef(cui)
xx = f_db_get_solicitud_subtipo_cv(cui)
lst_parametros._unidad = gi_unidad
lst_parametros._tramite =Is_tramite


Openwithparm(w_analisis_mnt_documentos_expediente,  lst_parametros)

lst_parametros = Message.PowerObjectParm

end event

type st_1 from statictext within w_analisis_rep_solicitudes_expediente
integer x = 165
integer y = 108
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

type pb_buscar1 from picturebutton within w_analisis_rep_solicitudes_expediente
integer x = 1550
integer y = 108
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


choose case ls_tramite
	case '01'  /* Vejez */
		gb_doctos.text = 'Documentos Vejez'
		dw_report.DataObject = "d_analisis_rep_cmp_nomina"
	case '02'  /* Invalidez */
		gb_doctos.text = 'Documentos Invalidez'
		dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '03'  /* CV */
		
		if is_subtipo_cv = '1' Then
			gb_doctos.text = 'Documentos Contribución Voluntaria - Vejez'
		else
			gb_doctos.text = 'Documentos Contribución Voluntaria - Invalidez'
		end if
		dw_report.DataObject = "d_analisis_rep_cv_nomina"
	case '04'  /* Muerte Jubilado */
		gb_doctos.text = 'Documentos Muerte Jubilado'
		dw_report.DataObject = "d_analisis_rep_mj_nomina"
	case '05'  /* Muerte Activo */
		gb_doctos.text = 'Documentos Muerte Activo'
		dw_report.DataObject = "d_analisis_rep_ma_nomina"
	case '06'  /* SV jubilado */
		gb_doctos.text = 'Documentos Seguro Vida Jubilado'
		dw_report.DataObject = "d_analisis_rep_svj_nomina"
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '07'  /* SV activo */
		gb_doctos.text = 'Documentos Seguro Vida Activo'
		dw_report.DataObject = "d_analisis_rep_sva_nomina"
	case '08'  /* aux postumo */
		gb_doctos.text = 'Documentos Auxilio Póstumo'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '09'  /* gastos fun */
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

type pb_buscar from picturebutton within w_analisis_rep_solicitudes_expediente
integer x = 1655
integer y = 108
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
gb_acciones.visible = true
pb_generar.visible = true
dw_1.visible = true
dw_1.SetTransObject(sqlca)
dw_1.retrieve(gi_unidad,is_tramite)

choose case ls_tramite
	case '01'  /* Vejez */
		gb_doctos.text = 'Documentos Vejez'
		//dw_report.DataObject = "d_analisis_rep_cmp_nomina"
	case '02'  /* Invalidez */
		gb_doctos.text = 'Documentos Invalidez'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '03'  /* CV */
		if is_subtipo_cv = '1' Then
			gb_doctos.text = 'Documentos Contribución Voluntaria - Vejez'
		else
			gb_doctos.text = 'Documentos Contribución Voluntaria - Invalidez'
		end if
	//	dw_report.DataObject = "d_analisis_rep_cv_nomina"
	case '04'  /* Muerte Jubilado */
		
		gb_doctos.text = 'Documentos Muerte Pensionado'
	//	dw_report.DataObject = "d_analisis_rep_mj_nomina"
	case '05'  /* Muerte Activo */
		
		gb_doctos.text = 'Documentos Muerte Activo'
	//	dw_report.DataObject = "d_analisis_rep_ma_nomina"
	case '06'  /* SV jubilado */
		
		gb_doctos.text = 'Documentos Seguro Vida Jubilado'
	//	dw_report.DataObject = "d_analisis_rep_svj_nomina"
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '07'  /* SV activo */
		
		gb_doctos.text = 'Documentos Seguro Vida Activo'
		dw_report.DataObject = "d_analisis_rep_sva_nomina"
	case '08'  /* aux postumo */
		gb_doctos.text = 'Documentos Auxilio Póstumo'
		//dw_report.DataObject = "d_analisis_rep_inv_cmp_nomina"
	case '09'  /* gastos fun */
		
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

sle_buscar.enabled = true



end event

type sle_buscar from singlelineedit within w_analisis_rep_solicitudes_expediente
integer x = 361
integer y = 108
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
boolean hideselection = false
end type

event modified;is_dpi = This.text

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type pb_imprimir from picturebutton within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 2007
integer y = 468
integer width = 402
integer height = 100
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

type pb_salir from picturebutton within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 2016
integer y = 580
integer width = 402
integer height = 100
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

type dw_report from datawindow within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 37
integer y = 1040
integer width = 3845
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

type gb_acciones from groupbox within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 1952
integer y = 268
integer width = 553
integer height = 516
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

type gb_doctos from groupbox within w_analisis_rep_solicitudes_expediente
boolean visible = false
integer x = 37
integer y = 28
integer width = 3867
integer height = 940
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
boolean enabled = false
string text = "Documentos Vejez"
end type

