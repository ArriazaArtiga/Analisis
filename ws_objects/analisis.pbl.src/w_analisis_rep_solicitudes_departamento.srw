$PBExportHeader$w_analisis_rep_solicitudes_departamento.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solicitudes_departamento from window
end type
type rb_1 from radiobutton within w_analisis_rep_solicitudes_departamento
end type
type rb_detalle from radiobutton within w_analisis_rep_solicitudes_departamento
end type
type rb_resumen from radiobutton within w_analisis_rep_solicitudes_departamento
end type
type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_departamento
end type
type pb_4 from picturebutton within w_analisis_rep_solicitudes_departamento
end type
type pb_1 from picturebutton within w_analisis_rep_solicitudes_departamento
end type
type dw_report from datawindow within w_analisis_rep_solicitudes_departamento
end type
type pb_salir from picturebutton within w_analisis_rep_solicitudes_departamento
end type
type gb_acciones from groupbox within w_analisis_rep_solicitudes_departamento
end type
type gb_1 from groupbox within w_analisis_rep_solicitudes_departamento
end type
end forward

global type w_analisis_rep_solicitudes_departamento from window
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
rb_1 rb_1
rb_detalle rb_detalle
rb_resumen rb_resumen
pb_nuevo pb_nuevo
pb_4 pb_4
pb_1 pb_1
dw_report dw_report
pb_salir pb_salir
gb_acciones gb_acciones
gb_1 gb_1
end type
global w_analisis_rep_solicitudes_departamento w_analisis_rep_solicitudes_departamento

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solicitudes_departamento.create
this.rb_1=create rb_1
this.rb_detalle=create rb_detalle
this.rb_resumen=create rb_resumen
this.pb_nuevo=create pb_nuevo
this.pb_4=create pb_4
this.pb_1=create pb_1
this.dw_report=create dw_report
this.pb_salir=create pb_salir
this.gb_acciones=create gb_acciones
this.gb_1=create gb_1
this.Control[]={this.rb_1,&
this.rb_detalle,&
this.rb_resumen,&
this.pb_nuevo,&
this.pb_4,&
this.pb_1,&
this.dw_report,&
this.pb_salir,&
this.gb_acciones,&
this.gb_1}
end on

on w_analisis_rep_solicitudes_departamento.destroy
destroy(this.rb_1)
destroy(this.rb_detalle)
destroy(this.rb_resumen)
destroy(this.pb_nuevo)
destroy(this.pb_4)
destroy(this.pb_1)
destroy(this.dw_report)
destroy(this.pb_salir)
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

type rb_1 from radiobutton within w_analisis_rep_solicitudes_departamento
integer x = 119
integer y = 160
integer width = 1275
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resumen x Departamento y Entidad Municipal"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_resumen_sol_x_depto_xmuni"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If


end event

type rb_detalle from radiobutton within w_analisis_rep_solicitudes_departamento
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
	dw_report.DataObject = "d_analisis_rep_deptos_solicitudes"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type rb_resumen from radiobutton within w_analisis_rep_solicitudes_departamento
integer x = 119
integer y = 240
integer width = 969
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Resumen x Departamento y Etapa"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_resumen_solicitudes_x_depto"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If


end event

type pb_nuevo from picturebutton within w_analisis_rep_solicitudes_departamento
integer x = 4366
integer y = 88
integer width = 402
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
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

type pb_4 from picturebutton within w_analisis_rep_solicitudes_departamento
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

event clicked;Close(w_analisis_mnt_solicitudes)
end event

type pb_1 from picturebutton within w_analisis_rep_solicitudes_departamento
integer x = 4261
integer y = 88
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -12
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer.png"
end type

event clicked;OpenWithParm(w_print_options, dw_report)

If Message.DoubleParm = -1 Then Return
dw_report.Print(True)
end event

type dw_report from datawindow within w_analisis_rep_solicitudes_departamento
integer x = 32
integer y = 420
integer width = 4178
integer height = 2144
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_deptos_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type pb_salir from picturebutton within w_analisis_rep_solicitudes_departamento
integer x = 4366
integer y = 224
integer width = 402
integer height = 96
integer taborder = 30
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

event clicked;Close(w_analisis_rep_solicitudes_departamento)
end event

type gb_acciones from groupbox within w_analisis_rep_solicitudes_departamento
integer x = 4242
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

type gb_1 from groupbox within w_analisis_rep_solicitudes_departamento
integer x = 37
integer width = 1659
integer height = 356
integer taborder = 70
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

