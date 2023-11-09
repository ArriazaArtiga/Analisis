$PBExportHeader$w_analisis_mnt_nominas_cierres.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_nominas_cierres from window
end type
type dw_nomina_gral from datawindow within w_analisis_mnt_nominas_cierres
end type
type pb_extr from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_rpen from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_mj from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_rtra from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_gral from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_amp from picturebutton within w_analisis_mnt_nominas_cierres
end type
type dw_rpen_det from datawindow within w_analisis_mnt_nominas_cierres
end type
type dw_extr_det from datawindow within w_analisis_mnt_nominas_cierres
end type
type pb_cierre from picturebutton within w_analisis_mnt_nominas_cierres
end type
type st_1 from statictext within w_analisis_mnt_nominas_cierres
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_4 from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_3 from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_2 from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_eliminar from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_grabar from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_nuevo from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_salir from picturebutton within w_analisis_mnt_nominas_cierres
end type
type pb_buscar from picturebutton within w_analisis_mnt_nominas_cierres
end type
type sle_buscar from singlelineedit within w_analisis_mnt_nominas_cierres
end type
type dw_nomina_enc from datawindow within w_analisis_mnt_nominas_cierres
end type
type dw_nominas_det from datawindow within w_analisis_mnt_nominas_cierres
end type
end forward

global type w_analisis_mnt_nominas_cierres from window
integer x = 1550
integer y = 120
integer width = 3031
integer height = 1792
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = centeranimation!
dw_nomina_gral dw_nomina_gral
pb_extr pb_extr
pb_rpen pb_rpen
pb_mj pb_mj
pb_rtra pb_rtra
pb_gral pb_gral
pb_amp pb_amp
dw_rpen_det dw_rpen_det
dw_extr_det dw_extr_det
pb_cierre pb_cierre
st_1 st_1
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
dw_nominas_det dw_nominas_det
end type
global w_analisis_mnt_nominas_cierres w_analisis_mnt_nominas_cierres

type variables
Long il_row_enc, il_corr_ant
String is_descripcion, is_nomenclatura, is_desc_nom
Integer ii_focus, ii_nomina
DateTime idt_fecha
end variables

on w_analisis_mnt_nominas_cierres.create
this.dw_nomina_gral=create dw_nomina_gral
this.pb_extr=create pb_extr
this.pb_rpen=create pb_rpen
this.pb_mj=create pb_mj
this.pb_rtra=create pb_rtra
this.pb_gral=create pb_gral
this.pb_amp=create pb_amp
this.dw_rpen_det=create dw_rpen_det
this.dw_extr_det=create dw_extr_det
this.pb_cierre=create pb_cierre
this.st_1=create st_1
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
this.dw_nominas_det=create dw_nominas_det
this.Control[]={this.dw_nomina_gral,&
this.pb_extr,&
this.pb_rpen,&
this.pb_mj,&
this.pb_rtra,&
this.pb_gral,&
this.pb_amp,&
this.dw_rpen_det,&
this.dw_extr_det,&
this.pb_cierre,&
this.st_1,&
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
this.dw_nominas_det}
end on

on w_analisis_mnt_nominas_cierres.destroy
destroy(this.dw_nomina_gral)
destroy(this.pb_extr)
destroy(this.pb_rpen)
destroy(this.pb_mj)
destroy(this.pb_rtra)
destroy(this.pb_gral)
destroy(this.pb_amp)
destroy(this.dw_rpen_det)
destroy(this.dw_extr_det)
destroy(this.pb_cierre)
destroy(this.st_1)
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

pb_amp.visible = false
pb_extr.visible = false
pb_rpen.visible = false
pb_mj.visible = false
pb_rtra.visible = false
pb_gral.visible = false

ll_rows = dw_nomina_gral.InsertRow(0)
dw_nomina_gral.ScrollToRow(ll_rows)
dw_nomina_gral.SetFocus()

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

//If rb_extraordinaria.checked = True Then
//	dw_nomina_enc.DataObject = "d_analisis_mnt_nomina_extr"
//	dw_nominas_det.DataObject = "d_analisis_mnt_det_nomina_extr"
//	dw_nomina_enc.SetTransObject(sqlca)
//	dw_nominas_det.SetTransObject(sqlca)
////	dw_nomina_enc.Modify("DataWindow.Print.Preview=Yes")
////	dw_nominas_det.Modify("DataWindow.Print.Preview=Yes")
////	dw_nomina_enc.Retrieve(is_dpi)
////	dw_nominas_det.Retrieve(is_dpi)
//	ii_nomina = 1
//End If
//
sle_buscar.setfocus()
Commit;






end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type dw_nomina_gral from datawindow within w_analisis_mnt_nominas_cierres
integer x = 475
integer y = 28
integer width = 466
integer height = 104
integer taborder = 70
string title = "none"
string dataobject = "dddw_nomina_gral"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

event itemchanged;Long ll_rows

This.AcceptText()

is_descripcion = This.object.nomenclatura_general[row]
//dw_report.SetFocus()
//ll_rows = dw_report.retrieve(ii_depto)

commit;
end event

type pb_extr from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 512
integer y = 516
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Extr. Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type pb_rpen from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 987
integer y = 516
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "RPen Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type pb_mj from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 37
integer y = 640
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "MJ Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type pb_rtra from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 512
integer y = 640
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "RTra Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type pb_gral from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 987
integer y = 640
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Gral. Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type pb_amp from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 37
integer y = 516
integer width = 457
integer height = 108
integer taborder = 140
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Amp. Procesada"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 65280
end type

type dw_rpen_det from datawindow within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1134
integer y = 800
integer width = 517
integer height = 164
integer taborder = 50
string title = "none"
string dataobject = "d_analisis_con_nomina_rpen_cierre"
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

type dw_extr_det from datawindow within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 585
integer y = 800
integer width = 517
integer height = 164
integer taborder = 50
string title = "none"
string dataobject = "d_analisis_con_nomina_extr_cierre"
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

type pb_cierre from picturebutton within w_analisis_mnt_nominas_cierres
integer x = 2487
integer y = 160
integer width = 457
integer height = 96
integer taborder = 60
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

dw_nomina_enc.Object.Estado_Nomina[il_row_enc] = 2  //se cierra nomina
ls_new_nomen = f_db_ins_nom_gral() //se genera nuevo encabezado de nomina

for ll_i=1 to ll_rows_det_gral   //Copia de detalle de la nomina general
	li_tipo_pensionado = dw_nominas_det.Object.Tipo_Pensionado[ll_i]
	ls_resolucion = dw_nominas_det.Object.Resolucion[ll_i]
	ls_dpi = dw_nominas_det.Object.DPI[ll_i]
	ls_cta_bco = dw_nominas_det.Object.Cuenta_Banco[ll_i]
	li_anios = dw_nominas_det.Object.Años_Laborados[ll_i]
	li_meses = dw_nominas_det.Object.Meses_Laborados[ll_i]
	li_dias = dw_nominas_det.Object.Dias_Laborados[ll_i]
	ldc_monto = dw_nominas_det.Object.Monto_Pension[ll_i]
	
	f_db_ins_nom_gral_det(ls_new_nomen,li_tipo_pensionado,ls_resolucion,ls_dpi,ls_cta_bco,li_anios,li_meses,li_dias,ldc_monto)
next

f_db_upd_nom_gral_amp() 	// Actualiza nomina general con ampliaciones (aumentos de pensión)
//f_upd_nom_amp_cierre()	// Cierre de nómina auxiliar de ampliaciones
pb_amp.visible = true

ll_rows_det_extr = dw_extr_det.retrieve()

for ll_i=1 to ll_rows_det_extr   //Inserta registros de la nómina extraordianria a la general
	li_tipo_pensionado = dw_extr_det.Object.nomina_extraordinaria_detalle_tipo_pensionado[ll_i]
	ls_resolucion = dw_extr_det.Object.nomina_extraordinaria_detalle_resolucion[ll_i]
	ls_dpi = dw_extr_det.Object.nomina_extraordinaria_detalle_dpi[ll_i]
	ls_cta_bco = dw_extr_det.Object.nomina_extraordinaria_detalle_cuenta_banco[ll_i]
	li_anios = dw_extr_det.Object.nomina_extraordinaria_detalle_años_laborados[ll_i]
	li_meses = dw_extr_det.Object.nomina_extraordinaria_detalle_meses_laborados[ll_i]
	li_dias = dw_extr_det.Object.nomina_extraordinaria_detalle_dias_laborados[ll_i]
	ldc_monto = dw_extr_det.Object.nomina_extraordinaria_detalle_monto_pension[ll_i]
	
	f_db_ins_nom_gral_det(ls_new_nomen,li_tipo_pensionado,ls_resolucion,ls_dpi,ls_cta_bco,li_anios,li_meses,li_dias,ldc_monto)
next
f_upd_nom_extr_cierre()	 // Cierre de nómina auxiliar extraordinaria
pb_extr.visible = true

ll_rows_det_rpen = dw_rpen_det.retrieve()

for ll_i=1 to ll_rows_det_rpen   //Inserta registros de la nómina reincorporacion pensionados a la general
	li_tipo_pensionado = dw_rpen_det.Object.nomina_reinc_pen_detalle_tipo_pensionado[ll_i]
	ls_resolucion = dw_rpen_det.Object.nomina_reinc_pen_detalle_resolucion[ll_i]
	ls_dpi = dw_rpen_det.Object.nomina_reinc_pen_detalle_dpi[ll_i]
	ls_cta_bco = dw_rpen_det.Object.nomina_reinc_pen_detalle_cuenta_banco[ll_i]
	li_anios = dw_rpen_det.Object.nomina_reinc_pen_detalle_años_laborados[ll_i]
	li_meses = dw_rpen_det.Object.nomina_reinc_pen_detalle_meses_laborados[ll_i]
	li_dias = dw_rpen_det.Object.nomina_reinc_pen_detalle_dias_laborados[ll_i]
	ldc_monto = dw_rpen_det.Object.nomina_reinc_pen_detalle_monto_pension[ll_i]
	
	f_db_ins_nom_gral_det(ls_new_nomen,li_tipo_pensionado,ls_resolucion,ls_dpi,ls_cta_bco,li_anios,li_meses,li_dias,ldc_monto)
next
f_upd_nom_rpen_cierre()	 // Cierre de nómina auxiliar Reincorporacion pensionados
pb_rpen.visible = true

f_db_del_nom_gral_mj(ls_new_nomen)		// Elimina nomina general con muerte jubilado
f_upd_nom_mj_cierre()	 						// Cierre de nómina auxiliar muerte jubilado
pb_mj.visible = true

f_db_del_nom_gral_rtra(ls_new_nomen)	// Elimina nomina general con Reincorporacion trabajo
f_upd_nom_rtra_cierre()	 						// Cierre de nómina auxiliar Reincorporacion trabajo
pb_rtra.visible = true

f_upd_nom_gral_cierre()	 // Cierre de nómina general

commit;
MessageBox('Información','Cierre Realizado con exito.')
pb_gral.visible = true
pb_cierre.visible = false
////activar o desactivar estado nomina, unidad = 7 desactivado, unidad =4 activado
end event

type st_1 from statictext within w_analisis_mnt_nominas_cierres
integer x = 23
integer y = 36
integer width = 457
integer height = 76
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Nomenclatura:"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_buscar1 from picturebutton within w_analisis_mnt_nominas_cierres
integer x = 942
integer y = 24
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Pensionados\Resources\buscar.png"
vtextalign vtextalign = vcenter!
long backcolor = 0
end type

type pb_4 from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1787
integer y = 748
integer width = 110
integer height = 96
integer taborder = 80
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Pensionados\Resources\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_mnt_nominas_cierres)
end event

type pb_3 from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1787
integer y = 628
integer width = 110
integer height = 96
integer taborder = 120
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Pensionados\Resources\guardar.png"
long backcolor = 33554432
end type

type pb_2 from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1787
integer y = 508
integer width = 110
integer height = 96
integer taborder = 100
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Pensionados\Resources\nuevo.GIF"
long backcolor = 33554432
end type

type pb_eliminar from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1897
integer y = 868
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

type pb_grabar from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1897
integer y = 628
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

type pb_nuevo from picturebutton within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1897
integer y = 508
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
			dw_nomina_enc.object.Correlativo_RPE[ll_row] = ls_nomennew
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
			dw_nomina_enc.object.Nomenclatura_Extrordinaria[ll_row] = ls_nomennew
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
//			dw_nominas_det.object.correlativo_RPE[ll_row] = is_nomenclatura
		case 3 //Ampliación
			ll_correlativo = f_db_genera_corr_nom_det(3)	
//			dw_nominas_det.object.nomenclatura_extraordinaria[ll_row] = is_nomenclatura
		case 4 //Muerte Jubilado
			ll_correlativo = f_db_genera_corr_nom_det(4)
//			dw_nominas_det.object.nomenclatura_extraordinaria[ll_row] = is_nomenclatura
		case 5 //Reincorporación Trabajo
			ll_correlativo = f_db_genera_corr_nom_det(6)
//			dw_nominas_det.object.nomenclatura_extraordinaria[ll_row] = is_nomenclatura
	end choose
	dw_nominas_det.object.correlativo_detalle[ll_row] = ll_row
end if

end event

type pb_salir from picturebutton within w_analisis_mnt_nominas_cierres
integer x = 2487
integer y = 404
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

event clicked;Close(w_analisis_mnt_nominas_cierres)
end event

type pb_buscar from picturebutton within w_analisis_mnt_nominas_cierres
integer x = 1051
integer y = 24
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
Integer li_estado

dw_nomina_enc.SetFocus()
ll_rows = dw_nomina_enc.retrieve(is_descripcion)
il_row_enc = ll_rows
if ll_rows > 0 then
	pb_2.visible = false
	pb_nuevo.visible = false
	li_estado = dw_nomina_enc.Object.Estado_Nomina[ll_rows]
	is_desc_nom = dw_nomina_enc.Object.Descripcion[ll_rows]
	idt_fecha = dw_nomina_enc.Object.Fecha[ll_rows]
	If li_estado = 2 Then
		dw_nomina_enc.Object.Estado_Nomina.protect = 1
		dw_nomina_enc.Object.Fecha.protect = 1
		dw_nomina_enc.Object.Descripcion.protect = 1
		pb_cierre.visible = false
	else
		dw_nomina_enc.Object.Estado_Nomina.protect = 0
		dw_nomina_enc.Object.Fecha.protect = 0
		dw_nomina_enc.Object.Descripcion.protect = 0
		pb_cierre.visible = true
	End If
else
	pb_cierre.visible = false
end if

commit;

end event

type sle_buscar from singlelineedit within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 1723
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

type dw_nomina_enc from datawindow within w_analisis_mnt_nominas_cierres
integer x = 37
integer y = 160
integer width = 2418
integer height = 340
integer taborder = 30
string title = "none"
string dataobject = "d_analisis_mnt_nomina_gral"
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

type dw_nominas_det from datawindow within w_analisis_mnt_nominas_cierres
boolean visible = false
integer x = 37
integer y = 800
integer width = 517
integer height = 164
integer taborder = 40
string title = "none"
string dataobject = "d_analisis_mnt_det_nomina_gral"
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

