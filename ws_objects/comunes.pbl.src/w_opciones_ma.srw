$PBExportHeader$w_opciones_ma.srw
forward
global type w_opciones_ma from window
end type
type ddlb_3 from dropdownlistbox within w_opciones_ma
end type
type ddlb_2 from dropdownlistbox within w_opciones_ma
end type
type ddlb_1 from dropdownlistbox within w_opciones_ma
end type
type st_5 from statictext within w_opciones_ma
end type
type st_4 from statictext within w_opciones_ma
end type
type st_3 from statictext within w_opciones_ma
end type
type st_2 from statictext within w_opciones_ma
end type
type st_1 from statictext within w_opciones_ma
end type
end forward

global type w_opciones_ma from window
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
ddlb_3 ddlb_3
ddlb_2 ddlb_2
ddlb_1 ddlb_1
st_5 st_5
st_4 st_4
st_3 st_3
st_2 st_2
st_1 st_1
end type
global w_opciones_ma w_opciones_ma

on w_opciones_ma.create
this.ddlb_3=create ddlb_3
this.ddlb_2=create ddlb_2
this.ddlb_1=create ddlb_1
this.st_5=create st_5
this.st_4=create st_4
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.ddlb_3,&
this.ddlb_2,&
this.ddlb_1,&
this.st_5,&
this.st_4,&
this.st_3,&
this.st_2,&
this.st_1}
end on

on w_opciones_ma.destroy
destroy(this.ddlb_3)
destroy(this.ddlb_2)
destroy(this.ddlb_1)
destroy(this.st_5)
destroy(this.st_4)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
end on

type ddlb_3 from dropdownlistbox within w_opciones_ma
integer x = 1211
integer y = 432
integer width = 480
integer height = 400
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Sí","No "}
borderstyle borderstyle = stylelowered!
end type

type ddlb_2 from dropdownlistbox within w_opciones_ma
integer x = 1211
integer y = 320
integer width = 480
integer height = 400
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Sí","No "}
borderstyle borderstyle = stylelowered!
end type

type ddlb_1 from dropdownlistbox within w_opciones_ma
integer x = 1211
integer y = 196
integer width = 480
integer height = 400
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"Sí","No "}
borderstyle borderstyle = stylelowered!
end type

type st_5 from statictext within w_opciones_ma
integer x = 274
integer y = 412
integer width = 731
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "¿Desea calcular los años?"
boolean focusrectangle = false
end type

type st_4 from statictext within w_opciones_ma
integer x = 274
integer y = 308
integer width = 727
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "¿Desea calcular los meses?"
boolean focusrectangle = false
end type

type st_3 from statictext within w_opciones_ma
integer x = 274
integer y = 188
integer width = 681
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "¿Desea calcular los dias?"
boolean focusrectangle = false
end type

type st_2 from statictext within w_opciones_ma
integer x = 274
integer y = 200
integer width = 663
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "¿Desea calcular los dias?"
boolean focusrectangle = false
end type

type st_1 from statictext within w_opciones_ma
integer x = 274
integer y = 200
integer width = 663
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "¿Desea calcular los dias?"
boolean focusrectangle = false
end type

