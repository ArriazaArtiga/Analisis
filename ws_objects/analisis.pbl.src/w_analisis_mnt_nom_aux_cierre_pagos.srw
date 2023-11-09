$PBExportHeader$w_analisis_mnt_nom_aux_cierre_pagos.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_nom_aux_cierre_pagos from window
end type
type pb_cierre from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type dw_nomina_aux from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
end type
type st_1 from statictext within w_analisis_mnt_nom_aux_cierre_pagos
end type
type rb_dictamen_juridico from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type rb_dictamen_auditoria from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type rb_providencia from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type rb_liquidacion from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type rb_extraordinaria from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_4 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_3 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_2 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_eliminar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_grabar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_nuevo from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_salir from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type pb_buscar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
end type
type sle_buscar from singlelineedit within w_analisis_mnt_nom_aux_cierre_pagos
end type
type dw_nomina_enc from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
end type
type gb_doctos from groupbox within w_analisis_mnt_nom_aux_cierre_pagos
end type
type dw_nominas_det from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
end type
end forward

global type w_analisis_mnt_nom_aux_cierre_pagos from window
integer x = 1550
integer y = 120
integer width = 5289
integer height = 2436
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = centeranimation!
pb_cierre pb_cierre
dw_nomina_aux dw_nomina_aux
st_1 st_1
rb_dictamen_juridico rb_dictamen_juridico
rb_dictamen_auditoria rb_dictamen_auditoria
rb_providencia rb_providencia
rb_liquidacion rb_liquidacion
rb_extraordinaria rb_extraordinaria
pb_buscar1 pb_buscar1
pb_4 pb_4
pb_3 pb_3
pb_2 pb_2
pb_eliminar pb_eliminar
pb_grabar pb_grabar
pb_nuevo pb_nuevo
pb_salir pb_salir
pb_buscar pb_buscar
sle_buscar sle_buscar
dw_nomina_enc dw_nomina_enc
gb_doctos gb_doctos
dw_nominas_det dw_nominas_det
end type
global w_analisis_mnt_nom_aux_cierre_pagos w_analisis_mnt_nom_aux_cierre_pagos

type variables
Long il_row_enc, il_corr_ant
String is_descripcion, is_nomenclatura, is_nit
Integer ii_focus, ii_nomina
DateTime idt_fecha
end variables

on w_analisis_mnt_nom_aux_cierre_pagos.create
this.pb_cierre=create pb_cierre
this.dw_nomina_aux=create dw_nomina_aux
this.st_1=create st_1
this.rb_dictamen_juridico=create rb_dictamen_juridico
this.rb_dictamen_auditoria=create rb_dictamen_auditoria
this.rb_providencia=create rb_providencia
this.rb_liquidacion=create rb_liquidacion
this.rb_extraordinaria=create rb_extraordinaria
this.pb_buscar1=create pb_buscar1
this.pb_4=create pb_4
this.pb_3=create pb_3
this.pb_2=create pb_2
this.pb_eliminar=create pb_eliminar
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.dw_nomina_enc=create dw_nomina_enc
this.gb_doctos=create gb_doctos
this.dw_nominas_det=create dw_nominas_det
this.Control[]={this.pb_cierre,&
this.dw_nomina_aux,&
this.st_1,&
this.rb_dictamen_juridico,&
this.rb_dictamen_auditoria,&
this.rb_providencia,&
this.rb_liquidacion,&
this.rb_extraordinaria,&
this.pb_buscar1,&
this.pb_4,&
this.pb_3,&
this.pb_2,&
this.pb_eliminar,&
this.pb_grabar,&
this.pb_nuevo,&
this.pb_salir,&
this.pb_buscar,&
this.sle_buscar,&
this.dw_nomina_enc,&
this.gb_doctos,&
this.dw_nominas_det}
end on

on w_analisis_mnt_nom_aux_cierre_pagos.destroy
destroy(this.pb_cierre)
destroy(this.dw_nomina_aux)
destroy(this.st_1)
destroy(this.rb_dictamen_juridico)
destroy(this.rb_dictamen_auditoria)
destroy(this.rb_providencia)
destroy(this.rb_liquidacion)
destroy(this.rb_extraordinaria)
destroy(this.pb_buscar1)
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.pb_2)
destroy(this.pb_eliminar)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.dw_nomina_enc)
destroy(this.gb_doctos)
destroy(this.dw_nominas_det)
end on

event open;long ll_rows

//this.backcolor = rgb(236,240,245)
pb_buscar.backcolor = rgb(41,57,85)
pb_buscar.TEXTcolor =  rgb(240,240,240)

//pb_buscar.backcolor = rgb(59,140,188)
//pb_buscar.TEXTcolor =  rgb(255,255,255)
//pb_buscar1.backcolor = rgb(1,1,1)

pb_nuevo.backcolor =  rgb(41,57,85)
pb_nuevo.TEXTcolor = rgb(240,240,240)

//pb_nuevo.backcolor =  rgb(0,164,90)
//pb_nuevo.TEXTcolor =  rgb(255,255,255)

pb_grabar.backcolor =  rgb(41,57,85)
pb_grabar.TEXTcolor = rgb(240,240,240)

//pb_grabar.backcolor = rgb(0,191,240)
//pb_grabar.TEXTcolor =  rgb(255,255,255)

pb_eliminar.backcolor = rgb(220,74,55)
pb_eliminar.TEXTcolor =  rgb(255,255,255)
pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)

pb_cierre.backcolor =  rgb(41,57,85)
pb_cierre.textcolor = rgb(240,240,240)
pb_cierre.visible = false

//ll_row = dw_nomina_enc.retrieve('')
//if not isnull(dw_nomina_enc.Object.No_Factura[ll_row]) then
//	is_no_factura = dw_nomina_enc.Object.No_Factura[ll_row]
//end if
////
//if not isnull(dw_nomina_enc.Object.nit[ll_row]) then
//	is_nit = dw_nomina_enc.Object.nit[ll_row]
//end if
//
//if not isnull(dw_nomina_enc.Object.fecha[ll_row]) then
//	idt_fecha = dw_nomina_enc.Object.fecha[ll_row]
//end if
//
//dw_nominas_det.retrieve(is_no_factura,is_nit,idt_fecha)
//

If rb_extraordinaria.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_nomina_extr"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_nomina_extr"
	dw_nomina_aux.DataObject = "dddw_nomina_extr"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
	ll_rows = dw_nomina_aux.InsertRow(0)
	dw_nomina_aux.ScrollToRow(ll_rows)
	dw_nomina_aux.SetFocus()

//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 1
End If
Commit;








end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type pb_cierre from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 4434
integer y = 224
integer width = 457
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Cierre"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows_det_gral, ll_rows_det_extr, ll_rows_det_rpen, ll_i, ll_row
String ls_new_nomen, ls_resolucion, ls_dpi, ls_cta_bco
Integer li_tipo_pensionado, li_anios, li_meses, li_dias
Decimal ldc_monto

ll_rows_det_gral = dw_nominas_det.retrieve(is_descripcion)

for ll_i=1 to ll_rows_det_gral   //Copia de detalle de la nomina general
	dw_nominas_det.Object.estado[ll_i] = '2'  //cierre de pago
next

commit;
MessageBox('Información','Cierre de Pago Realizado con exito.')
//pb_gral.visible = true
pb_cierre.visible = false
////activar o desactivar estado nomina, unidad = 7 desactivado, unidad =4 activado
end event

type dw_nomina_aux from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 2107
integer y = 148
integer width = 466
integer height = 100
integer taborder = 20
string title = "none"
string dataobject = "dddw_nomina_extr"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

event itemchanged;Long ll_rows

This.AcceptText()

choose case ii_nomina
	case 1 // Nomina Extrordinaria
		is_descripcion = This.object.nomenclatura_extraordinaria[row]
	case 2 // Nomina Reincorporación Pensionados
		is_descripcion = This.object.correlativo_rpe[row]
	case 3 // Nomina Ampliación
		is_descripcion = This.object.nomenclatura_amp[row]
	case 4 // Nomina Muerte Jubilado
		is_descripcion = This.object.nomenclatura_mj[row]
	case 5 // Nomina Reincorporación Trabajo
		is_descripcion = This.object.correlativo_rtr[row]
end choose




commit;
end event

type st_1 from statictext within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 1431
integer y = 156
integer width = 672
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 32895212
string text = "Nomenclatura Auxiliar:"
alignment alignment = center!
boolean focusrectangle = false
end type

type rb_dictamen_juridico from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 750
integer y = 200
integer width = 475
integer height = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Reinc. Trabajo"
end type

event clicked;Long ll_rows

If This.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_reincorp_tra"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_reincorp_tra"
	dw_nomina_aux.DataObject = "dddw_nomina_rtra"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
//	ll_rows = dw_nomina_aux.InsertRow(0)
//	dw_nomina_aux.ScrollToRow(ll_rows)
	dw_nomina_aux.SetFocus()
	
//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 5
	sle_buscar.text = ''
End If
Commit;
end event

type rb_dictamen_auditoria from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 750
integer y = 116
integer width = 544
integer height = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Muerte Jubilado"
end type

event clicked;Long ll_rows

If This.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_nomina_mj"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_nomina_mj"
	dw_nomina_aux.DataObject = "dddw_nomina_mj"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
//	ll_rows = dw_nomina_aux.InsertRow(0)
//	dw_nomina_aux.ScrollToRow(ll_rows)
	dw_nomina_aux.SetFocus()
	
//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 4
	sle_buscar.text = ''
End If
Commit;
end event

type rb_providencia from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 101
integer y = 220
integer width = 434
integer height = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Ampliación"
end type

event clicked;Long ll_rows

If This.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_ampl_pen"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_ampl_pen"
	dw_nomina_aux.DataObject = "dddw_nomina_ampl"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
//	ll_rows = dw_nomina_aux.InsertRow(0)
//	dw_nomina_aux.ScrollToRow(ll_rows)
	dw_nomina_aux.SetFocus()
	
//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 3
	sle_buscar.text = ''
End If
Commit;
end event

type rb_liquidacion from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 101
integer y = 152
integer width = 658
integer height = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Reinc. Pensionados"
end type

event clicked;Long ll_rows

If This.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_reincorp_pen"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_reincorp_pen"
	dw_nomina_aux.DataObject = "dddw_nomina_rpen"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
//	ll_rows = dw_nomina_aux.InsertRow(0)
//	dw_nomina_aux.ScrollToRow(ll_rows)
	dw_nomina_aux.SetFocus()
	
//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 2
	sle_buscar.text = ''
End If
Commit;
end event

type rb_extraordinaria from radiobutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 101
integer y = 84
integer width = 507
integer height = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Extraordinaria"
boolean checked = true
end type

event clicked;Long ll_rows

If This.checked = True Then
	dw_nomina_enc.DataObject = "d_analisis_mnt_nomina_extr"
	dw_nominas_det.DataObject = "d_analisis_mnt_det_nomina_extr"
	dw_nomina_aux.DataObject = "dddw_nomina_extr"
	dw_nomina_enc.SetTransObject(sqlca)
	dw_nominas_det.SetTransObject(sqlca)
	dw_nomina_aux.SetTransObject(sqlca)
	
	dw_nomina_enc.enabled = false
	
//	ll_rows = dw_nomina_aux.InsertRow(0)
//	dw_nomina_aux.ScrollToRow(ll_rows)

	dw_nomina_aux.SetFocus()
	
//	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
//	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
//	dw_nomina_enc.Retrieve(is_dpi)
//	dw_nominas_det.Retrieve(is_dpi)
	ii_nomina = 1
	sle_buscar.text = ''
End If
Commit;
end event

type pb_buscar1 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 2569
integer y = 144
integer width = 110
integer height = 96
integer taborder = 50
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

type pb_4 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 4325
integer y = 464
integer width = 110
integer height = 96
integer taborder = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_mnt_nom_aux_cierre_pagos)
end event

type pb_3 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 4325
integer y = 344
integer width = 110
integer height = 96
integer taborder = 120
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

type pb_2 from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
boolean visible = false
integer x = 4325
integer y = 708
integer width = 110
integer height = 96
integer taborder = 100
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\nuevo.GIF"
long backcolor = 33554432
end type

type pb_eliminar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
boolean visible = false
integer x = 4434
integer y = 584
integer width = 457
integer height = 96
integer taborder = 130
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Eliminar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

type pb_grabar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 4434
integer y = 344
integer width = 457
integer height = 96
integer taborder = 110
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

event clicked;IF dw_nomina_enc.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro encabezado de la nomina se grabó con éxito")
	
	IF dw_nominas_det.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro detalle de la nomina se grabó con éxito")
	ELSE	
		ROLLBACK using SQLCA;
	END IF
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_nuevo from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
boolean visible = false
integer x = 4434
integer y = 708
integer width = 457
integer height = 96
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Nuevo"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_row, ll_correlativo
String ls_nomennew

if ii_focus = 1 then
	ll_row = dw_nomina_enc.InsertRow(0)
	dw_nomina_enc.SetColumn(1)
	dw_nomina_enc.ScrollToRow(ll_row)
	dw_nomina_enc.SetFocus()
	choose case ii_nomina
		case 1 //Extraordinaria
			ls_nomennew = f_db_genera_nomen_nomi(2)	
			is_nomenclatura = ls_nomennew
			dw_nomina_enc.object.nomenclatura_extraordinaria[ll_row] = ls_nomennew
			dw_nomina_enc.Object.estado_nomina[ll_row] = 1
		case 2 //Reincorporación Pensionados
			ls_nomennew = f_db_genera_nomen_nomi(5)	
			is_nomenclatura = ls_nomennew
			dw_nomina_enc.object.correlativo_rpe[ll_row] = ls_nomennew
			dw_nomina_enc.Object.estado_nomina[ll_row] = 1
		case 3 //Ampliación
			ls_nomennew = f_db_genera_nomen_nomi(3)	
			is_nomenclatura = ls_nomennew
			dw_nomina_enc.object.Nomenclatura_AMP[ll_row] = ls_nomennew
			dw_nomina_enc.Object.estado_nomina[ll_row] = 1
		case 4 //Muerte Jubilado
			ls_nomennew = f_db_genera_nomen_nomi(4)
			is_nomenclatura = ls_nomennew
			dw_nomina_enc.object.Nomenclatura_MJ[ll_row] = ls_nomennew
			dw_nomina_enc.Object.estado_nomina[ll_row] = 1
		case 5 //Reincorporación Trabajo
			ls_nomennew = f_db_genera_nomen_nomi(6)
			is_nomenclatura = ls_nomennew
			dw_nomina_enc.object.correlativo_rtr[ll_row] = ls_nomennew
			dw_nomina_enc.Object.estado_nomina[ll_row] = 1
	end choose
	dw_nomina_enc.Object.estado_nomina.Protect = 1
end if

if ii_focus = 2 then
	ll_row = dw_nominas_det.InsertRow(0)
	dw_nominas_det.SetColumn(2)
	dw_nominas_det.ScrollToRow(ll_row)
	dw_nominas_det.SetFocus()
	choose case ii_nomina
		case 1 //Extraordinaria
			ll_correlativo = f_db_genera_corr_nom_det(2)	
			dw_nominas_det.object.nomenclatura_extraordinaria[ll_row] = is_nomenclatura
		case 2 //Reincorporación Pensionados
			ll_correlativo = f_db_genera_corr_nom_det(5)	
			dw_nominas_det.object.correlativo_RPE[ll_row] = is_nomenclatura
		case 3 //Ampliación
			ll_correlativo = f_db_genera_corr_nom_det(3)	
			dw_nominas_det.object.nomenclatura_AMP[ll_row] = is_nomenclatura
		case 4 //Muerte Jubilado
			ll_correlativo = f_db_genera_corr_nom_det(4)
			dw_nominas_det.object.nomenclatura_mj[ll_row] = is_nomenclatura
		case 5 //Reincorporación Trabajo
			ll_correlativo = f_db_genera_corr_nom_det(6)
			dw_nominas_det.object.correlativo_RTR[ll_row] = is_nomenclatura
	end choose
	dw_nominas_det.object.correlativo_detalle[ll_row] = ll_row
end if

end event

type pb_salir from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 4434
integer y = 464
integer width = 457
integer height = 96
integer taborder = 70
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

event clicked;Close(w_analisis_mnt_nom_aux_cierre_pagos)
end event

type pb_buscar from picturebutton within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 2679
integer y = 144
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows, ll_rows_det

dw_nomina_enc.SetFocus()
ll_rows = dw_nomina_enc.retrieve(is_descripcion)
if ll_rows > 0 then
	pb_2.visible = false
	pb_nuevo.visible = false
	choose case ii_nomina
		case 1
			if not isnull(dw_nomina_enc.Object.Nomenclatura_Extraordinaria[ll_rows]) then
				is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_Extraordinaria[ll_rows]
			end if
		case 2
			if not isnull(dw_nomina_enc.Object.Correlativo_RPE[ll_rows]) then
				is_nomenclatura = dw_nomina_enc.Object.Correlativo_RPE[ll_rows]
			end if
		case 3
			if not isnull(dw_nomina_enc.Object.Nomenclatura_AMP[ll_rows]) then
				is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_AMP[ll_rows]
			end if
		case 4
			if not isnull(dw_nomina_enc.Object.Nomenclatura_MJ[ll_rows]) then
				is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_MJ[ll_rows]
			end if
		case 5
			if not isnull(dw_nomina_enc.Object.Correlativo_RTR[ll_rows]) then
				is_nomenclatura = dw_nomina_enc.Object.Correlativo_RTR[ll_rows]
			end if
	end choose
	ll_rows_det = dw_nominas_det.retrieve(is_nomenclatura)
	pb_cierre.visible = true
else
	pb_cierre.visible = false
end if

dw_nomina_enc.enabled = False

commit;
//activar o desactivar estado nomina, unidad = 7 desactivado, unidad =4 activado
end event

type sle_buscar from singlelineedit within w_analisis_mnt_nom_aux_cierre_pagos
boolean visible = false
integer x = 2107
integer y = 16
integer width = 594
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 33553142
borderstyle borderstyle = stylelowered!
end type

event modified;//is_descripcion = '%' + This.text + '%'

is_descripcion = This.text
If isnull (is_descripcion) Then
	is_descripcion = ''
End If
end event

type dw_nomina_enc from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 9
integer y = 352
integer width = 3456
integer height = 340
integer taborder = 30
string title = "none"
string dataobject = "d_analisis_mnt_nomina_extr"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

event getfocus;ii_focus = 1
end event

event itemchanged;choose case ii_nomina
	case 1
		if not isnull(dw_nomina_enc.Object.Nomenclatura_Extraordinaria[row]) then
			is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_Extraordinaria[row]
		end if
	case 2
		if not isnull(dw_nomina_enc.Object.Correlativo_RPE[row]) then
			is_nomenclatura = dw_nomina_enc.Object.Correlativo_RPE[row]
		end if
	case 3
		if not isnull(dw_nomina_enc.Object.Nomenclatura_AMP[row]) then
			is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_AMP[row]
		end if
	case 4
		if not isnull(dw_nomina_enc.Object.Nomenclatura_MJ[row]) then
			is_nomenclatura = dw_nomina_enc.Object.Nomenclatura_MJ[row]
		end if
	case 5
		if not isnull(dw_nomina_enc.Object.Correlativo_RTR[row]) then
			is_nomenclatura = dw_nomina_enc.Object.Correlativo_RTR[row]
		end if
end choose

il_row_enc = row
end event

type gb_doctos from groupbox within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 82
integer y = 24
integer width = 1349
integer height = 300
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Nóminas Auxiliares"
end type

type dw_nominas_det from datawindow within w_analisis_mnt_nom_aux_cierre_pagos
integer x = 9
integer y = 704
integer width = 4091
integer height = 1300
integer taborder = 40
string title = "none"
string dataobject = "d_analisis_mnt_det_nomina_extr"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

event getfocus;ii_focus = 2
pb_2.visible = true
pb_nuevo.visible = true
end event

