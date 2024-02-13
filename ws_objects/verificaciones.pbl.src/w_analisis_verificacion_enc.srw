$PBExportHeader$w_analisis_verificacion_enc.srw
forward
global type w_analisis_verificacion_enc from window
end type
type cb_3 from commandbutton within w_analisis_verificacion_enc
end type
type cb_2 from commandbutton within w_analisis_verificacion_enc
end type
type cb_1 from commandbutton within w_analisis_verificacion_enc
end type
type dw_1 from datawindow within w_analisis_verificacion_enc
end type
end forward

global type w_analisis_verificacion_enc from window
integer width = 2935
integer height = 700
boolean titlebar = true
string title = "Encabezado de la Verificación"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_analisis_verificacion_enc w_analisis_verificacion_enc

type variables
e_verificacion parametros
end variables

on w_analisis_verificacion_enc.create
this.cb_3=create cb_3
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_3,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_analisis_verificacion_enc.destroy
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

event open;string id, xx
long i_rows
parametros = message.powerobjectparm
//messagebox("",id)
dw_1.settransobject(sqlca)
if parametros.codigo = "...!"  then 
	dw_1.insertrow(1)
	i_rows = dw_1.getrow( )
	dw_1.object.activo[i_rows]= 1
	dw_1.object.user_add[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
		
else 
	
	dw_1.retrieve(parametros.codigo)
	i_rows = dw_1.getrow( )
	dw_1.object.user_update[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
end if 
end event

type cb_3 from commandbutton within w_analisis_verificacion_enc
integer x = 1504
integer y = 412
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Eliminar"
end type

event clicked;string cui, unidad
long i_rows

if gi_unidad =integer(unidad) or  gi_unidad =9  then
	i_rows = dw_1.getrow( )
	dw_1.object.user_delete[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
	dw_1.object.activo[i_rows] = 0
	if dw_1.update() = 1 then
		parametros.objeto_a.settransobject(sqlca)
		parametros.objeto_a.retrieve(parametros.codigo)
		close(parent)
	
	else
		messagebox("Error","El registro no se a eliminado del sistema")
	end if
else
	Messagebox("Advertencia","No cuenta con los permisos necesarios, coloque la unidad que le corresponde")
end if

end event

type cb_2 from commandbutton within w_analisis_verificacion_enc
integer x = 1998
integer y = 416
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

event clicked;	close(parent)
end event

type cb_1 from commandbutton within w_analisis_verificacion_enc
integer x = 983
integer y = 412
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Guardar"
end type

event clicked;string cui, unidad

if gi_unidad =integer(unidad) or  gi_unidad =9  then
	if dw_1.update() = 1 then
		parametros.objeto_a.settransobject(sqlca)
		parametros.objeto_a.retrieve(parametros.codigo)
		close(parent)
	
	else
		messagebox("Error","El registro no se a guardado en el sistema")
	end if
else
	Messagebox("Advertencia","No cuenta con los permisos necesarios, coloque la unidad que le corresponde")
end if

end event

type dw_1 from datawindow within w_analisis_verificacion_enc
integer x = 41
integer y = 48
integer width = 2729
integer height = 268
integer taborder = 10
string title = "none"
string dataobject = "freefrom_encabezadoverificacion"
borderstyle borderstyle = stylelowered!
end type

event itemchanged;dw_1.settransobject( sqlca)
end event

