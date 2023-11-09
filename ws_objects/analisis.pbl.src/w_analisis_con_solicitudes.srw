$PBExportHeader$w_analisis_con_solicitudes.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_con_solicitudes from window
end type
type st_anio from statictext within w_analisis_con_solicitudes
end type
type em_anio from editmask within w_analisis_con_solicitudes
end type
type rb_anio from radiobutton within w_analisis_con_solicitudes
end type
type em_fecha2 from editmask within w_analisis_con_solicitudes
end type
type st_fecha2 from statictext within w_analisis_con_solicitudes
end type
type em_fecha1 from editmask within w_analisis_con_solicitudes
end type
type st_fecha1 from statictext within w_analisis_con_solicitudes
end type
type pb_buscar from picturebutton within w_analisis_con_solicitudes
end type
type pb_buscar1 from picturebutton within w_analisis_con_solicitudes
end type
type sle_buscar from singlelineedit within w_analisis_con_solicitudes
end type
type st_dpi from statictext within w_analisis_con_solicitudes
end type
type rb_resumen from radiobutton within w_analisis_con_solicitudes
end type
type rb_dpi from radiobutton within w_analisis_con_solicitudes
end type
type pb_nuevo from picturebutton within w_analisis_con_solicitudes
end type
type pb_grabar from picturebutton within w_analisis_con_solicitudes
end type
type pb_2 from picturebutton within w_analisis_con_solicitudes
end type
type pb_3 from picturebutton within w_analisis_con_solicitudes
end type
type dw_report from datawindow within w_analisis_con_solicitudes
end type
type gb_acciones from groupbox within w_analisis_con_solicitudes
end type
type gb_1 from groupbox within w_analisis_con_solicitudes
end type
end forward

global type w_analisis_con_solicitudes from window
integer x = 1289
integer y = 120
integer width = 4891
integer height = 2712
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
st_anio st_anio
em_anio em_anio
rb_anio rb_anio
em_fecha2 em_fecha2
st_fecha2 st_fecha2
em_fecha1 em_fecha1
st_fecha1 st_fecha1
pb_buscar pb_buscar
pb_buscar1 pb_buscar1
sle_buscar sle_buscar
st_dpi st_dpi
rb_resumen rb_resumen
rb_dpi rb_dpi
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_1 gb_1
end type
global w_analisis_con_solicitudes w_analisis_con_solicitudes

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni

String is_dpi
Datetime idt_fecha1, idt_fecha2
Integer ii_anio
end variables

on w_analisis_con_solicitudes.create
this.st_anio=create st_anio
this.em_anio=create em_anio
this.rb_anio=create rb_anio
this.em_fecha2=create em_fecha2
this.st_fecha2=create st_fecha2
this.em_fecha1=create em_fecha1
this.st_fecha1=create st_fecha1
this.pb_buscar=create pb_buscar
this.pb_buscar1=create pb_buscar1
this.sle_buscar=create sle_buscar
this.st_dpi=create st_dpi
this.rb_resumen=create rb_resumen
this.rb_dpi=create rb_dpi
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_1=create gb_1
this.Control[]={this.st_anio,&
this.em_anio,&
this.rb_anio,&
this.em_fecha2,&
this.st_fecha2,&
this.em_fecha1,&
this.st_fecha1,&
this.pb_buscar,&
this.pb_buscar1,&
this.sle_buscar,&
this.st_dpi,&
this.rb_resumen,&
this.rb_dpi,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_1}
end on

on w_analisis_con_solicitudes.destroy
destroy(this.st_anio)
destroy(this.em_anio)
destroy(this.rb_anio)
destroy(this.em_fecha2)
destroy(this.st_fecha2)
destroy(this.em_fecha1)
destroy(this.st_fecha1)
destroy(this.pb_buscar)
destroy(this.pb_buscar1)
destroy(this.sle_buscar)
destroy(this.st_dpi)
destroy(this.rb_resumen)
destroy(this.rb_dpi)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_1)
end on

event open;Long ll_row
//iuo_Parm = Message.PowerObjectParm
//
//If Not IsValid(iuo_Parm) Then
//	Beep(1)
//
//Else
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	/*dw_report.Modify("datawindow.print.preview.zoom = " + String(ii_CurrentZoom))*/
//	This.title = "Detail Report For " + trim(iuo_parm.is_Title) + " Example (Zoom: " + String(ii_CurrentZoom) + "%)"
//	Post Event ue_postopen()
	SetPointer(hourglass!)
//	dw_report.retrieve()
	st_dpi.visible = true
	sle_buscar.visible = true
	pb_buscar.visible = true
	pb_buscar1.visible = true
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	st_anio.visible = False
	em_anio.visible = False
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
//	em_depto.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type st_anio from statictext within w_analisis_con_solicitudes
integer x = 2021
integer y = 36
integer width = 178
integer height = 72
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Año:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_anio from editmask within w_analisis_con_solicitudes
integer x = 2199
integer y = 36
integer width = 201
integer height = 88
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 33553142
string text = "2019"
alignment alignment = center!
borderstyle borderstyle = stylelowered!
string mask = "#,###"
end type

event modified;ii_anio = integer(this.text)

dw_report.Retrieve(ii_anio)
dw_report.SetFocus()
commit;
end event

type rb_anio from radiobutton within w_analisis_con_solicitudes
integer x = 439
integer y = 84
integer width = 187
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Año"
end type

event clicked;If This.checked = True Then
	st_dpi.visible = false
	sle_buscar.visible = false
	pb_buscar.visible = false
	pb_buscar1.visible = false
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	st_anio.visible = True
	em_anio.visible = True
	dw_report.DataObject = "d_analisis_rep_cmp_res_solic_anio"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//dw_report.Retrieve()
	sle_buscar.setfocus()
End If
end event

type em_fecha2 from editmask within w_analisis_con_solicitudes
integer x = 1632
integer y = 152
integer width = 448
integer height = 128
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 33553142
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datetimemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

event modified;idt_fecha2 = datetime(this.text)

dw_report.Retrieve(idt_fecha1, idt_fecha2)
dw_report.SetFocus()
commit;
end event

type st_fecha2 from statictext within w_analisis_con_solicitudes
integer x = 1385
integer y = 172
integer width = 238
integer height = 72
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Fecha2:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_fecha1 from editmask within w_analisis_con_solicitudes
integer x = 928
integer y = 152
integer width = 448
integer height = 128
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 33553142
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datetimemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

event modified;idt_fecha1 = datetime(this.text)
em_fecha2.SetFocus()
end event

type st_fecha1 from statictext within w_analisis_con_solicitudes
integer x = 681
integer y = 172
integer width = 238
integer height = 72
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Fecha1:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_buscar from picturebutton within w_analisis_con_solicitudes
integer x = 2519
integer y = 32
integer width = 457
integer height = 96
integer taborder = 60
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

dw_report.SetFocus()

//f_db_get_contribuyente()

//f_db_get_solicitud()

//If rb_anio.checked = True Then
	ll_rows = dw_report.retrieve(is_dpi)
commit;
//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)

//if not isnull(ll_rows_detalle) then
//	ib_hay_detalle = true
//else
//	ib_hay_detalle = false
//end if
//



end event

type pb_buscar1 from picturebutton within w_analisis_con_solicitudes
integer x = 2414
integer y = 32
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

event clicked;Long ll_rows, ll_rows_detalle

dw_report.SetFocus()

//f_db_get_contribuyente()

//f_db_get_solicitud()

ll_rows = dw_report.retrieve(is_dpi)
//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
commit;


end event

type sle_buscar from singlelineedit within w_analisis_con_solicitudes
integer x = 878
integer y = 32
integer width = 1120
integer height = 112
integer taborder = 40
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

event modified;is_dpi = This.text

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type st_dpi from statictext within w_analisis_con_solicitudes
integer x = 681
integer y = 52
integer width = 178
integer height = 72
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "DPI:"
alignment alignment = right!
boolean focusrectangle = false
end type

type rb_resumen from radiobutton within w_analisis_con_solicitudes
integer x = 114
integer y = 184
integer width = 297
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Fechas"
end type

event clicked;If This.checked = True Then
	st_dpi.visible = False
	sle_buscar.visible = False
	pb_buscar.visible = False
	pb_buscar1.visible = False
	st_fecha1.visible = True
	st_fecha2.visible = True
	em_fecha1.visible = True
	em_fecha2.visible = True
	st_anio.visible = False
	em_anio.visible = False
	dw_report.DataObject = "d_analisis_con_solicitudes_contr_fechas"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//dw_report.Retrieve()
	em_fecha1.setfocus()
End If
end event

type rb_dpi from radiobutton within w_analisis_con_solicitudes
integer x = 114
integer y = 84
integer width = 297
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "D. P. I."
boolean checked = true
end type

event clicked;If This.checked = True Then
	st_dpi.visible = true
	sle_buscar.visible = true
	pb_buscar.visible = true
	pb_buscar1.visible = true
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	st_anio.visible = False
	em_anio.visible = False
	dw_report.DataObject = "d_analisis_con_solicitudes_contribuyentes"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//dw_report.Retrieve()
	sle_buscar.setfocus()
End If
end event

type pb_nuevo from picturebutton within w_analisis_con_solicitudes
integer x = 4366
integer y = 88
integer width = 402
integer height = 96
integer taborder = 50
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

type pb_grabar from picturebutton within w_analisis_con_solicitudes
integer x = 4366
integer y = 224
integer width = 402
integer height = 96
integer taborder = 50
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

event clicked;Close(w_analisis_con_solicitudes)
end event

type pb_2 from picturebutton within w_analisis_con_solicitudes
integer x = 4261
integer y = 88
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer.png"
long backcolor = 33554432
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_3 from picturebutton within w_analisis_con_solicitudes
integer x = 4261
integer y = 224
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Exit.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_con_solicitudes)
end event

type dw_report from datawindow within w_analisis_con_solicitudes
integer x = 32
integer y = 320
integer width = 4178
integer height = 2244
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_con_solicitudes_contribuyentes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_con_solicitudes
integer x = 4242
integer width = 553
integer height = 356
integer taborder = 30
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

type gb_1 from groupbox within w_analisis_con_solicitudes
integer x = 37
integer width = 626
integer height = 292
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Tipo Consulta"
end type

