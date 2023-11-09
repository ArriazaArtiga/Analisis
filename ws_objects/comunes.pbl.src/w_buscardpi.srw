$PBExportHeader$w_buscardpi.srw
forward
global type w_buscardpi from window
end type
type cb_1 from commandbutton within w_buscardpi
end type
type em_2 from editmask within w_buscardpi
end type
type st_2 from statictext within w_buscardpi
end type
type st_1 from statictext within w_buscardpi
end type
type em_1 from editmask within w_buscardpi
end type
end forward

global type w_buscardpi from window
integer width = 2674
integer height = 600
boolean titlebar = true
string title = "Buscar DPI"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
em_2 em_2
st_2 st_2
st_1 st_1
em_1 em_1
end type
global w_buscardpi w_buscardpi

on w_buscardpi.create
this.cb_1=create cb_1
this.em_2=create em_2
this.st_2=create st_2
this.st_1=create st_1
this.em_1=create em_1
this.Control[]={this.cb_1,&
this.em_2,&
this.st_2,&
this.st_1,&
this.em_1}
end on

on w_buscardpi.destroy
destroy(this.cb_1)
destroy(this.em_2)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.em_1)
end on

type cb_1 from commandbutton within w_buscardpi
integer x = 2048
integer y = 260
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
if isnull(em_1) then 
	messagebox("Advertencia", "Ingresar una Resolución a buscar")
else 
	em_2.text=buscardpi(em_1.text)
end if 
end event

type em_2 from editmask within w_buscardpi
integer x = 919
integer y = 252
integer width = 910
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
end type

type st_2 from statictext within w_buscardpi
integer x = 1029
integer y = 108
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "CUI"
boolean focusrectangle = false
end type

type st_1 from statictext within w_buscardpi
integer x = 293
integer y = 104
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Resolución"
boolean focusrectangle = false
end type

type em_1 from editmask within w_buscardpi
integer x = 110
integer y = 252
integer width = 773
integer height = 108
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
end type

