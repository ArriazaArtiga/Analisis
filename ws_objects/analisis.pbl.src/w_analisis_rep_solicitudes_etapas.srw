$PBExportHeader$w_analisis_rep_solicitudes_etapas.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solicitudes_etapas from window
end type
type rb_1 from radiobutton within w_analisis_rep_solicitudes_etapas
end type
type rb_resumen from radiobutton within w_analisis_rep_solicitudes_etapas
end type
type rb_detalle from radiobutton within w_analisis_rep_solicitudes_etapas
end type
type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_etapas
end type
type pb_grabar from picturebutton within w_analisis_rep_solicitudes_etapas
end type
type pb_2 from picturebutton within w_analisis_rep_solicitudes_etapas
end type
type pb_3 from picturebutton within w_analisis_rep_solicitudes_etapas
end type
type dw_report from datawindow within w_analisis_rep_solicitudes_etapas
end type
type gb_acciones from groupbox within w_analisis_rep_solicitudes_etapas
end type
type gb_1 from groupbox within w_analisis_rep_solicitudes_etapas
end type
end forward

global type w_analisis_rep_solicitudes_etapas from window
integer x = 1289
integer y = 120
integer width = 5687
integer height = 4156
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
rb_1 rb_1
rb_resumen rb_resumen
rb_detalle rb_detalle
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_1 gb_1
end type
global w_analisis_rep_solicitudes_etapas w_analisis_rep_solicitudes_etapas

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solicitudes_etapas.create
this.rb_1=create rb_1
this.rb_resumen=create rb_resumen
this.rb_detalle=create rb_detalle
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_1=create gb_1
this.Control[]={this.rb_1,&
this.rb_resumen,&
this.rb_detalle,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_1}
end on

on w_analisis_rep_solicitudes_etapas.destroy
destroy(this.rb_1)
destroy(this.rb_resumen)
destroy(this.rb_detalle)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_1)
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
	dw_report.retrieve()
//	ll_row = dw_deptos.InsertRow(0)
//	dw_deptos.ScrollToRow(ll_row)
//	em_depto.SetFocus()
//	dw_report.Retrieve(iuo_Parm.is_Application, iuo_Parm.is_Object)
//End If
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type rb_1 from radiobutton within w_analisis_rep_solicitudes_etapas
integer x = 114
integer y = 172
integer width = 1029
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resumen por Etapa "
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_solicitud_resumen_etapas_expediente"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type rb_resumen from radiobutton within w_analisis_rep_solicitudes_etapas
integer x = 119
integer y = 284
integer width = 1029
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resumen por Etapa y Departamento"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_resumen_solicitudes_x_etapa"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type rb_detalle from radiobutton within w_analisis_rep_solicitudes_etapas
integer x = 114
integer y = 84
integer width = 402
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Detalle"
boolean checked = true
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_etapas_solicitudes"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_etapas
integer x = 174
integer y = 516
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

type pb_grabar from picturebutton within w_analisis_rep_solicitudes_etapas
integer x = 174
integer y = 652
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

event clicked;Close(w_analisis_rep_solicitudes_etapas)
end event

type pb_2 from picturebutton within w_analisis_rep_solicitudes_etapas
integer x = 69
integer y = 516
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

type pb_3 from picturebutton within w_analisis_rep_solicitudes_etapas
integer x = 69
integer y = 652
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

event clicked;Close(w_analisis_rep_solicitudes_etapas)
end event

type dw_report from datawindow within w_analisis_rep_solicitudes_etapas
integer x = 1298
integer y = 32
integer width = 4178
integer height = 3972
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_etapas_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_solicitudes_etapas
integer x = 50
integer y = 428
integer width = 553
integer height = 356
integer taborder = 30
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 553648127
string text = "Acciones"
end type

type gb_1 from groupbox within w_analisis_rep_solicitudes_etapas
integer x = 37
integer width = 1221
integer height = 428
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Tipo Reporte"
end type

