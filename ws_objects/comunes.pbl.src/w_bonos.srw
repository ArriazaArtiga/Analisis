$PBExportHeader$w_bonos.srw
forward
global type w_bonos from window
end type
type bono from editmask within w_bonos
end type
type st_5 from statictext within w_bonos
end type
type st_4 from statictext within w_bonos
end type
type sueldo from editmask within w_bonos
end type
type cb_1 from commandbutton within w_bonos
end type
type dias from editmask within w_bonos
end type
type fin from editmask within w_bonos
end type
type inicio from editmask within w_bonos
end type
type st_3 from statictext within w_bonos
end type
type st_2 from statictext within w_bonos
end type
type st_1 from statictext within w_bonos
end type
end forward

global type w_bonos from window
integer width = 1559
integer height = 1276
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
bono bono
st_5 st_5
st_4 st_4
sueldo sueldo
cb_1 cb_1
dias dias
fin fin
inicio inicio
st_3 st_3
st_2 st_2
st_1 st_1
end type
global w_bonos w_bonos

on w_bonos.create
this.bono=create bono
this.st_5=create st_5
this.st_4=create st_4
this.sueldo=create sueldo
this.cb_1=create cb_1
this.dias=create dias
this.fin=create fin
this.inicio=create inicio
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.Control[]={this.bono,&
this.st_5,&
this.st_4,&
this.sueldo,&
this.cb_1,&
this.dias,&
this.fin,&
this.inicio,&
this.st_3,&
this.st_2,&
this.st_1}
end on

on w_bonos.destroy
destroy(this.bono)
destroy(this.st_5)
destroy(this.st_4)
destroy(this.sueldo)
destroy(this.cb_1)
destroy(this.dias)
destroy(this.fin)
destroy(this.inicio)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
end on

type bono from editmask within w_bonos
integer x = 745
integer y = 688
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
string mask = "[currency(7)]"
end type

type st_5 from statictext within w_bonos
integer x = 155
integer y = 732
integer width = 411
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Bono 14:"
boolean focusrectangle = false
end type

type st_4 from statictext within w_bonos
integer x = 151
integer y = 560
integer width = 485
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Salario Promedio:"
boolean focusrectangle = false
end type

type sueldo from editmask within w_bonos
integer x = 741
integer y = 524
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
string text = "5000"
borderstyle borderstyle = stylelowered!
string mask = "[currency(7)]"
end type

type cb_1 from commandbutton within w_bonos
integer x = 754
integer y = 924
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Calcular"
end type

event clicked;dias.text = string(daysafter(date(Inicio.text),date(Fin.text)))

bono.text = string(((Dec(sueldo.text)/365))* integer(dias.text))


end event

type dias from editmask within w_bonos
integer x = 754
integer y = 368
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string mask = "#"
end type

type fin from editmask within w_bonos
integer x = 750
integer y = 208
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "fin"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datemask!
string mask = "dd/mm/yyyy"
end type

type inicio from editmask within w_bonos
integer x = 750
integer y = 88
integer width = 402
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
string mask = "dd/mm/yyyy"
end type

type st_3 from statictext within w_bonos
integer x = 137
integer y = 412
integer width = 434
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Dias Laborados:"
boolean focusrectangle = false
end type

type st_2 from statictext within w_bonos
integer x = 137
integer y = 220
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
string text = "Fin:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_bonos
integer x = 137
integer y = 80
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
string text = "Inicio:"
boolean focusrectangle = false
end type

