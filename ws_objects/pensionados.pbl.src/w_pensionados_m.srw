$PBExportHeader$w_pensionados_m.srw
$PBExportComments$Ver todos los pensionados activos
forward
global type w_pensionados_m from window
end type
type cb_2 from commandbutton within w_pensionados_m
end type
type cb_1 from commandbutton within w_pensionados_m
end type
type dw_1 from datawindow within w_pensionados_m
end type
end forward

global type w_pensionados_m from window
integer width = 2583
integer height = 2216
boolean titlebar = true
string title = "Pensionado (agregar o modificar)"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_pensionados_m w_pensionados_m

on w_pensionados_m.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_pensionados_m.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;string id
long i_rows
id = message.stringparm
dw_1.settransobject(sqlca)
if id = "..."  then 
	dw_1.insertrow(1)
	i_rows = dw_1.getrow( )
	dw_1.object.pensionados_agrega[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
else 
	dw_1.retrieve(id)
	i_rows = dw_1.getrow( )
	dw_1.object.pensionados_modifica[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
end if 
end event

type cb_2 from commandbutton within w_pensionados_m
integer x = 2071
integer y = 420
integer width = 402
integer height = 112
integer taborder = 30
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

type cb_1 from commandbutton within w_pensionados_m
integer x = 2062
integer y = 264
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

event clicked;if dw_1.update() = 1 then
	close(parent)
else
	messagebox("Error","El registro no se a guardado en el sistema")
end if
end event

type dw_1 from datawindow within w_pensionados_m
integer x = 55
integer y = 40
integer width = 1851
integer height = 2052
integer taborder = 10
string title = "none"
string dataobject = "dw_pensionado_m"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

