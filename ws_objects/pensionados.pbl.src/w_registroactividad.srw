$PBExportHeader$w_registroactividad.srw
forward
global type w_registroactividad from window
end type
type sle_2 from singlelineedit within w_registroactividad
end type
type st_1 from statictext within w_registroactividad
end type
type cb_2 from commandbutton within w_registroactividad
end type
type cb_1 from commandbutton within w_registroactividad
end type
type rb_3 from radiobutton within w_registroactividad
end type
type ddlb_1 from dropdownlistbox within w_registroactividad
end type
type rb_2 from radiobutton within w_registroactividad
end type
type rb_1 from radiobutton within w_registroactividad
end type
type sle_1 from singlelineedit within w_registroactividad
end type
type dw_1 from datawindow within w_registroactividad
end type
type gb_1 from groupbox within w_registroactividad
end type
type gb_2 from groupbox within w_registroactividad
end type
type gb_3 from groupbox within w_registroactividad
end type
end forward

global type w_registroactividad from window
integer width = 3145
integer height = 2160
boolean titlebar = true
string title = "Registro de Actividad"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
sle_2 sle_2
st_1 st_1
cb_2 cb_2
cb_1 cb_1
rb_3 rb_3
ddlb_1 ddlb_1
rb_2 rb_2
rb_1 rb_1
sle_1 sle_1
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
end type
global w_registroactividad w_registroactividad

on w_registroactividad.create
this.sle_2=create sle_2
this.st_1=create st_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.rb_3=create rb_3
this.ddlb_1=create ddlb_1
this.rb_2=create rb_2
this.rb_1=create rb_1
this.sle_1=create sle_1
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.Control[]={this.sle_2,&
this.st_1,&
this.cb_2,&
this.cb_1,&
this.rb_3,&
this.ddlb_1,&
this.rb_2,&
this.rb_1,&
this.sle_1,&
this.dw_1,&
this.gb_1,&
this.gb_2,&
this.gb_3}
end on

on w_registroactividad.destroy
destroy(this.sle_2)
destroy(this.st_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.rb_3)
destroy(this.ddlb_1)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.sle_1)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
end on

event open;long filas

filas = dw_1.rowcount( )
sle_2.text = string(filas)
end event

type sle_2 from singlelineedit within w_registroactividad
integer x = 2583
integer y = 1928
integer width = 457
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean displayonly = true
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_registroactividad
integer x = 2583
integer y = 1836
integer width = 457
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Total:"
boolean focusrectangle = false
end type

type cb_2 from commandbutton within w_registroactividad
integer x = 2386
integer y = 304
integer width = 457
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 700
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
	OpenWithParm(w_registroactividad_m,id)
end if
dw_1.retrieve( )
end event

type cb_1 from commandbutton within w_registroactividad
integer x = 2377
integer y = 152
integer width = 457
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Nuevo"
end type

event clicked;OpenWithParm(w_registroactividad_m,"...")
dw_1.retrieve( )
end event

type rb_3 from radiobutton within w_registroactividad
integer x = 850
integer y = 320
integer width = 457
integer height = 80
integer textsize = -10
integer weight = 700
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
sle_2.text = string(dw_1.rowcount( ))
sle_1.text = ""
//ddlb_1.reset( )
end event

type ddlb_1 from dropdownlistbox within w_registroactividad
integer x = 1353
integer y = 328
integer width = 549
integer height = 400
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean allowedit = true
boolean autohscroll = true
string item[] = {"Suspención","Fallecimiento","Reincorporación","Ampliación"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;int xx
	if this.text = "Suspención" then
		xx = 3
	elseif this.text = "Fallecimiento" then
		xx = 4
	elseif this.text = "Reincorporación" then
		xx = 5
	elseif this.text = "Ampliacion" then
		xx = 6
	else
		dw_1.retrieve( )
	end if
	dw_1.setfilter("actividad like '%"+string(xx)+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	sle_2.text = string (dw_1.rowcount( ))

end event

type rb_2 from radiobutton within w_registroactividad
integer x = 393
integer y = 320
integer width = 457
integer height = 80
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Referencia"
end type

event clicked;if isnull(sle_1.text) then
	dw_1.retrieve( )
elseif sle_1.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("referencia like '%"+sle_1.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	sle_2.text = string (dw_1.rowcount( ))
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type rb_1 from radiobutton within w_registroactividad
integer x = 151
integer y = 324
integer width = 215
integer height = 80
integer textsize = -10
integer weight = 700
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
	sle_2.text = string (dw_1.rowcount( ))
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type sle_1 from singlelineedit within w_registroactividad
integer x = 114
integer y = 144
integer width = 1810
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_registroactividad
integer x = 119
integer y = 616
integer width = 2811
integer height = 1196
integer taborder = 30
string title = "none"
string dataobject = "dw_registroactividad"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;this.settransobject( sqlca)
this.retrieve( )
end event

event constructor;this.settransobject( sqlca)
this.retrieve( )
end event

type gb_1 from groupbox within w_registroactividad
integer x = 2299
integer y = 68
integer width = 594
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

type gb_2 from groupbox within w_registroactividad
integer x = 64
integer y = 44
integer width = 1893
integer height = 424
integer taborder = 10
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

type gb_3 from groupbox within w_registroactividad
integer x = 41
integer y = 504
integer width = 2967
integer height = 1324
integer taborder = 20
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datos"
end type

