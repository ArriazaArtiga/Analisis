$PBExportHeader$w_analisis_rep_aprobados.srw
forward
global type w_analisis_rep_aprobados from window
end type
type ddlb_1 from dropdownlistbox within w_analisis_rep_aprobados
end type
type grabar from picturebutton within w_analisis_rep_aprobados
end type
type imprimir from picturebutton within w_analisis_rep_aprobados
end type
type dw_1 from datawindow within w_analisis_rep_aprobados
end type
type cb_1 from commandbutton within w_analisis_rep_aprobados
end type
type gb_acciones from groupbox within w_analisis_rep_aprobados
end type
end forward

global type w_analisis_rep_aprobados from window
integer width = 4457
integer height = 2628
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
ddlb_1 ddlb_1
grabar grabar
imprimir imprimir
dw_1 dw_1
cb_1 cb_1
gb_acciones gb_acciones
end type
global w_analisis_rep_aprobados w_analisis_rep_aprobados

on w_analisis_rep_aprobados.create
this.ddlb_1=create ddlb_1
this.grabar=create grabar
this.imprimir=create imprimir
this.dw_1=create dw_1
this.cb_1=create cb_1
this.gb_acciones=create gb_acciones
this.Control[]={this.ddlb_1,&
this.grabar,&
this.imprimir,&
this.dw_1,&
this.cb_1,&
this.gb_acciones}
end on

on w_analisis_rep_aprobados.destroy
destroy(this.ddlb_1)
destroy(this.grabar)
destroy(this.imprimir)
destroy(this.dw_1)
destroy(this.cb_1)
destroy(this.gb_acciones)
end on

type ddlb_1 from dropdownlistbox within w_analisis_rep_aprobados
integer x = 55
integer y = 32
integer width = 567
integer height = 400
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string item[] = {"80","110"}
borderstyle borderstyle = stylelowered!
end type

type grabar from picturebutton within w_analisis_rep_aprobados
integer x = 3913
integer y = 472
integer width = 402
integer height = 96
integer taborder = 40
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

event clicked;Close(w_analisis_rep_solic_x_tramite_et_100_110)
end event

type imprimir from picturebutton within w_analisis_rep_aprobados
integer x = 3913
integer y = 336
integer width = 402
integer height = 96
integer taborder = 30
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

event clicked;OpenWithParm(w_print_options, dw_1)

If Message.DoubleParm = -1 Then Return
dw_1.Print(True)
end event

type dw_1 from datawindow within w_analisis_rep_aprobados
integer x = 46
integer y = 248
integer width = 3634
integer height = 2172
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_etapas02"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type cb_1 from commandbutton within w_analisis_rep_aprobados
integer x = 681
integer y = 32
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Generar"
end type

event clicked;	dw_1.SetTransObject(sqlca)
	dw_1.Modify("DataWindow.Print.Preview=Yes")
	dw_1.retrieve(integer(ddlb_1.text))
end event

type gb_acciones from groupbox within w_analisis_rep_aprobados
integer x = 3790
integer y = 248
integer width = 553
integer height = 356
integer taborder = 40
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

