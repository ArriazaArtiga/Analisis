$PBExportHeader$w_registroactividad_m.srw
forward
global type w_registroactividad_m from window
end type
type salir from commandbutton within w_registroactividad_m
end type
type grabar from commandbutton within w_registroactividad_m
end type
type dw_1 from datawindow within w_registroactividad_m
end type
end forward

global type w_registroactividad_m from window
integer width = 2112
integer height = 1452
boolean titlebar = true
string title = "Registro de Actividad"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
salir salir
grabar grabar
dw_1 dw_1
end type
global w_registroactividad_m w_registroactividad_m

on w_registroactividad_m.create
this.salir=create salir
this.grabar=create grabar
this.dw_1=create dw_1
this.Control[]={this.salir,&
this.grabar,&
this.dw_1}
end on

on w_registroactividad_m.destroy
destroy(this.salir)
destroy(this.grabar)
destroy(this.dw_1)
end on

event open;string id
long i_rows
id = message.stringparm
dw_1.settransobject(sqlca)
if id = "..."  then 
	dw_1.insertrow(1)
	i_rows = dw_1.getrow( )
	dw_1.object.agrega[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
else 
	dw_1.retrieve(id)
	i_rows = dw_1.getrow( )
	dw_1.object.modifica[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
end if 
end event

type salir from commandbutton within w_registroactividad_m
integer x = 1637
integer y = 232
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Salir"
end type

event clicked;close(parent)
end event

type grabar from commandbutton within w_registroactividad_m
integer x = 1637
integer y = 68
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Grabar"
end type

event clicked;long ll_row
boolean resultado
ll_row = dw_1.getrow( )
resultado = f_pensionado_actualizar_actvidad(dw_1.object.actividad[ll_row],dw_1.object.monto[ll_row], dw_1.object.cui[ll_row])
if  resultado = true then
	if dw_1.update() = 1 then
	close(parent)
else
	messagebox("Error","El registro no se a guardado en el sistema")
end if
else
	messagebox("Error","El registro no se a guardado en el sistema")
end if 

end event

type dw_1 from datawindow within w_registroactividad_m
integer x = 73
integer y = 48
integer width = 1495
integer height = 1224
integer taborder = 10
string title = "none"
string dataobject = "dw_registroactividad_m"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

