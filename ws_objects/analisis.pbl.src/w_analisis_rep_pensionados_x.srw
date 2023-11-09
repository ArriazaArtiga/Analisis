$PBExportHeader$w_analisis_rep_pensionados_x.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_pensionados_x from window
end type
type tabs from tab within w_analisis_rep_pensionados_x
end type
type tabpage_1 from userobject within tabs
end type
type dw_report_pensionado from datawindow within tabpage_1
end type
type pb_grabar from picturebutton within tabpage_1
end type
type pb_nuevo from picturebutton within tabpage_1
end type
type gb_acciones from groupbox within tabpage_1
end type
type tabpage_1 from userobject within tabs
dw_report_pensionado dw_report_pensionado
pb_grabar pb_grabar
pb_nuevo pb_nuevo
gb_acciones gb_acciones
end type
type tabpage_2 from userobject within tabs
end type
type pb_2 from picturebutton within tabpage_2
end type
type pb_1 from picturebutton within tabpage_2
end type
type dw_pensionado_depto from datawindow within tabpage_2
end type
type dw_deptos from datawindow within tabpage_2
end type
type st_1 from statictext within tabpage_2
end type
type gb_1 from groupbox within tabpage_2
end type
type tabpage_2 from userobject within tabs
pb_2 pb_2
pb_1 pb_1
dw_pensionado_depto dw_pensionado_depto
dw_deptos dw_deptos
st_1 st_1
gb_1 gb_1
end type
type tabpage_3 from userobject within tabs
end type
type cb_1 from commandbutton within tabpage_3
end type
type dw_1 from datawindow within tabpage_3
end type
type pb_4 from picturebutton within tabpage_3
end type
type pb_3 from picturebutton within tabpage_3
end type
type dw_pensionado_municipio from datawindow within tabpage_3
end type
type gb_2 from groupbox within tabpage_3
end type
type tabpage_3 from userobject within tabs
cb_1 cb_1
dw_1 dw_1
pb_4 pb_4
pb_3 pb_3
dw_pensionado_municipio dw_pensionado_municipio
gb_2 gb_2
end type
type tabs from tab within w_analisis_rep_pensionados_x
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
end type
end forward

global type w_analisis_rep_pensionados_x from window
integer x = 1289
integer y = 120
integer width = 4750
integer height = 3100
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
tabs tabs
end type
global w_analisis_rep_pensionados_x w_analisis_rep_pensionados_x

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni, ii_mes, ii_anio
DataWindowChild idwch_muni

string ls_impresora
end variables

on w_analisis_rep_pensionados_x.create
this.tabs=create tabs
this.Control[]={this.tabs}
end on

on w_analisis_rep_pensionados_x.destroy
destroy(this.tabs)
end on

event open;tabs.tabpage_1.dw_report_pensionado.SetTransObject(sqlca)
tabs.tabpage_2.dw_pensionado_depto.SetTransObject(sqlca)
tabs.tabpage_3.dw_pensionado_municipio.settransobject(sqlca)

	SetPointer(hourglass!)
tabs.tabpage_1.dw_report_pensionado.retrieve()

Long  ll_rows, ll_rows2, rowsM, rowsC
ll_rows = tabs.tabpage_2.dw_deptos.InsertRow(0)
tabs.tabpage_2.dw_deptos.ScrollToRow(ll_rows)
tabs.tabpage_2.dw_deptos.SetFocus()

end event

type tabs from tab within w_analisis_rep_pensionados_x
event create ( )
event destroy ( )
integer y = 28
integer width = 4859
integer height = 2980
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long backcolor = 32895212
boolean raggedright = true
boolean focusonbuttondown = true
integer selectedtab = 1
tabpage_1 tabpage_1
tabpage_2 tabpage_2
tabpage_3 tabpage_3
end type

on tabs.create
this.tabpage_1=create tabpage_1
this.tabpage_2=create tabpage_2
this.tabpage_3=create tabpage_3
this.Control[]={this.tabpage_1,&
this.tabpage_2,&
this.tabpage_3}
end on

on tabs.destroy
destroy(this.tabpage_1)
destroy(this.tabpage_2)
destroy(this.tabpage_3)
end on

event constructor;tabs.tabpage_1.dw_report_pensionado.SetTransObject(sqlca)
tabs.tabpage_2.dw_pensionado_depto.SetTransObject(sqlca)
end event

event clicked;tabs.tabpage_1.dw_report_pensionado.SetTransObject(sqlca)
tabs.tabpage_2.dw_pensionado_depto.SetTransObject(sqlca)
end event

type tabpage_1 from userobject within tabs
event create ( )
event destroy ( )
integer x = 18
integer y = 112
integer width = 4823
integer height = 2852
long backcolor = 32895212
string text = "Todos los pensionados"
long tabtextcolor = 33554432
long tabbackcolor = 32895212
long picturemaskcolor = 536870912
dw_report_pensionado dw_report_pensionado
pb_grabar pb_grabar
pb_nuevo pb_nuevo
gb_acciones gb_acciones
end type

on tabpage_1.create
this.dw_report_pensionado=create dw_report_pensionado
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.gb_acciones=create gb_acciones
this.Control[]={this.dw_report_pensionado,&
this.pb_grabar,&
this.pb_nuevo,&
this.gb_acciones}
end on

on tabpage_1.destroy
destroy(this.dw_report_pensionado)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.gb_acciones)
end on

event constructor;	dw_report_pensionado.SetTransObject(sqlca)
	dw_report_pensionado.Modify("DataWindow.Print.Preview=Yes")

	SetPointer(hourglass!)

end event

type dw_report_pensionado from datawindow within tabpage_1
integer x = 55
integer y = 36
integer width = 3849
integer height = 2448
integer taborder = 60
string title = "none"
string dataobject = "d_analisis_rep_pensionados"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

type pb_grabar from picturebutton within tabpage_1
integer x = 4000
integer y = 212
integer width = 402
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;Close(w_analisis_rep_pensionados_x)
end event

type pb_nuevo from picturebutton within tabpage_1
integer x = 4005
integer y = 88
integer width = 402
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 16813032
end type

event clicked;OpenWithParm(w_print_options, dw_report_pensionado)

If Message.DoubleParm = -1 Then Return
dw_report_pensionado.Print(True)
end event

type gb_acciones from groupbox within tabpage_1
integer x = 3927
integer width = 553
integer height = 356
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

type tabpage_2 from userobject within tabs
event create ( )
event destroy ( )
integer x = 18
integer y = 112
integer width = 4823
integer height = 2852
long backcolor = 32895212
string text = "Pensionado por Departamento"
long tabtextcolor = 33554432
long tabbackcolor = 32895212
long picturemaskcolor = 536870912
pb_2 pb_2
pb_1 pb_1
dw_pensionado_depto dw_pensionado_depto
dw_deptos dw_deptos
st_1 st_1
gb_1 gb_1
end type

on tabpage_2.create
this.pb_2=create pb_2
this.pb_1=create pb_1
this.dw_pensionado_depto=create dw_pensionado_depto
this.dw_deptos=create dw_deptos
this.st_1=create st_1
this.gb_1=create gb_1
this.Control[]={this.pb_2,&
this.pb_1,&
this.dw_pensionado_depto,&
this.dw_deptos,&
this.st_1,&
this.gb_1}
end on

on tabpage_2.destroy
destroy(this.pb_2)
destroy(this.pb_1)
destroy(this.dw_pensionado_depto)
destroy(this.dw_deptos)
destroy(this.st_1)
destroy(this.gb_1)
end on

type pb_2 from picturebutton within tabpage_2
integer x = 4000
integer y = 212
integer width = 402
integer height = 96
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;Close(w_analisis_rep_pensionados_x)
end event

type pb_1 from picturebutton within tabpage_2
integer x = 4005
integer y = 88
integer width = 402
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 16813032
end type

event clicked;OpenWithParm(w_print_options, dw_pensionado_depto)

If Message.DoubleParm = -1 Then Return
dw_pensionado_depto.Print(True)
end event

type dw_pensionado_depto from datawindow within tabpage_2
integer x = 55
integer y = 148
integer width = 3849
integer height = 2448
integer taborder = 70
string title = "none"
string dataobject = "d_analisis_rep_pensionados_depto"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

type dw_deptos from datawindow within tabpage_2
integer x = 471
integer y = 32
integer width = 864
integer height = 92
integer taborder = 60
string title = "none"
string dataobject = "dddw_deptos"
boolean livescroll = true
end type

event itemchanged;Long ll_rows

This.AcceptText()

ii_depto = This.object.depto[row]
 dw_pensionado_depto.SetFocus()
ll_rows = dw_pensionado_depto.retrieve(ii_depto)

commit;
end event

event constructor;This.SetTransObject(SQLCA)
end event

type st_1 from statictext within tabpage_2
integer x = 55
integer y = 48
integer width = 407
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 553648127
string text = "Departamento:"
boolean focusrectangle = false
end type

type gb_1 from groupbox within tabpage_2
integer x = 3927
integer width = 553
integer height = 356
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

type tabpage_3 from userobject within tabs
event create ( )
event destroy ( )
integer x = 18
integer y = 112
integer width = 4823
integer height = 2852
long backcolor = 32895212
string text = "Pensionados por Municipio"
long tabtextcolor = 33554432
long tabbackcolor = 32895212
long picturemaskcolor = 536870912
cb_1 cb_1
dw_1 dw_1
pb_4 pb_4
pb_3 pb_3
dw_pensionado_municipio dw_pensionado_municipio
gb_2 gb_2
end type

on tabpage_3.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.pb_4=create pb_4
this.pb_3=create pb_3
this.dw_pensionado_municipio=create dw_pensionado_municipio
this.gb_2=create gb_2
this.Control[]={this.cb_1,&
this.dw_1,&
this.pb_4,&
this.pb_3,&
this.dw_pensionado_municipio,&
this.gb_2}
end on

on tabpage_3.destroy
destroy(this.cb_1)
destroy(this.dw_1)
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.dw_pensionado_municipio)
destroy(this.gb_2)
end on

type cb_1 from commandbutton within tabpage_3
integer x = 1673
integer y = 68
integer width = 402
integer height = 112
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generar"
end type

event clicked;DataWindowChild dwcDepto, dwcMuni
integer codDepto, codMuni

	dw_1.getchild( "idmuni", dwcMuni)
	codMuni = dwcMuni.getrow( )
	
	dw_1.getchild( "iddepto", dwcDepto)
	codDepto = dwcDepto.getrow( )

dw_pensionado_municipio.settransobject(sqlca)
dw_pensionado_municipio.retrieve(codDepto,codMuni)
end event

type dw_1 from datawindow within tabpage_3
integer x = 229
integer y = 24
integer width = 1349
integer height = 240
integer taborder = 60
string title = "none"
string dataobject = "ddwf_x"
boolean border = false
string icon = "Report5!"
boolean livescroll = true
end type

event constructor;this.settransobject( sqlca)
this.retrieve( )
end event

event itemchanged;DataWindowChild dwcMuni, dwcDepto
int codDepto, codMuni


if String(dwo.name)="iddepto" then
	codDepto = integer(data)
	this.getchild( "idmuni", dwcMuni)
	dwcMuni.settransobject( sqlca)
	dwcMuni.retrieve(integer(data))
	codMuni = dwcMuni.getrow( )
else
	codMuni = integer(data)
	this.getchild( "idcodigo", dwcMuni)
	

end if 
end event

type pb_4 from picturebutton within tabpage_3
integer x = 4037
integer y = 280
integer width = 402
integer height = 96
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;Close(w_analisis_rep_pensionados_x)
end event

type pb_3 from picturebutton within tabpage_3
integer x = 4041
integer y = 156
integer width = 402
integer height = 96
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Imprimir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 16813032
end type

event clicked;OpenWithParm(w_print_options, dw_pensionado_municipio)

If Message.DoubleParm = -1 Then Return
dw_pensionado_municipio.Print(True)
end event

type dw_pensionado_municipio from datawindow within tabpage_3
integer x = 123
integer y = 368
integer width = 3849
integer height = 2448
integer taborder = 80
string title = "none"
string dataobject = "d_analisis_rep_pensionados_munis"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
end type

type gb_2 from groupbox within tabpage_3
integer x = 3963
integer y = 68
integer width = 553
integer height = 356
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

