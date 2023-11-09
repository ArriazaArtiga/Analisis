$PBExportHeader$w_nomina.srw
forward
global type w_nomina from window
end type
type tab_1 from tab within w_nomina
end type
type tabpage_1 from userobject within tab_1
end type
type st_3 from statictext within tabpage_1
end type
type st_2 from statictext within tabpage_1
end type
type st_1 from statictext within tabpage_1
end type
type mes from editmask within tabpage_1
end type
type al from datepicker within tabpage_1
end type
type del from datepicker within tabpage_1
end type
type gb_1 from groupbox within tabpage_1
end type
type tabpage_1 from userobject within tab_1
st_3 st_3
st_2 st_2
st_1 st_1
mes mes
al al
del del
gb_1 gb_1
end type
type tabpage_2 from userobject within tab_1
end type
type dw_1 from datawindow within tabpage_2
end type
type tabpage_2 from userobject within tab_1
dw_1 dw_1
end type
type tabpage_5 from userobject within tab_1
end type
type cb_4 from commandbutton within tabpage_5
end type
type dw_4 from datawindow within tabpage_5
end type
type tabpage_5 from userobject within tab_1
cb_4 cb_4
dw_4 dw_4
end type
type tabpage_3 from userobject within tab_1
end type
type cb_3 from commandbutton within tabpage_3
end type
type st_5 from statictext within tabpage_3
end type
type st_4 from statictext within tabpage_3
end type
type em_2 from editmask within tabpage_3
end type
type em_1 from editmask within tabpage_3
end type
type cb_2 from commandbutton within tabpage_3
end type
type cb_1 from commandbutton within tabpage_3
end type
type cui from editmask within tabpage_3
end type
type dw_3 from datawindow within tabpage_3
end type
type dw_2 from datawindow within tabpage_3
end type
type gb_2 from groupbox within tabpage_3
end type
type gb_3 from groupbox within tabpage_3
end type
type tabpage_3 from userobject within tab_1
cb_3 cb_3
st_5 st_5
st_4 st_4
em_2 em_2
em_1 em_1
cb_2 cb_2
cb_1 cb_1
cui cui
dw_3 dw_3
dw_2 dw_2
gb_2 gb_2
gb_3 gb_3
end type
type tabpage_4 from userobject within tab_1
end type
type tabpage_4 from userobject within tab_1
end type
type tab_1 from tab within w_nomina
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_5 tabpage_5
tabpage_3 tabpage_3
tabpage_4 tabpage_4
end type
end forward

global type w_nomina from window
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
tab_1 tab_1
end type
global w_nomina w_nomina

on w_nomina.create
this.tab_1=create tab_1
this.Control[]={this.tab_1}
end on

on w_nomina.destroy
destroy(this.tab_1)
end on

event open;/*datastore _x
string datos

_x=create datastore//creando el datastore
_x.settransobject(sqlca)//cone_xion al datastore
_x.dataobject="dw_tiponomina"//datawindow creado
_x.setTransObject(sqlca)//cone_xion al datstore
_x.retrieve() //recuperando datos del datawindow

tnomina.reset() //reseteando el ddlb
Integer il_c
for il_c=1 to _x.rowcount()
datos=_x.GetItemString(il_c,'Descripcion') //conciguiendo el campo para el datastore
tnomina.additem(datos) //adicionando el campo para el ddlb
next
destroy _x*/
long filas

tab_1.tabpage_2.dw_1.settransobject(sqlca)
tab_1.tabpage_2.dw_1.insertrow(1)
tab_1.tabpage_3.dw_2.settransobject(sqlca)
tab_1.tabpage_3.dw_2.insertrow(1)
tab_1.tabpage_3.dw_3.settransobject(sqlca)
tab_1.tabpage_3.dw_3.insertrow(1)
tab_1.tabpage_5.dw_4.settransobject(sqlca)
tab_1.tabpage_5.dw_4.retrieve()
//filas = tab_1.tabpage_2.dw_1.getrow()
//tab_1.tabpage_2.dw_1.object.inicio[filas] = datetime(today(), now())
end event

type tab_1 from tab within w_nomina
integer x = 41
integer y = 32
integer width = 4645
integer height = 1724
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 67108864
boolean raggedright = true
boolean focusonbuttondown = true
alignment alignment = center!
integer selectedtab = 1
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_5 tabpage_5
tabpage_3 tabpage_3
tabpage_4 tabpage_4
end type

on tab_1.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.tabpage_5=create tabpage_5
this.tabpage_3=create tabpage_3
this.tabpage_4=create tabpage_4
this.Control[]={this.tabpage_1,&
this.tabpage_2,&
this.tabpage_5,&
this.tabpage_3,&
this.tabpage_4}
end on

on tab_1.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
destroy(this.tabpage_5)
destroy(this.tabpage_3)
destroy(this.tabpage_4)
end on

type tabpage_1 from userobject within tab_1
event create ( )
event destroy ( )
integer x = 18
integer y = 112
integer width = 4608
integer height = 1596
long backcolor = 67108864
string text = "Parametros"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
st_3 st_3
st_2 st_2
st_1 st_1
mes mes
al al
del del
gb_1 gb_1
end type

on tabpage_1.create
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.mes=create mes
this.al=create al
this.del=create del
this.gb_1=create gb_1
this.Control[]={this.st_3,&
this.st_2,&
this.st_1,&
this.mes,&
this.al,&
this.del,&
this.gb_1}
end on

on tabpage_1.destroy
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.mes)
destroy(this.al)
destroy(this.del)
destroy(this.gb_1)
end on

type st_3 from statictext within tabpage_1
integer x = 430
integer y = 516
integer width = 457
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Fecha Final:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_2 from statictext within tabpage_1
integer x = 498
integer y = 400
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
string text = "Fecha Inicial:"
alignment alignment = right!
boolean focusrectangle = false
end type

type st_1 from statictext within tabpage_1
integer x = 375
integer y = 248
integer width = 512
integer height = 76
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Número de meses:"
alignment alignment = right!
boolean focusrectangle = false
end type

type mes from editmask within tabpage_1
integer x = 937
integer y = 228
integer width = 512
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "0"
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "##"
boolean autoskip = true
boolean spin = true
double increment = 1
string minmax = "1~~12"
end type

event modified;date actualFecha,nuevaFecha, finFecha
long meses, año, mex
tab_1.tabpage_1.al.value = datetime(today(),now())
if not isnull(this.text) and  long(this.text) > 0  then
	tab_1.tabpage_1.del.enabled = true
	actualFecha = date(tab_1.tabpage_1.al.text)
	meses = long(this.text)+1
	nuevaFecha = date(f_sumarmeses(meses,datetime(actualFecha)))
	finFecha = date(year(nuevaFecha),month(nuevaFecha),01 )
	tab_1.tabpage_1.al.value = datetime(relativedate(finFecha,-1),now())
else 
	tab_1.tabpage_1.del.enabled = false
end if
end event

type al from datepicker within tabpage_1
integer x = 942
integer y = 512
integer width = 512
integer height = 112
integer taborder = 40
boolean border = true
borderstyle borderstyle = stylelowered!
boolean enabled = false
string customformat = "dd/mm/yyyy"
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2023-10-31"), Time("11:45:47.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
end type

event valuechanged;date actualFecha,nuevaFecha, finFecha
long meses, año
actualFecha = date(this.text)
nuevaFecha = date(year(actualFecha),month(actualFecha),01 )
tab_1.tabpage_1.del.value = datetime(nuevaFecha)


end event

type del from datepicker within tabpage_1
integer x = 942
integer y = 380
integer width = 512
integer height = 112
integer taborder = 30
boolean border = true
borderstyle borderstyle = stylelowered!
boolean enabled = false
string customformat = "01/mm/yyyy"
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2023-10-01"), Time("07:09:30.000000"))
integer textsize = -10
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

event valuechanged;date actualFecha,nuevaFecha, finFecha
long meses, año
tab_1.tabpage_1.al.value = datetime(today(),now())
actualFecha = date(this.text)
meses = long(this.text)+1
nuevaFecha = date(f_sumarmeses(meses,datetime(actualFecha)))
finFecha = date(year(nuevaFecha),month(nuevaFecha),01 )
tab_1.tabpage_1.al.value = datetime(relativedate(finFecha,-1),now())


end event

type gb_1 from groupbox within tabpage_1
integer x = 160
integer y = 112
integer width = 1408
integer height = 548
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Periodo"
end type

type tabpage_2 from userobject within tab_1
event create ( )
event destroy ( )
integer x = 18
integer y = 112
integer width = 4608
integer height = 1596
long backcolor = 67108864
string text = "Encabezado"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
dw_1 dw_1
end type

on tabpage_2.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on tabpage_2.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within tabpage_2
integer x = 101
integer y = 48
integer width = 2853
integer height = 1124
integer taborder = 20
string title = "none"
string dataobject = "dw_nomina"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tabpage_5 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 4608
integer height = 1596
long backcolor = 67108864
string text = "Previa"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_4 cb_4
dw_4 dw_4
end type

on tabpage_5.create
this.cb_4=create cb_4
this.dw_4=create dw_4
this.Control[]={this.cb_4,&
this.dw_4}
end on

on tabpage_5.destroy
destroy(this.cb_4)
destroy(this.dw_4)
end on

type cb_4 from commandbutton within tabpage_5
integer x = 4160
integer y = 76
integer width = 402
integer height = 112
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Revisar"
end type

event clicked;dw_4.SetTransObject(sqlca)
dw_4.retrieve()
dw_4.SaveAs("", Excel!, true)

end event

type dw_4 from datawindow within tabpage_5
integer x = 59
integer y = 44
integer width = 4055
integer height = 1568
integer taborder = 20
string title = "none"
string dataobject = "dw_pensionado02"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type tabpage_3 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 4608
integer height = 1596
long backcolor = 67108864
string text = "Detalle"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
cb_3 cb_3
st_5 st_5
st_4 st_4
em_2 em_2
em_1 em_1
cb_2 cb_2
cb_1 cb_1
cui cui
dw_3 dw_3
dw_2 dw_2
gb_2 gb_2
gb_3 gb_3
end type

on tabpage_3.create
this.cb_3=create cb_3
this.st_5=create st_5
this.st_4=create st_4
this.em_2=create em_2
this.em_1=create em_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.cui=create cui
this.dw_3=create dw_3
this.dw_2=create dw_2
this.gb_2=create gb_2
this.gb_3=create gb_3
this.Control[]={this.cb_3,&
this.st_5,&
this.st_4,&
this.em_2,&
this.em_1,&
this.cb_2,&
this.cb_1,&
this.cui,&
this.dw_3,&
this.dw_2,&
this.gb_2,&
this.gb_3}
end on

on tabpage_3.destroy
destroy(this.cb_3)
destroy(this.st_5)
destroy(this.st_4)
destroy(this.em_2)
destroy(this.em_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.cui)
destroy(this.dw_3)
destroy(this.dw_2)
destroy(this.gb_2)
destroy(this.gb_3)
end on

type cb_3 from commandbutton within tabpage_3
integer x = 3849
integer y = 284
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

type st_5 from statictext within tabpage_3
integer x = 3346
integer y = 616
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
string text = "Monto Planilla:"
boolean focusrectangle = false
end type

type st_4 from statictext within tabpage_3
integer x = 2373
integer y = 624
integer width = 421
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "# Pensionados:"
boolean focusrectangle = false
end type

type em_2 from editmask within tabpage_3
integer x = 3762
integer y = 600
integer width = 402
integer height = 112
integer taborder = 90
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

type em_1 from editmask within tabpage_3
integer x = 2843
integer y = 596
integer width = 402
integer height = 112
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
string mask = "#####"
end type

type cb_2 from commandbutton within tabpage_3
integer x = 3849
integer y = 124
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Agregar"
end type

type cb_1 from commandbutton within tabpage_3
integer x = 1865
integer y = 612
integer width = 402
integer height = 112
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Buscar"
end type

type cui from editmask within tabpage_3
integer x = 590
integer y = 608
integer width = 1189
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
borderstyle borderstyle = stylelowered!
string mask = "#############"
end type

type dw_3 from datawindow within tabpage_3
integer x = 101
integer y = 164
integer width = 3547
integer height = 256
integer taborder = 20
string title = "none"
string dataobject = "dw_nomina_detalle_freform"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type dw_2 from datawindow within tabpage_3
integer x = 119
integer y = 768
integer width = 4251
integer height = 872
integer taborder = 30
string title = "none"
string dataobject = "dw_nomina_detalle_grid"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_2 from groupbox within tabpage_3
integer x = 41
integer y = 28
integer width = 4375
integer height = 432
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Agrega o modifica"
end type

type gb_3 from groupbox within tabpage_3
integer x = 46
integer y = 488
integer width = 4375
integer height = 1200
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Detalle Nomina"
end type

type tabpage_4 from userobject within tab_1
integer x = 18
integer y = 112
integer width = 4608
integer height = 1596
long backcolor = 67108864
string text = "Resumen"
long tabtextcolor = 33554432
long picturemaskcolor = 536870912
end type

