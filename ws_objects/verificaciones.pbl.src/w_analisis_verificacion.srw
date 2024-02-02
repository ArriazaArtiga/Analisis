$PBExportHeader$w_analisis_verificacion.srw
forward
global type w_analisis_verificacion from window
end type
type cb_7 from commandbutton within w_analisis_verificacion
end type
type cb_6 from commandbutton within w_analisis_verificacion
end type
type cb_4 from commandbutton within w_analisis_verificacion
end type
type cb_3 from commandbutton within w_analisis_verificacion
end type
type cb_2 from commandbutton within w_analisis_verificacion
end type
type dw_2 from datawindow within w_analisis_verificacion
end type
type dw_1 from datawindow within w_analisis_verificacion
end type
type cb_1 from commandbutton within w_analisis_verificacion
end type
type pb_1 from picturebutton within w_analisis_verificacion
end type
type codigo from singlelineedit within w_analisis_verificacion
end type
type gb_1 from groupbox within w_analisis_verificacion
end type
type gb_2 from groupbox within w_analisis_verificacion
end type
end forward

global type w_analisis_verificacion from window
integer width = 3762
integer height = 2160
boolean titlebar = true
string title = "Verificaciones"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_7 cb_7
cb_6 cb_6
cb_4 cb_4
cb_3 cb_3
cb_2 cb_2
dw_2 dw_2
dw_1 dw_1
cb_1 cb_1
pb_1 pb_1
codigo codigo
gb_1 gb_1
gb_2 gb_2
end type
global w_analisis_verificacion w_analisis_verificacion

on w_analisis_verificacion.create
this.cb_7=create cb_7
this.cb_6=create cb_6
this.cb_4=create cb_4
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_2=create dw_2
this.dw_1=create dw_1
this.cb_1=create cb_1
this.pb_1=create pb_1
this.codigo=create codigo
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_7,&
this.cb_6,&
this.cb_4,&
this.cb_3,&
this.cb_2,&
this.dw_2,&
this.dw_1,&
this.cb_1,&
this.pb_1,&
this.codigo,&
this.gb_1,&
this.gb_2}
end on

on w_analisis_verificacion.destroy
destroy(this.cb_7)
destroy(this.cb_6)
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.cb_1)
destroy(this.pb_1)
destroy(this.codigo)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;dw_1.SetTransObject(sqlca)
end event

type cb_7 from commandbutton within w_analisis_verificacion
integer x = 3209
integer y = 980
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Agregar"
end type

type cb_6 from commandbutton within w_analisis_verificacion
integer x = 3209
integer y = 1148
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modificar"
end type

type cb_4 from commandbutton within w_analisis_verificacion
integer x = 3109
integer y = 608
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Borrar"
end type

type cb_3 from commandbutton within w_analisis_verificacion
integer x = 3109
integer y = 440
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modificar"
end type

type cb_2 from commandbutton within w_analisis_verificacion
integer x = 3109
integer y = 272
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Nuevo"
end type

type dw_2 from datawindow within w_analisis_verificacion
integer x = 46
integer y = 1028
integer width = 3045
integer height = 948
integer taborder = 40
string title = "none"
string dataobject = "grid_detalleverificacion"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_analisis_verificacion
integer x = 55
integer y = 276
integer width = 2903
integer height = 448
integer taborder = 30
string title = "none"
string dataobject = "freefrom_encabezadoverificacion"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_analisis_verificacion
integer x = 1403
integer y = 60
integer width = 631
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Reporte"
end type

event clicked;messagebox("s",string(codigo.text))
end event

type pb_1 from picturebutton within w_analisis_verificacion
integer x = 1138
integer y = 64
integer width = 178
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string picturename = "Search1!"
vtextalign vtextalign = vcenter!
end type

event clicked;	dw_1.SetTransObject(sqlca)
	dw_1.Modify("DataWindow.Print.Preview=Yes")
	dw_1.retrieve(codigo.text)
	
	dw_2.SetTransObject(sqlca)
	dw_2.Modify("DataWindow.Print.Preview=Yes")
	dw_2.retrieve(codigo.text)
end event

type codigo from singlelineedit within w_analisis_verificacion
integer x = 59
integer y = 56
integer width = 1051
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "Codigo de Verificacion"
end type

type gb_1 from groupbox within w_analisis_verificacion
integer x = 23
integer y = 180
integer width = 3625
integer height = 624
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datos de la Verificación"
end type

type gb_2 from groupbox within w_analisis_verificacion
integer x = 23
integer y = 880
integer width = 3630
integer height = 1132
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Detalle de los periodos aportados"
end type

