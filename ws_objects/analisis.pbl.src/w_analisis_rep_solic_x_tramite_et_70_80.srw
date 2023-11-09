$PBExportHeader$w_analisis_rep_solic_x_tramite_et_70_80.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solic_x_tramite_et_70_80 from window
end type
type pb_buscar from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type pb_buscar1 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type st_2 from statictext within w_analisis_rep_solic_x_tramite_et_70_80
end type
type em_listado from editmask within w_analisis_rep_solic_x_tramite_et_70_80
end type
type pb_nuevo from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type pb_grabar from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type pb_2 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type pb_3 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
end type
type dw_report from datawindow within w_analisis_rep_solic_x_tramite_et_70_80
end type
type gb_acciones from groupbox within w_analisis_rep_solic_x_tramite_et_70_80
end type
end forward

global type w_analisis_rep_solic_x_tramite_et_70_80 from window
integer x = 1289
integer y = 120
integer width = 4891
integer height = 2712
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
pb_buscar pb_buscar
pb_buscar1 pb_buscar1
st_2 st_2
em_listado em_listado
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
end type
global w_analisis_rep_solic_x_tramite_et_70_80 w_analisis_rep_solic_x_tramite_et_70_80

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni, ii_etapa
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solic_x_tramite_et_70_80.create
this.pb_buscar=create pb_buscar
this.pb_buscar1=create pb_buscar1
this.st_2=create st_2
this.em_listado=create em_listado
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.Control[]={this.pb_buscar,&
this.pb_buscar1,&
this.st_2,&
this.em_listado,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones}
end on

on w_analisis_rep_solic_x_tramite_et_70_80.destroy
destroy(this.pb_buscar)
destroy(this.pb_buscar1)
destroy(this.st_2)
destroy(this.em_listado)
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
	em_listado.SetFocus()
//	dw_report.retrieve()
//	commit;
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
//	em_depto.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type pb_buscar from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
integer x = 837
integer y = 16
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 29397330
end type

event clicked;Long ll_rows, ll_rows_detalle
String ls_tramite

dw_report.SetFocus()

choose case ii_etapa
	case 70  /* Rechazo AI */
		dw_report.DataObject = "d_analisis_rep_solicitudes_etapa_70"
	case 80  /* Aprobado AI */
		dw_report.DataObject = "d_analisis_rep_solicitudes_etapa_80"
	case else
		MessageBox ('¡¡ Precuación !!', 'Solo puede ingresar los números de etapa 70 u 80 para visualizar el reporte', Exclamation!, OK! )
end choose

if ii_etapa = 70 or ii_etapa = 80 then
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	ll_rows = dw_report.retrieve()
	commit;
end if




end event

type pb_buscar1 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
integer x = 731
integer y = 16
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
long backcolor = 0
end type

type st_2 from statictext within w_analisis_rep_solic_x_tramite_et_70_80
integer x = 37
integer y = 20
integer width = 256
integer height = 100
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 67108864
string text = "Etapa:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_listado from editmask within w_analisis_rep_solic_x_tramite_et_70_80
integer x = 293
integer y = 20
integer width = 421
integer height = 100
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
alignment alignment = center!
borderstyle borderstyle = stylelowered!
string mask = "#####"
end type

event modified;//Integer li_listado

ii_etapa = integer(this.text)


end event

type pb_nuevo from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
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

type pb_grabar from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
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

event clicked;Close(w_analisis_rep_solic_x_tramite_et_70_80)
end event

type pb_2 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
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

type pb_3 from picturebutton within w_analisis_rep_solic_x_tramite_et_70_80
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

event clicked;Close(w_analisis_rep_solic_x_tramite_et_70_80)
end event

type dw_report from datawindow within w_analisis_rep_solic_x_tramite_et_70_80
integer x = 32
integer y = 128
integer width = 4178
integer height = 2436
integer taborder = 20
string title = "none"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_solic_x_tramite_et_70_80
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

