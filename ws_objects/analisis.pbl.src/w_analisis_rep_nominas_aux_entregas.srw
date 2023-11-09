$PBExportHeader$w_analisis_rep_nominas_aux_entregas.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_nominas_aux_entregas from window
end type
type pb_exportar from picturebutton within w_analisis_rep_nominas_aux_entregas
end type
type rb_nom_rtra from radiobutton within w_analisis_rep_nominas_aux_entregas
end type
type rb_nom_rpen from radiobutton within w_analisis_rep_nominas_aux_entregas
end type
type rb_nom_mj from radiobutton within w_analisis_rep_nominas_aux_entregas
end type
type rb_nom_ampl from radiobutton within w_analisis_rep_nominas_aux_entregas
end type
type rb_nom_extr from radiobutton within w_analisis_rep_nominas_aux_entregas
end type
type em_nomina from editmask within w_analisis_rep_nominas_aux_entregas
end type
type st_1 from statictext within w_analisis_rep_nominas_aux_entregas
end type
type pb_imprimir from picturebutton within w_analisis_rep_nominas_aux_entregas
end type
type pb_salir from picturebutton within w_analisis_rep_nominas_aux_entregas
end type
type pb_2 from picturebutton within w_analisis_rep_nominas_aux_entregas
end type
type pb_3 from picturebutton within w_analisis_rep_nominas_aux_entregas
end type
type dw_report from datawindow within w_analisis_rep_nominas_aux_entregas
end type
type gb_acciones from groupbox within w_analisis_rep_nominas_aux_entregas
end type
type gb_doctos from groupbox within w_analisis_rep_nominas_aux_entregas
end type
end forward

global type w_analisis_rep_nominas_aux_entregas from window
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
pb_exportar pb_exportar
rb_nom_rtra rb_nom_rtra
rb_nom_rpen rb_nom_rpen
rb_nom_mj rb_nom_mj
rb_nom_ampl rb_nom_ampl
rb_nom_extr rb_nom_extr
em_nomina em_nomina
st_1 st_1
pb_imprimir pb_imprimir
pb_salir pb_salir
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_doctos gb_doctos
end type
global w_analisis_rep_nominas_aux_entregas w_analisis_rep_nominas_aux_entregas

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni

String is_nomina
end variables

on w_analisis_rep_nominas_aux_entregas.create
this.pb_exportar=create pb_exportar
this.rb_nom_rtra=create rb_nom_rtra
this.rb_nom_rpen=create rb_nom_rpen
this.rb_nom_mj=create rb_nom_mj
this.rb_nom_ampl=create rb_nom_ampl
this.rb_nom_extr=create rb_nom_extr
this.em_nomina=create em_nomina
this.st_1=create st_1
this.pb_imprimir=create pb_imprimir
this.pb_salir=create pb_salir
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_doctos=create gb_doctos
this.Control[]={this.pb_exportar,&
this.rb_nom_rtra,&
this.rb_nom_rpen,&
this.rb_nom_mj,&
this.rb_nom_ampl,&
this.rb_nom_extr,&
this.em_nomina,&
this.st_1,&
this.pb_imprimir,&
this.pb_salir,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_doctos}
end on

on w_analisis_rep_nominas_aux_entregas.destroy
destroy(this.pb_exportar)
destroy(this.rb_nom_rtra)
destroy(this.rb_nom_rpen)
destroy(this.rb_nom_mj)
destroy(this.rb_nom_ampl)
destroy(this.rb_nom_extr)
destroy(this.em_nomina)
destroy(this.st_1)
destroy(this.pb_imprimir)
destroy(this.pb_salir)
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
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	/*dw_report.Modify("datawindow.print.preview.zoom = " + String(ii_CurrentZoom))*/
//	This.title = "Detail Report For " + trim(iuo_parm.is_Title) + " Example (Zoom: " + String(ii_CurrentZoom) + "%)"
//	Post Event ue_postopen()
	SetPointer(hourglass!)
//	rb_nom_gral.SetFocus()
//	dw_report.retrieve()
//	commit;
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
//	em_depto.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type pb_exportar from picturebutton within w_analisis_rep_nominas_aux_entregas
integer x = 4402
integer y = 68
integer width = 402
integer height = 96
integer taborder = 90
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Exportar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 22362409
end type

event clicked;//OpenWithParm(w_print_options, dw_report)

//If Message.DoubleParm = -1 Then Return
//dw_report.Print(True)

//if rb_nom_gral.checked = True Then
//	dw_report.DataObject = "d_analisis_rep_nom_gral_pen_sicoin"
//end if

if rb_nom_extr.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_extr_pen_sicoin"
end if

if rb_nom_ampl.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_ampl_pen_sicoin"
end if

if rb_nom_mj.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_mj_pen_sicoin"
end if

if rb_nom_rpen.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_rpen_pen_sicoin"
end if

if rb_nom_rtra.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_rtra_pen_sicoin"
end if

dw_report.SetTransObject(sqlca)
dw_report.Modify("DataWindow.Print.Preview=Yes")
dw_report.retrieve(is_nomina)
commit;
dw_report.SaveAs("", CSV!, true)
end event

type rb_nom_rtra from radiobutton within w_analisis_rep_nominas_aux_entregas
integer x = 1792
integer y = 84
integer width = 379
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Reinc. Trab."
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_rtra_pen_aux_ent"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//pb_exportar.visible = false
End If
end event

type rb_nom_rpen from radiobutton within w_analisis_rep_nominas_aux_entregas
integer x = 1426
integer y = 84
integer width = 357
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Reinc. Pen."
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_rpen_pen_aux_ent"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//pb_exportar.visible = false
End If
end event

type rb_nom_mj from radiobutton within w_analisis_rep_nominas_aux_entregas
integer x = 923
integer y = 84
integer width = 494
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Muerte Jubilado"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_mj_pen_aux_ent"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//pb_exportar.visible = false
End If
end event

type rb_nom_ampl from radiobutton within w_analisis_rep_nominas_aux_entregas
integer x = 544
integer y = 84
integer width = 370
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Ampliación"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_ampl_pen_aux_ent"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//pb_exportar.visible = false
End If
end event

type rb_nom_extr from radiobutton within w_analisis_rep_nominas_aux_entregas
integer x = 82
integer y = 84
integer width = 453
integer height = 80
integer textsize = -10
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

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_nom_extr_pen_aux_ent"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//pb_exportar.visible = false
End If
end event

type em_nomina from editmask within w_analisis_rep_nominas_aux_entregas
integer x = 2629
integer y = 76
integer width = 407
integer height = 100
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
alignment alignment = center!
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
string mask = "xxxxxxxxxx"
end type

event modified;String ls_nomina

//If rb_nom_gral.checked = True Then
//	pb_exportar.visible = true
//end if

ls_nomina = this.text
is_nomina = ls_nomina
dw_report.retrieve(ls_nomina)
Commit;
end event

type st_1 from statictext within w_analisis_rep_nominas_aux_entregas
integer x = 2194
integer y = 84
integer width = 434
integer height = 88
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 67108864
string text = "Nomenclatura:"
boolean focusrectangle = false
end type

type pb_imprimir from picturebutton within w_analisis_rep_nominas_aux_entregas
integer x = 4402
integer y = 200
integer width = 402
integer height = 96
integer taborder = 70
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
long backcolor = 22362409
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_salir from picturebutton within w_analisis_rep_nominas_aux_entregas
integer x = 4402
integer y = 336
integer width = 402
integer height = 96
integer taborder = 80
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
long backcolor = 22362409
end type

event clicked;Close(w_analisis_rep_nominas_aux_entregas)
end event

type pb_2 from picturebutton within w_analisis_rep_nominas_aux_entregas
integer x = 4297
integer y = 200
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer black.png"
long backcolor = 33554432
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_3 from picturebutton within w_analisis_rep_nominas_aux_entregas
integer x = 4297
integer y = 336
integer width = 110
integer height = 96
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Exit.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_rep_nominas_aux_entregas)
end event

type dw_report from datawindow within w_analisis_rep_nominas_aux_entregas
integer x = 32
integer y = 192
integer width = 4215
integer height = 2372
integer taborder = 30
string title = "none"
string dataobject = "d_analisis_rep_nom_extr_pen_aux_ent"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_nominas_aux_entregas
integer x = 4279
integer width = 553
integer height = 460
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

type gb_doctos from groupbox within w_analisis_rep_nominas_aux_entregas
integer x = 32
integer width = 2153
integer height = 188
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Nóminas de Pensionados"
end type

