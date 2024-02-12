$PBExportHeader$w_analisis_verificacion.srw
forward
global type w_analisis_verificacion from window
end type
type cb_6 from commandbutton within w_analisis_verificacion
end type
type cb_5 from commandbutton within w_analisis_verificacion
end type
type cb_4 from commandbutton within w_analisis_verificacion
end type
type cb_2 from commandbutton within w_analisis_verificacion
end type
type cb_1 from commandbutton within w_analisis_verificacion
end type
type dw_2 from datawindow within w_analisis_verificacion
end type
type dw_1 from datawindow within w_analisis_verificacion
end type
type codigo from singlelineedit within w_analisis_verificacion
end type
type gb_1 from groupbox within w_analisis_verificacion
end type
type gb_2 from groupbox within w_analisis_verificacion
end type
end forward

global type w_analisis_verificacion from window
integer width = 4754
integer height = 2668
boolean titlebar = true
string title = "Verificaciones"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_6 cb_6
cb_5 cb_5
cb_4 cb_4
cb_2 cb_2
cb_1 cb_1
dw_2 dw_2
dw_1 dw_1
codigo codigo
gb_1 gb_1
gb_2 gb_2
end type
global w_analisis_verificacion w_analisis_verificacion

on w_analisis_verificacion.create
this.cb_6=create cb_6
this.cb_5=create cb_5
this.cb_4=create cb_4
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_2=create dw_2
this.dw_1=create dw_1
this.codigo=create codigo
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_6,&
this.cb_5,&
this.cb_4,&
this.cb_2,&
this.cb_1,&
this.dw_2,&
this.dw_1,&
this.codigo,&
this.gb_1,&
this.gb_2}
end on

on w_analisis_verificacion.destroy
destroy(this.cb_6)
destroy(this.cb_5)
destroy(this.cb_4)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.codigo)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;dw_1.settransobject(sqlca)
dw_2.settransobject(sqlca)
end event

type cb_6 from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3982
integer y = 964
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modificar"
end type

type cb_5 from commandbutton within w_analisis_verificacion
integer x = 1029
integer y = 52
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Buscar"
end type

event clicked;
dw_1.reset()
dw_2.reset()

if f_existeverificacion(codigo.text) then
	dw_1.retrieve(codigo.text )
	dw_2.retrieve(codigo.text )
	cb_1.visible= false
	cb_2.visible= true
	cb_4.visible= true
	cb_6.visible= true
else
	cb_1.visible= true
	cb_2.visible= false
	cb_4.visible= false
	cb_6.visible= false
	messagebox('Información','Verificación no existente')
end if
end event

type cb_4 from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3982
integer y = 820
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Agregar"
end type

type cb_2 from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3982
integer y = 504
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

event clicked;
parametros.codigo = codigo.text
parametros.objetoB = dw_2
OpenWithParm(w_analisis_verificacion_enc,parametros)
end event

type cb_1 from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3982
integer y = 380
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

event clicked;
parametros.codigo = '...!'
parametros.objetoA = dw_1
OpenWithParm(w_analisis_verificacion_enc,parametros)
end event

type dw_2 from datawindow within w_analisis_verificacion
integer x = 146
integer y = 836
integer width = 3726
integer height = 1436
integer taborder = 40
boolean enabled = false
string title = "none"
string dataobject = "grid_detalleverificacion"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_analisis_verificacion
integer x = 123
integer y = 348
integer width = 3762
integer height = 272
integer taborder = 30
boolean enabled = false
string title = "none"
string dataobject = "grid_encabezadoverificacion"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type codigo from singlelineedit within w_analisis_verificacion
event darenter pbm_keydown
integer x = 69
integer y = 36
integer width = 919
integer height = 128
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "Ingrese la verificación a buscar"
end type

type gb_1 from groupbox within w_analisis_verificacion
integer x = 59
integer y = 240
integer width = 4384
integer height = 456
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Encabezado"
end type

type gb_2 from groupbox within w_analisis_verificacion
integer x = 73
integer y = 724
integer width = 4352
integer height = 1600
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Registros"
end type

