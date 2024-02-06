$PBExportHeader$w_analisis_verficacion.srw
forward
global type w_analisis_verficacion from window
end type
type dw_2 from datawindow within w_analisis_verficacion
end type
type dw_1 from datawindow within w_analisis_verficacion
end type
type codigo from singlelineedit within w_analisis_verficacion
end type
type gb_1 from groupbox within w_analisis_verficacion
end type
type gb_2 from groupbox within w_analisis_verficacion
end type
end forward

global type w_analisis_verficacion from window
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
dw_2 dw_2
dw_1 dw_1
codigo codigo
gb_1 gb_1
gb_2 gb_2
end type
global w_analisis_verficacion w_analisis_verficacion

on w_analisis_verficacion.create
this.dw_2=create dw_2
this.dw_1=create dw_1
this.codigo=create codigo
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.dw_2,&
this.dw_1,&
this.codigo,&
this.gb_1,&
this.gb_2}
end on

on w_analisis_verficacion.destroy
destroy(this.dw_2)
destroy(this.dw_1)
destroy(this.codigo)
destroy(this.gb_1)
destroy(this.gb_2)
end on

type dw_2 from datawindow within w_analisis_verficacion
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

type dw_1 from datawindow within w_analisis_verficacion
integer x = 123
integer y = 348
integer width = 3762
integer height = 272
integer taborder = 30
string title = "none"
string dataobject = "freefrom_encabezadoverificacion"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type codigo from singlelineedit within w_analisis_verficacion
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

event darenter;
dw_1.retrieve(codigo.text )
dw_2.retrieve(codigo.text )

end event

type gb_1 from groupbox within w_analisis_verficacion
integer x = 59
integer y = 240
integer width = 4402
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

type gb_2 from groupbox within w_analisis_verficacion
integer x = 73
integer y = 724
integer width = 4379
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

