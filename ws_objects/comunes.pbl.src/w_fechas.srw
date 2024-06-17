$PBExportHeader$w_fechas.srw
forward
global type w_fechas from window
end type
type em_3 from editmask within w_fechas
end type
type cb_1 from commandbutton within w_fechas
end type
type em_2 from editmask within w_fechas
end type
type em_1 from editmask within w_fechas
end type
end forward

global type w_fechas from window
integer width = 4754
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
em_3 em_3
cb_1 cb_1
em_2 em_2
em_1 em_1
end type
global w_fechas w_fechas

on w_fechas.create
this.em_3=create em_3
this.cb_1=create cb_1
this.em_2=create em_2
this.em_1=create em_1
this.Control[]={this.em_3,&
this.cb_1,&
this.em_2,&
this.em_1}
end on

on w_fechas.destroy
destroy(this.em_3)
destroy(this.cb_1)
destroy(this.em_2)
destroy(this.em_1)
end on

type em_3 from editmask within w_fechas
integer x = 718
integer y = 464
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
string mask = "#"
end type

type cb_1 from commandbutton within w_fechas
integer x = 247
integer y = 464
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Meses"
end type

event clicked;em_3.text=string(f_calculomeses(date(em_1.text), date(em_2.text)))
end event

type em_2 from editmask within w_fechas
integer x = 238
integer y = 244
integer width = 919
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
maskdatatype maskdatatype = datemask!
boolean dropdowncalendar = true
end type

type em_1 from editmask within w_fechas
integer x = 229
integer y = 72
integer width = 919
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
maskdatatype maskdatatype = datemask!
boolean dropdowncalendar = true
end type

