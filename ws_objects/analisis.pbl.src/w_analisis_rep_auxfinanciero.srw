$PBExportHeader$w_analisis_rep_auxfinanciero.srw
forward
global type w_analisis_rep_auxfinanciero from window
end type
type st_3 from statictext within w_analisis_rep_auxfinanciero
end type
type st_1 from statictext within w_analisis_rep_auxfinanciero
end type
type st_2 from statictext within w_analisis_rep_auxfinanciero
end type
type cui from editmask within w_analisis_rep_auxfinanciero
end type
type pensionado from editmask within w_analisis_rep_auxfinanciero
end type
type resolucion from editmask within w_analisis_rep_auxfinanciero
end type
type cb_1 from commandbutton within w_analisis_rep_auxfinanciero
end type
type dp_1 from datepicker within w_analisis_rep_auxfinanciero
end type
type rb_3 from radiobutton within w_analisis_rep_auxfinanciero
end type
type rb_2 from radiobutton within w_analisis_rep_auxfinanciero
end type
type rb_1 from radiobutton within w_analisis_rep_auxfinanciero
end type
type dw_1 from datawindow within w_analisis_rep_auxfinanciero
end type
type gb_1 from groupbox within w_analisis_rep_auxfinanciero
end type
type gb_2 from groupbox within w_analisis_rep_auxfinanciero
end type
end forward

global type w_analisis_rep_auxfinanciero from window
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
st_3 st_3
st_1 st_1
st_2 st_2
cui cui
pensionado pensionado
resolucion resolucion
cb_1 cb_1
dp_1 dp_1
rb_3 rb_3
rb_2 rb_2
rb_1 rb_1
dw_1 dw_1
gb_1 gb_1
gb_2 gb_2
end type
global w_analisis_rep_auxfinanciero w_analisis_rep_auxfinanciero

on w_analisis_rep_auxfinanciero.create
this.st_3=create st_3
this.st_1=create st_1
this.st_2=create st_2
this.cui=create cui
this.pensionado=create pensionado
this.resolucion=create resolucion
this.cb_1=create cb_1
this.dp_1=create dp_1
this.rb_3=create rb_3
this.rb_2=create rb_2
this.rb_1=create rb_1
this.dw_1=create dw_1
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.st_3,&
this.st_1,&
this.st_2,&
this.cui,&
this.pensionado,&
this.resolucion,&
this.cb_1,&
this.dp_1,&
this.rb_3,&
this.rb_2,&
this.rb_1,&
this.dw_1,&
this.gb_1,&
this.gb_2}
end on

on w_analisis_rep_auxfinanciero.destroy
destroy(this.st_3)
destroy(this.st_1)
destroy(this.st_2)
destroy(this.cui)
destroy(this.pensionado)
destroy(this.resolucion)
destroy(this.cb_1)
destroy(this.dp_1)
destroy(this.rb_3)
destroy(this.rb_2)
destroy(this.rb_1)
destroy(this.dw_1)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;dw_1.rowcount( )
end event

type st_3 from statictext within w_analisis_rep_auxfinanciero
integer x = 3342
integer y = 188
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
string text = "CUI:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_analisis_rep_auxfinanciero
integer x = 2034
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
string text = "Resolución:"
boolean focusrectangle = false
end type

type st_2 from statictext within w_analisis_rep_auxfinanciero
integer x = 2034
integer y = 272
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
string text = "Pensionado:"
boolean focusrectangle = false
end type

type cui from editmask within w_analisis_rep_auxfinanciero
integer x = 3342
integer y = 256
integer width = 1157
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean enabled = false
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
string mask = "#############"
end type

event modified;
if isnull(this.text) then
	dw_1.retrieve(datetime(dp_1.text) )
elseif this.text = ""  then
	dw_1.retrieve( datetime(dp_1.text))
else 
	if dw_1.dataobject = '"d_analisis_rep_auxfinanciero_vi"' then
		dw_1.setfilter("cui like '%"+this.text+"%'")
		dw_1.filter( ) 
		dw_1.sort( )
	elseif dw_1.dataobject = '"d_analisis_rep_auxfinanciero_mjma"' then
		dw_1.setfilter("cui like '%"+this.text+"%'")
		dw_1.filter( ) 
		dw_1.sort( )
	else
		dw_1.setfilter("cui_pensionado like '%"+this.text+"%'")
		dw_1.filter( ) 
		dw_1.sort( )
	end if
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if

resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type pensionado from editmask within w_analisis_rep_auxfinanciero
integer x = 2034
integer y = 332
integer width = 1157
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
end type

event modified;
if isnull(this.text) then
	dw_1.retrieve(datetime(dp_1.text) )
elseif this.text = ""  then
	dw_1.retrieve(datetime(dp_1.text) )
else 
	dw_1.setfilter("Pensionado like '%"+this.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if

resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type resolucion from editmask within w_analisis_rep_auxfinanciero
integer x = 2034
integer y = 136
integer width = 1157
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = stringmask!
end type

event modified;
if isnull(this.text) then
	dw_1.retrieve(datetime(dp_1.text) )
elseif this.text = ""  then
	dw_1.retrieve( datetime(dp_1.text))
else 
	dw_1.setfilter("Resolucion like '%"+this.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if

resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type cb_1 from commandbutton within w_analisis_rep_auxfinanciero
integer x = 1179
integer y = 344
integer width = 439
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
boolean enabled = false
string text = "Exportar"
end type

event clicked;dw_1.SetTransObject(sqlca)
dw_1.retrieve(datetime(dp_1.text))
dw_1.SaveAs("", Excel!, true)

end event

type dp_1 from datepicker within w_analisis_rep_auxfinanciero
integer x = 110
integer y = 136
integer width = 686
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2023-10-04"), Time("15:11:27.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

event valuechanged;rb_1.enabled= true;
rb_2.enabled= true;
rb_3.enabled= true;

end event

type rb_3 from radiobutton within w_analisis_rep_auxfinanciero
integer x = 96
integer y = 376
integer width = 914
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Muerte Jubilado y Muerte Activo"
end type

event clicked;datetime fecha
fecha = datetime(dp_1.text)
cb_1.enabled = true
dw_1.DataObject = "d_analisis_rep_auxfinanciero_mjma"
dw_1.settransobject(sqlca)
dw_1.retrieve(fecha)
resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type rb_2 from radiobutton within w_analisis_rep_auxfinanciero
integer x = 1193
integer y = 248
integer width = 411
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Beneficiarios"
end type

event clicked;cb_1.enabled = true

dw_1.DataObject = "d_analisis_rep_auxfinanciero_benef"
dw_1.settransobject(sqlca)
dw_1.retrieve(datetime(dp_1.text))

resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type rb_1 from radiobutton within w_analisis_rep_auxfinanciero
integer x = 101
integer y = 256
integer width = 667
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "Vejez, Invalidez y CV"
end type

event clicked;datetime fecha
fecha =datetime(dp_1.text)
cb_1.enabled = true
dw_1.dataobject = "d_analisis_rep_auxfinanciero_vi"
dw_1.settransobject(sqlca)
dw_1.retrieve(fecha)
resolucion.text = ""
pensionado.text = ""
cui.text = ""
end event

type dw_1 from datawindow within w_analisis_rep_auxfinanciero
integer x = 46
integer y = 504
integer width = 4562
integer height = 1224
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_rep_auxfinanciero_vi"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_1 from groupbox within w_analisis_rep_auxfinanciero
integer x = 27
integer y = 24
integer width = 1650
integer height = 460
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Parametros"
end type

type gb_2 from groupbox within w_analisis_rep_auxfinanciero
integer x = 1710
integer y = 20
integer width = 2907
integer height = 460
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Filtro"
end type

