$PBExportHeader$w_analisis_verificacion.srw
forward
global type w_analisis_verificacion from window
end type
type meses from statictext within w_analisis_verificacion
end type
type annos from statictext within w_analisis_verificacion
end type
type st_2 from statictext within w_analisis_verificacion
end type
type st_1 from statictext within w_analisis_verificacion
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
type gb_3 from groupbox within w_analisis_verificacion
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
meses meses
annos annos
st_2 st_2
st_1 st_1
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
gb_3 gb_3
end type
global w_analisis_verificacion w_analisis_verificacion

type variables
e_verificacion parametros
end variables

on w_analisis_verificacion.create
this.meses=create meses
this.annos=create annos
this.st_2=create st_2
this.st_1=create st_1
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
this.gb_3=create gb_3
this.Control[]={this.meses,&
this.annos,&
this.st_2,&
this.st_1,&
this.editar,&
this.cb_5,&
this.agregar,&
this.modificar,&
this.nuevo,&
this.dw_2,&
this.dw_1,&
this.codigo,&
this.gb_1,&
this.gb_2,&
this.gb_3}
end on

on w_analisis_verificacion.destroy
destroy(this.meses)
destroy(this.annos)
destroy(this.st_2)
destroy(this.st_1)
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
destroy(this.gb_3)
end on

event open;dw_1.settransobject( sqlca)
dw_2.settransobject( sqlca)
end event

type meses from statictext within w_analisis_verificacion
integer x = 3625
integer y = 524
integer width = 201
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "0"
boolean focusrectangle = false
end type

type annos from statictext within w_analisis_verificacion
integer x = 3625
integer y = 428
integer width = 183
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "0"
boolean focusrectangle = false
end type

type st_2 from statictext within w_analisis_verificacion
integer x = 3419
integer y = 524
integer width = 201
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Meses:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_analisis_verificacion
integer x = 3419
integer y = 428
integer width = 183
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Años:"
boolean focusrectangle = false
end type

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

event clicked;long id
if dw_2.rowcount( ) >0 then
	
	id = dw_2.getitemnumber( dw_2.getrow(),1 )
	parametros.codigo=string(id)
	parametros.objeto_b = dw_2
	parametros.ver = dw_1.object.cod_ver[1]
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

event clicked;if f_existe_verificacion(codigo.text)= 1 then
	dw_1.settransobject(SQLCA)
	dw_1.retrieve(trim(codigo.text))
	dw_2.settransobject(SQLCA)
	dw_2.retrieve(trim(codigo.text))
	modificar.visible=true
	agregar.visible=true
	if dw_2.getrow( )>0 then
		editar.visible = true
	else
		editar.visible = false
	end if
elseif f_existe_verificacion(codigo.text)= 2 then
	nuevo.visible=true
	agregar.visible= false
	messagebox('Error','Ya existe un codigo de verificacion como este, se encuentra inactivo')
else
	nuevo.visible=true
	agregar.visible= false
	messagebox('Información','No existe la verificación buscada')
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

if dw_2.getrow( )>0 then
	editar.visible = true
else
	editar.visible = false
end if

end event

type modificar from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3995
integer y = 484
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
	id = dw_1.getitemstring( dw_1.getrow(),1)
	//messagebox("Info",""+string(id))
	parametros.codigo=id
	parametros.objeto_a = dw_1
	OpenWithParm(w_analisis_verificacion_enc,parametros)
end if
dw_1.SetTransObject(SQLCA)
dw_1.retrieve(parametros.codigo)
end event

type nuevo from commandbutton within w_analisis_verificacion
boolean visible = false
integer x = 3995
integer y = 352
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

if dw_1.getrow( )>0 then
	modificar.visible = true
	agregar.visible = true
else
	modificar.visible= false
	agregar.visible = false
end if

end event

type dw_2 from datawindow within w_analisis_verificacion
integer x = 146
integer y = 836
integer width = 3726
integer height = 1668
integer taborder = 40
string title = "none"
string dataobject = "grid_detalleverificacion"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_analisis_verificacion
integer x = 146
integer y = 348
integer width = 3072
integer height = 272
integer taborder = 30
string title = "none"
string dataobject = "grid_encabezdoverificacion"
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
integer x = 82
integer y = 240
integer width = 3218
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
integer height = 1824
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

type gb_3 from groupbox within w_analisis_verificacion
integer x = 3374
integer y = 248
integer width = 535
integer height = 444
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datos"
end type

