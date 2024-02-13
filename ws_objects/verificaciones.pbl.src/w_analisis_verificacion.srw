$PBExportHeader$w_analisis_verificacion.srw
forward
global type w_analisis_verificacion from window
end type
type editar from commandbutton within w_analisis_verificacion
end type
type cb_5 from commandbutton within w_analisis_verificacion
end type
type agregar from commandbutton within w_analisis_verificacion
end type
type modificar from commandbutton within w_analisis_verificacion
end type
type nuevo from commandbutton within w_analisis_verificacion
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
integer width = 4489
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
editar editar
cb_5 cb_5
agregar agregar
modificar modificar
nuevo nuevo
dw_2 dw_2
dw_1 dw_1
codigo codigo
gb_1 gb_1
gb_2 gb_2
end type
global w_analisis_verificacion w_analisis_verificacion

type variables
e_verificacion parametros
end variables

on w_analisis_verificacion.create
this.editar=create editar
this.cb_5=create cb_5
this.agregar=create agregar
this.modificar=create modificar
this.nuevo=create nuevo
this.dw_2=create dw_2
this.dw_1=create dw_1
this.codigo=create codigo
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.editar,&
this.cb_5,&
this.agregar,&
this.modificar,&
this.nuevo,&
this.dw_2,&
this.dw_1,&
this.codigo,&
this.gb_1,&
this.gb_2}
end on

on w_analisis_verificacion.destroy
destroy(this.editar)
destroy(this.cb_5)
destroy(this.agregar)
destroy(this.modificar)
destroy(this.nuevo)
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.codigo)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;dw_1.settransobject( sqlca)
dw_2.settransobject( sqlca)
end event

type editar from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 4014
integer y = 940
integer width = 402
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Editar"
end type

event clicked;string id
if dw_1.rowcount( ) >0 then
	id = dw_1.getitemstring( dw_1.getrow(),2)
	//messagebox("Info",""+string(id))
	parametros.codigo=string(id)
	parametros.objeto_b = dw_2
	OpenWithParm(w_analisis_verificacion_det,parametros)
end if
dw_2.SetTransObject(SQLCA)
dw_2.retrieve(parametros.codigo)
end event

type cb_5 from commandbutton within w_analisis_verificacion
integer x = 1088
integer y = 32
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

event clicked;if f_existeverificacion(codigo.text) then
	dw_1.settransobject(SQLCA)
	dw_1.retrieve(trim(codigo.text))
	dw_2.settransobject(SQLCA)
	dw_2.retrieve(trim(codigo.text))
	modificar.visible=true
	agregar.visible=true
else
	nuevo.visible=true
	agregar.visible= true
	messagebox('Error','No existe la verificación buscada')
end if 
end event

type agregar from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 4005
integer y = 804
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

event clicked;editar.visible= true
parametros.codigo='...!'
parametros.ver = dw_1.object.cod_ver[1]
parametros.objeto_b = dw_2
OpenWithParm(w_analisis_verificacion_det,parametros)
dw_2.settransobject(SQLCA)
dw_2.retrieve(trim(codigo.text))
end event

type modificar from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 4018
integer y = 424
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

event clicked;string id
if dw_1.rowcount( ) >0 then
	id = dw_1.getitemstring( dw_1.getrow(),2)
	//messagebox("Info",""+string(id))
	parametros.codigo=string(id)
	parametros.objeto_a = dw_1
	OpenWithParm(w_analisis_verificacion_enc,parametros)
end if
dw_1.SetTransObject(SQLCA)
dw_1.retrieve(parametros.codigo)
end event

type nuevo from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 4018
integer y = 292
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

event clicked;parametros.codigo='...!'
parametros.objeto_a = dw_1
OpenWithParm(w_analisis_verificacion_enc,parametros)
dw_1.settransobject(SQLCA)
dw_1.retrieve(trim(codigo.text))
end event

type dw_2 from datawindow within w_analisis_verificacion
integer x = 146
integer y = 836
integer width = 3726
integer height = 1436
integer taborder = 40
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

event darenter;dw_1.retrieve(codigo.text )
dw_2.retrieve(codigo.text )
end event

type gb_1 from groupbox within w_analisis_verificacion
integer x = 59
integer y = 240
integer width = 3895
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
integer width = 3881
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

