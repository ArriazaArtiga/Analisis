$PBExportHeader$w_analisis_rep_solic_x_tramite_etapas_rev.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_solic_x_tramite_etapas_rev from window
end type
type st_fecha2 from statictext within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type st_fecha1 from statictext within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type em_fecha2 from editmask within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type em_fecha1 from editmask within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type rb_1 from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type rb_providencia from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type rb_liquidacion from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type rb_auditoria from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type pb_nuevo from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type pb_grabar from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type pb_2 from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type pb_3 from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type dw_report from datawindow within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type gb_acciones from groupbox within w_analisis_rep_solic_x_tramite_etapas_rev
end type
type gb_doctos from groupbox within w_analisis_rep_solic_x_tramite_etapas_rev
end type
end forward

global type w_analisis_rep_solic_x_tramite_etapas_rev from window
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
st_fecha2 st_fecha2
st_fecha1 st_fecha1
em_fecha2 em_fecha2
em_fecha1 em_fecha1
rb_1 rb_1
rb_providencia rb_providencia
rb_liquidacion rb_liquidacion
rb_auditoria rb_auditoria
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_doctos gb_doctos
end type
global w_analisis_rep_solic_x_tramite_etapas_rev w_analisis_rep_solic_x_tramite_etapas_rev

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni, ii_etapa
DateTime idt_fecha1, idt_fecha2
DataWindowChild idwch_muni
end variables

on w_analisis_rep_solic_x_tramite_etapas_rev.create
this.st_fecha2=create st_fecha2
this.st_fecha1=create st_fecha1
this.em_fecha2=create em_fecha2
this.em_fecha1=create em_fecha1
this.rb_1=create rb_1
this.rb_providencia=create rb_providencia
this.rb_liquidacion=create rb_liquidacion
this.rb_auditoria=create rb_auditoria
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_doctos=create gb_doctos
this.Control[]={this.st_fecha2,&
this.st_fecha1,&
this.em_fecha2,&
this.em_fecha1,&
this.rb_1,&
this.rb_providencia,&
this.rb_liquidacion,&
this.rb_auditoria,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_doctos}
end on

on w_analisis_rep_solic_x_tramite_etapas_rev.destroy
destroy(this.st_fecha2)
destroy(this.st_fecha1)
destroy(this.em_fecha2)
destroy(this.em_fecha1)
destroy(this.rb_1)
destroy(this.rb_providencia)
destroy(this.rb_liquidacion)
destroy(this.rb_auditoria)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_doctos)
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

type st_fecha2 from statictext within w_analisis_rep_solic_x_tramite_etapas_rev
boolean visible = false
integer x = 1888
integer y = 36
integer width = 338
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Fecha Final"
boolean focusrectangle = false
end type

type st_fecha1 from statictext within w_analisis_rep_solic_x_tramite_etapas_rev
boolean visible = false
integer x = 1426
integer y = 36
integer width = 338
integer height = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Fecha Inicio"
boolean focusrectangle = false
end type

type em_fecha2 from editmask within w_analisis_rep_solic_x_tramite_etapas_rev
boolean visible = false
integer x = 1865
integer y = 96
integer width = 443
integer height = 84
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 33553142
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datetimemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

event modified;idt_fecha2 = DateTime(This.Text)

dw_report.Retrieve(ii_etapa, idt_fecha1, idt_fecha2)
dw_report.setfocus()

end event

type em_fecha1 from editmask within w_analisis_rep_solic_x_tramite_etapas_rev
boolean visible = false
integer x = 1403
integer y = 96
integer width = 443
integer height = 84
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 33553142
string text = "none"
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datetimemask!
string mask = "dd/mm/yyyy"
boolean dropdowncalendar = true
end type

event modified;idt_fecha1 = DateTime(This.Text)
em_fecha2.setfocus()


end event

type rb_1 from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 1115
integer y = 92
integer width = 325
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Archivo"
end type

event clicked;If This.checked = True Then
	st_fecha1.visible = True
	st_fecha2.visible = True
	em_fecha1.visible = True
	em_fecha2.visible = True
	
	ii_etapa = 210
	dw_report.DataObject = "d_analisis_rep_solic_x_tramite_archivo"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	em_fecha1.setfocus()
End If
Commit;
end event

type rb_providencia from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 782
integer y = 92
integer width = 325
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Gerencia"
end type

event clicked;If This.checked = True Then
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	
	ii_etapa = 120
	dw_report.DataObject = "d_analisis_rep_solic_x_tramite_etapas_rev"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(ii_etapa)
End If
Commit;
end event

type rb_liquidacion from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 448
integer y = 92
integer width = 325
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Jurídico"
end type

event clicked;If This.checked = True Then
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	
	ii_etapa = 90
	dw_report.DataObject = "d_analisis_rep_solic_x_tramite_etapas_rev"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(ii_etapa)
End If
Commit;
end event

type rb_auditoria from radiobutton within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 114
integer y = 92
integer width = 325
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Auditoría"
boolean checked = true
end type

event clicked;If This.checked = True Then
	st_fecha1.visible = False
	st_fecha2.visible = False
	em_fecha1.visible = False
	em_fecha2.visible = False
	
	ii_etapa = 60
	dw_report.DataObject = "d_analisis_rep_solic_x_tramite_etapas_rev"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve(ii_etapa)
End If
Commit;
end event

type pb_nuevo from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
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

type pb_grabar from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
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

event clicked;Close(w_analisis_rep_solic_x_tramite_etapas_rev)
end event

type pb_2 from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
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

type pb_3 from picturebutton within w_analisis_rep_solic_x_tramite_etapas_rev
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

event clicked;Close(w_analisis_rep_solic_x_tramite_etapas_rev)
end event

type dw_report from datawindow within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 32
integer y = 224
integer width = 4178
integer height = 2364
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_solic_x_tramite_etapas_rev"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_solic_x_tramite_etapas_rev
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

type gb_doctos from groupbox within w_analisis_rep_solic_x_tramite_etapas_rev
integer x = 37
integer y = 8
integer width = 2313
integer height = 188
integer taborder = 70
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Revisión Expedientes"
end type

