$PBExportHeader$w_analisis_rep_providencia_gerencia.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_providencia_gerencia from window
end type
type pb_1 from picturebutton within w_analisis_rep_providencia_gerencia
end type
type pb_4 from picturebutton within w_analisis_rep_providencia_gerencia
end type
type pb_salir from picturebutton within w_analisis_rep_providencia_gerencia
end type
type pb_nuevo from picturebutton within w_analisis_rep_providencia_gerencia
end type
type sle_buscar from singlelineedit within w_analisis_rep_providencia_gerencia
end type
type pb_buscar from picturebutton within w_analisis_rep_providencia_gerencia
end type
type pb_buscar1 from picturebutton within w_analisis_rep_providencia_gerencia
end type
type st_1 from statictext within w_analisis_rep_providencia_gerencia
end type
type dw_rep from datawindow within w_analisis_rep_providencia_gerencia
end type
type gb_acciones from groupbox within w_analisis_rep_providencia_gerencia
end type
end forward

global type w_analisis_rep_providencia_gerencia from window
integer x = 1289
integer y = 120
integer width = 3863
integer height = 2288
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
pb_1 pb_1
pb_4 pb_4
pb_salir pb_salir
pb_nuevo pb_nuevo
sle_buscar sle_buscar
pb_buscar pb_buscar
pb_buscar1 pb_buscar1
st_1 st_1
dw_rep dw_rep
gb_acciones gb_acciones
end type
global w_analisis_rep_providencia_gerencia w_analisis_rep_providencia_gerencia

type variables
String is_dpi
end variables

on w_analisis_rep_providencia_gerencia.create
this.pb_1=create pb_1
this.pb_4=create pb_4
this.pb_salir=create pb_salir
this.pb_nuevo=create pb_nuevo
this.sle_buscar=create sle_buscar
this.pb_buscar=create pb_buscar
this.pb_buscar1=create pb_buscar1
this.st_1=create st_1
this.dw_rep=create dw_rep
this.gb_acciones=create gb_acciones
this.Control[]={this.pb_1,&
this.pb_4,&
this.pb_salir,&
this.pb_nuevo,&
this.sle_buscar,&
this.pb_buscar,&
this.pb_buscar1,&
this.st_1,&
this.dw_rep,&
this.gb_acciones}
end on

on w_analisis_rep_providencia_gerencia.destroy
destroy(this.pb_1)
destroy(this.pb_4)
destroy(this.pb_salir)
destroy(this.pb_nuevo)
destroy(this.sle_buscar)
destroy(this.pb_buscar)
destroy(this.pb_buscar1)
destroy(this.st_1)
destroy(this.dw_rep)
destroy(this.gb_acciones)
end on

type pb_1 from picturebutton within w_analisis_rep_providencia_gerencia
integer x = 2459
integer y = 80
integer width = 151
integer height = 140
integer taborder = 30
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

type pb_4 from picturebutton within w_analisis_rep_providencia_gerencia
integer x = 2866
integer y = 80
integer width = 151
integer height = 140
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_rep_providencia_gerencia)
end event

type pb_salir from picturebutton within w_analisis_rep_providencia_gerencia
integer x = 3008
integer y = 80
integer width = 251
integer height = 140
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Close(w_analisis_rep_providencia_gerencia)
end event

type pb_nuevo from picturebutton within w_analisis_rep_providencia_gerencia
integer x = 2601
integer y = 80
integer width = 261
integer height = 140
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;OpenWithParm(w_print_options, dw_rep)

If Message.DoubleParm = -1 Then Return
dw_rep.Print(True)
end event

type sle_buscar from singlelineedit within w_analisis_rep_providencia_gerencia
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
borderstyle borderstyle = stylelowered!
end type

event modified;is_dpi = This.text

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type pb_buscar from picturebutton within w_analisis_rep_providencia_gerencia
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

type pb_buscar1 from picturebutton within w_analisis_rep_providencia_gerencia
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

type st_1 from statictext within w_analisis_rep_providencia_gerencia
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
long textcolor = 33554432
long backcolor = 553648127
string text = "DPI:"
alignment alignment = right!
boolean focusrectangle = false
end type

type dw_rep from datawindow within w_analisis_rep_providencia_gerencia
integer x = 37
integer y = 408
integer width = 3735
integer height = 1736
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_rep_providencia_gerencia_new"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.SetTransObject(sqlca)
this.Modify("DataWindow.Print.Preview=Yes")
end event

type gb_acciones from groupbox within w_analisis_rep_providencia_gerencia
integer x = 2427
integer width = 869
integer height = 252
integer taborder = 10
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

