$PBExportHeader$w_analisis_rep_dictamen_juridico.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_dictamen_juridico from window
end type
type pb_2 from picturebutton within w_analisis_rep_dictamen_juridico
end type
type pb_3 from picturebutton within w_analisis_rep_dictamen_juridico
end type
type pb_5 from picturebutton within w_analisis_rep_dictamen_juridico
end type
type pb_6 from picturebutton within w_analisis_rep_dictamen_juridico
end type
type sle_buscar from singlelineedit within w_analisis_rep_dictamen_juridico
end type
type pb_buscar from picturebutton within w_analisis_rep_dictamen_juridico
end type
type pb_buscar1 from picturebutton within w_analisis_rep_dictamen_juridico
end type
type st_1 from statictext within w_analisis_rep_dictamen_juridico
end type
type dw_rep from datawindow within w_analisis_rep_dictamen_juridico
end type
type gb_1 from groupbox within w_analisis_rep_dictamen_juridico
end type
end forward

global type w_analisis_rep_dictamen_juridico from window
integer width = 4457
integer height = 2288
boolean titlebar = true
string title = ".:. PPEM SIG - Módulo Análisis - Dictámen Jurídico .:."
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
pb_2 pb_2
pb_3 pb_3
pb_5 pb_5
pb_6 pb_6
sle_buscar sle_buscar
pb_buscar pb_buscar
pb_buscar1 pb_buscar1
st_1 st_1
dw_rep dw_rep
gb_1 gb_1
end type
global w_analisis_rep_dictamen_juridico w_analisis_rep_dictamen_juridico

type variables
String is_dpi
end variables

on w_analisis_rep_dictamen_juridico.create
this.pb_2=create pb_2
this.pb_3=create pb_3
this.pb_5=create pb_5
this.pb_6=create pb_6
this.sle_buscar=create sle_buscar
this.pb_buscar=create pb_buscar
this.pb_buscar1=create pb_buscar1
this.st_1=create st_1
this.dw_rep=create dw_rep
this.gb_1=create gb_1
this.Control[]={this.pb_2,&
this.pb_3,&
this.pb_5,&
this.pb_6,&
this.sle_buscar,&
this.pb_buscar,&
this.pb_buscar1,&
this.st_1,&
this.dw_rep,&
this.gb_1}
end on

on w_analisis_rep_dictamen_juridico.destroy
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.pb_5)
destroy(this.pb_6)
destroy(this.sle_buscar)
destroy(this.pb_buscar)
destroy(this.pb_buscar1)
destroy(this.st_1)
destroy(this.dw_rep)
destroy(this.gb_1)
end on

type pb_2 from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 3927
integer y = 88
integer width = 402
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 16813032
end type

event clicked;OpenWithParm(w_print_options, dw_rep)

If Message.DoubleParm = -1 Then Return
dw_rep.Print(True)
end event

type pb_3 from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 3822
integer y = 224
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

event clicked;Close(w_analisis_rep_dictamen_juridico)
end event

type pb_5 from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 3822
integer y = 88
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer.png"
end type

event clicked;OpenWithParm(w_print_options, dw_rep)

If Message.DoubleParm = -1 Then Return
dw_rep.Print(True)
end event

type pb_6 from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 3927
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

event clicked;Close(w_analisis_rep_dictamen_juridico)
end event

type sle_buscar from singlelineedit within w_analisis_rep_dictamen_juridico
integer x = 293
integer y = 44
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
long backcolor = 33553142
borderstyle borderstyle = stylelowered!
end type

event modified;is_dpi = This.text

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type pb_buscar from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 1586
integer y = 44
integer width = 457
integer height = 96
integer taborder = 20
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

dw_rep.SetFocus()

//f_db_get_contribuyente()

//f_db_get_solicitud()

ll_rows = dw_rep.retrieve(is_dpi)
//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)

//if not isnull(ll_rows_detalle) then
//	ib_hay_detalle = true
//else
//	ib_hay_detalle = false
//end if
//



end event

type pb_buscar1 from picturebutton within w_analisis_rep_dictamen_juridico
integer x = 1481
integer y = 44
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

event clicked;Long ll_rows, ll_rows_detalle

dw_rep.SetFocus()

//f_db_get_contribuyente()

//f_db_get_solicitud()

ll_rows = dw_rep.retrieve(is_dpi)
//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)



end event

type st_1 from statictext within w_analisis_rep_dictamen_juridico
integer x = 96
integer y = 64
integer width = 178
integer height = 72
integer textsize = -11
integer weight = 400
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

type dw_rep from datawindow within w_analisis_rep_dictamen_juridico
integer x = 37
integer y = 192
integer width = 3735
integer height = 1952
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_rep_dictamen_juridico_new"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.SetTransObject(sqlca)
this.Modify("DataWindow.Print.Preview=Yes")
end event

type gb_1 from groupbox within w_analisis_rep_dictamen_juridico
integer x = 3803
integer width = 553
integer height = 356
integer taborder = 30
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

