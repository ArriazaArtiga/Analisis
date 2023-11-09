$PBExportHeader$w_analisis_rep_oficio_conta.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_oficio_conta from window
end type
type pb_nuevo from picturebutton within w_analisis_rep_oficio_conta
end type
type pb_grabar from picturebutton within w_analisis_rep_oficio_conta
end type
type pb_2 from picturebutton within w_analisis_rep_oficio_conta
end type
type pb_3 from picturebutton within w_analisis_rep_oficio_conta
end type
type dw_report from datawindow within w_analisis_rep_oficio_conta
end type
type gb_acciones from groupbox within w_analisis_rep_oficio_conta
end type
end forward

global type w_analisis_rep_oficio_conta from window
integer x = 1289
integer y = 120
integer width = 4891
integer height = 2712
boolean titlebar = true
string title = ".:. PPEM SIG - Módulo Análisis - Reporte oficio a conta notificando muerte de jubilado .:."
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
end type
global w_analisis_rep_oficio_conta w_analisis_rep_oficio_conta

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni
end variables

on w_analisis_rep_oficio_conta.create
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.Control[]={this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones}
end on

on w_analisis_rep_oficio_conta.destroy
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
end on

event open;Long ll_row
//iuo_Parm = Message.PowerObjectParm
//
//If Not IsValid(iuo_Parm) Then
//	Beep(1)
//
//Else
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	/*dw_report.Modify("datawindow.print.preview.zoom = " + String(ii_CurrentZoom))*/
//	This.title = "Detail Report For " + trim(iuo_parm.is_Title) + " Example (Zoom: " + String(ii_CurrentZoom) + "%)"
//	Post Event ue_postopen()
	SetPointer(hourglass!)
	dw_report.retrieve(gs_dpi)
	commit;
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
//	em_depto.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type pb_nuevo from picturebutton within w_analisis_rep_oficio_conta
integer x = 4366
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

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_grabar from picturebutton within w_analisis_rep_oficio_conta
integer x = 4366
integer y = 224
integer width = 402
integer height = 96
integer taborder = 50
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

event clicked;Close(w_analisis_rep_oficio_conta)
end event

type pb_2 from picturebutton within w_analisis_rep_oficio_conta
integer x = 4261
integer y = 88
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer.png"
long backcolor = 33554432
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type pb_3 from picturebutton within w_analisis_rep_oficio_conta
integer x = 4261
integer y = 224
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Exit.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_rep_oficio_conta)
end event

type dw_report from datawindow within w_analisis_rep_oficio_conta
integer x = 32
integer y = 32
integer width = 4178
integer height = 2532
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_oficio_conta"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_oficio_conta
integer x = 4242
integer width = 553
integer height = 356
integer taborder = 30
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

