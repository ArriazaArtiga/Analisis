$PBExportHeader$w_analisis_reporte_verificacion.srw
forward
global type w_analisis_reporte_verificacion from window
end type
type cb_5 from commandbutton within w_analisis_reporte_verificacion
end type
type codigo from singlelineedit within w_analisis_reporte_verificacion
end type
type dw_1 from datawindow within w_analisis_reporte_verificacion
end type
end forward

global type w_analisis_reporte_verificacion from window
integer width = 4736
integer height = 2224
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_5 cb_5
codigo codigo
dw_1 dw_1
end type
global w_analisis_reporte_verificacion w_analisis_reporte_verificacion

on w_analisis_reporte_verificacion.create
this.cb_5=create cb_5
this.codigo=create codigo
this.dw_1=create dw_1
this.Control[]={this.cb_5,&
this.codigo,&
this.dw_1}
end on

on w_analisis_reporte_verificacion.destroy
destroy(this.cb_5)
destroy(this.codigo)
destroy(this.dw_1)
end on

type cb_5 from commandbutton within w_analisis_reporte_verificacion
integer x = 1029
integer y = 44
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Buscar"
end type

event clicked;integer i_r, resultadoA,resultadoB, mesesTotales,mesesRestantes, añosTotales
if f_existe_verificacion(codigo.text)= 1 then
	dw_1.settransobject(SQLCA)
	dw_1.retrieve(trim(codigo.text))
elseif f_existe_verificacion(codigo.text)= 2 then
	
	messagebox('Error','Ya existe un codigo de verificacion como este, se encuentra inactivo')
else
	
	messagebox('Información','No existe la verificación buscada')
end if 
end event

type codigo from singlelineedit within w_analisis_reporte_verificacion
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

type dw_1 from datawindow within w_analisis_reporte_verificacion
integer x = 59
integer y = 280
integer width = 4535
integer height = 1760
integer taborder = 10
string title = "none"
string dataobject = "dw_verificacion_cmp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

