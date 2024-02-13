$PBExportHeader$w_analisis_verificacion_enc.srw
forward
global type w_analisis_verificacion_enc from window
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
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_analisis_verificacion_enc w_analisis_verificacion_enc

on w_analisis_verificacion_enc.create
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_analisis_verificacion_enc.destroy
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_2 from commandbutton within w_analisis_verificacion_enc
integer x = 1449
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

type dw_1 from datawindow within w_analisis_verificacion_enc
integer x = 41
integer y = 48
integer width = 2734
integer height = 268
integer taborder = 10
string title = "none"
string dataobject = "freefrom_encabezadoverificacion"
borderstyle borderstyle = stylelowered!
end type

