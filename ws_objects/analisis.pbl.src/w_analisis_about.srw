$PBExportHeader$w_analisis_about.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_about from window
end type
type st_copyright from statictext within w_analisis_about
end type
type st_version from statictext within w_analisis_about
end type
type pb_salir from picturebutton within w_analisis_about
end type
type st_sistema from statictext within w_analisis_about
end type
type p_1 from picture within w_analisis_about
end type
type st_institucion from statictext within w_analisis_about
end type
end forward

global type w_analisis_about from window
integer x = 873
integer y = 428
integer width = 1797
integer height = 624
boolean titlebar = true
string title = "About"
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 32895212
boolean center = true
st_copyright st_copyright
st_version st_version
pb_salir pb_salir
st_sistema st_sistema
p_1 p_1
st_institucion st_institucion
end type
global w_analisis_about w_analisis_about

on w_analisis_about.create
this.st_copyright=create st_copyright
this.st_version=create st_version
this.pb_salir=create pb_salir
this.st_sistema=create st_sistema
this.p_1=create p_1
this.st_institucion=create st_institucion
this.Control[]={this.st_copyright,&
this.st_version,&
this.pb_salir,&
this.st_sistema,&
this.p_1,&
this.st_institucion}
end on

on w_analisis_about.destroy
destroy(this.st_copyright)
destroy(this.st_version)
destroy(this.pb_salir)
destroy(this.st_sistema)
destroy(this.p_1)
destroy(this.st_institucion)
end on

event open;//pb_salir.backcolor =  rgb(41,57,85)
//pb_salir.textcolor = rgb(240,240,240)

end event

type st_copyright from statictext within w_analisis_about
integer x = 585
integer y = 328
integer width = 1175
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean enabled = false
string text = "© PPEM - SIG - 2016-2022"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_version from statictext within w_analisis_about
integer x = 585
integer y = 228
integer width = 1175
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean enabled = false
string text = "Módulo Análisis - Versión 1.1.0.0"
alignment alignment = center!
boolean focusrectangle = false
end type

type pb_salir from picturebutton within w_analisis_about
integer x = 987
integer y = 428
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Ok"
boolean default = true
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\FondoCeleste.jpg"
vtextalign vtextalign = vcenter!
long backcolor = 32895212
end type

event clicked;Close ( Parent )
end event

type st_sistema from statictext within w_analisis_about
integer x = 585
integer y = 132
integer width = 1175
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean enabled = false
string text = "Sistema Información Gerencial - SIG"
alignment alignment = center!
boolean focusrectangle = false
end type

type p_1 from picture within w_analisis_about
integer x = 37
integer y = 32
integer width = 517
integer height = 452
integer transparency = 30
string picturename = "Z:\Analisis\Resources\logo ppem.jpg"
boolean focusrectangle = false
end type

type st_institucion from statictext within w_analisis_about
integer x = 585
integer y = 32
integer width = 1175
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean enabled = false
string text = "Plan de Prestaciones del Empleado Municipal"
alignment alignment = center!
boolean focusrectangle = false
end type

