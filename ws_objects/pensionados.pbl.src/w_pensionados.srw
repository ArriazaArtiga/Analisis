$PBExportHeader$w_pensionados.srw
$PBExportComments$Ver todos los pensionados activos
forward
global type w_pensionados from window
end type
type cb_1 from commandbutton within w_pensionados
end type
type rb_4 from radiobutton within w_pensionados
end type
type rb_3 from radiobutton within w_pensionados
end type
type rb_2 from radiobutton within w_pensionados
end type
type rb_1 from radiobutton within w_pensionados
end type
type sle_1 from singlelineedit within w_pensionados
end type
type st_1 from statictext within w_pensionados
end type
type sle_5 from singlelineedit within w_pensionados
end type
type cb_3 from commandbutton within w_pensionados
end type
type cb_2 from commandbutton within w_pensionados
end type
type dw_1 from datawindow within w_pensionados
end type
type gb_1 from groupbox within w_pensionados
end type
type gb_2 from groupbox within w_pensionados
end type
end forward

global type w_pensionados from window
integer width = 6222
integer height = 2080
boolean titlebar = true
string title = "Pensionados"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
rb_4 rb_4
rb_3 rb_3
rb_2 rb_2
rb_1 rb_1
sle_1 sle_1
st_1 st_1
sle_5 sle_5
cb_3 cb_3
cb_2 cb_2
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
end type
global w_pensionados w_pensionados

on w_pensionados.create
this.cb_1=create cb_1
this.rb_4=create rb_4
this.rb_3=create rb_3
this.rb_2=create rb_2
this.rb_1=create rb_1
this.sle_1=create sle_1
this.st_1=create st_1
this.sle_5=create sle_5
this.cb_3=create cb_3
this.cb_2=create cb_2
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_1,&
this.rb_4,&
this.rb_3,&
this.rb_2,&
this.rb_1,&
this.sle_1,&
this.st_1,&
this.sle_5,&
this.cb_3,&
this.cb_2,&
this.dw_1,&
this.gb_1,&
this.gb_2}
end on

on w_pensionados.destroy
destroy(this.cb_1)
destroy(this.rb_4)
destroy(this.rb_3)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.sle_1)
destroy(this.st_1)
destroy(this.sle_5)
destroy(this.cb_3)
destroy(this.cb_2)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;long filas

filas = dw_1.rowcount( )
sle_5.text = string(filas)
end event

type cb_1 from commandbutton within w_pensionados
integer x = 1774
integer y = 156
integer width = 402
integer height = 112
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

type rb_4 from radiobutton within w_pensionados
integer x = 1253
integer y = 276
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Restaurar"
end type

event clicked;dw_1.setfilter( "")
dw_1.filter()
sle_5.text = string(dw_1.rowcount( ))
end event

type rb_3 from radiobutton within w_pensionados
integer x = 882
integer y = 268
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Nombre"
end type

event clicked;if isnull(sle_1.text) then
	dw_1.retrieve( )
elseif sle_1.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("nombre like '%"+sle_1.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	sle_5.text = string (dw_1.rowcount( ))
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type rb_2 from radiobutton within w_pensionados
integer x = 581
integer y = 272
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "CUI"
end type

event clicked;if isnull(sle_1.text) then
	dw_1.retrieve( )
elseif sle_1.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("cui like '%"+sle_1.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	sle_5.text = string (dw_1.rowcount( ))
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type rb_1 from radiobutton within w_pensionados
integer x = 105
integer y = 272
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Resolución"
end type

event clicked;if isnull(sle_1.text) then
	dw_1.retrieve( )
elseif sle_1.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("resolucion like '%"+sle_1.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	sle_5.text = string (dw_1.rowcount( ))
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type sle_1 from singlelineedit within w_pensionados
integer x = 73
integer y = 124
integer width = 1531
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event modified;
if isnull(this.text) then
	dw_1.retrieve( )
elseif this.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("resolucion like '%"+this.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if

end event

type st_1 from statictext within w_pensionados
integer x = 5029
integer y = 1764
integer width = 443
integer height = 84
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Total:"
boolean focusrectangle = false
end type

type sle_5 from singlelineedit within w_pensionados
integer x = 5554
integer y = 1752
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean italic = true
long textcolor = 33554432
string text = "none"
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type cb_3 from commandbutton within w_pensionados
integer x = 3310
integer y = 160
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Modificar"
end type

event clicked;string id
if dw_1.rowcount( ) >0 then
	id = dw_1.getitemstring( dw_1.getrow(),3 )
	//messagebox("Info",""+string(id))
	OpenWithParm(w_pensionados_m,id)
end if
dw_1.retrieve( )
end event

type cb_2 from commandbutton within w_pensionados
integer x = 2821
integer y = 168
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Nuevo"
end type

event clicked;OpenWithParm(w_pensionados_m,"...")
dw_1.retrieve( )
end event

type dw_1 from datawindow within w_pensionados
integer x = 23
integer y = 424
integer width = 6267
integer height = 1308
integer taborder = 30
string title = "none"
string dataobject = "dw_pensionado"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject( sqlca)
this.retrieve( )
end event

event itemchanged;this.settransobject( sqlca)
this.retrieve( )
end event

type gb_1 from groupbox within w_pensionados
integer x = 23
integer y = 4
integer width = 2523
integer height = 400
integer taborder = 70
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Filtrar"
end type

type gb_2 from groupbox within w_pensionados
integer x = 2610
integer width = 1943
integer height = 400
integer taborder = 10
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Acciones"
end type

