$PBExportHeader$w_analisis_rep_gerencial_solcitudes.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_gerencial_solcitudes from window
end type
type rb_detalle from radiobutton within w_analisis_rep_gerencial_solcitudes
end type
type rb_1 from radiobutton within w_analisis_rep_gerencial_solcitudes
end type
type pb_nuevo from picturebutton within w_analisis_rep_gerencial_solcitudes
end type
type pb_grabar from picturebutton within w_analisis_rep_gerencial_solcitudes
end type
type pb_2 from picturebutton within w_analisis_rep_gerencial_solcitudes
end type
type pb_3 from picturebutton within w_analisis_rep_gerencial_solcitudes
end type
type dw_report from datawindow within w_analisis_rep_gerencial_solcitudes
end type
type gb_acciones from groupbox within w_analisis_rep_gerencial_solcitudes
end type
type gb_1 from groupbox within w_analisis_rep_gerencial_solcitudes
end type
end forward

global type w_analisis_rep_gerencial_solcitudes from window
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
rb_detalle rb_detalle
rb_1 rb_1
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_1 gb_1
end type
global w_analisis_rep_gerencial_solcitudes w_analisis_rep_gerencial_solcitudes

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni
DataWindowChild idwch_muni
end variables

on w_analisis_rep_gerencial_solcitudes.create
this.rb_detalle=create rb_detalle
this.rb_1=create rb_1
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_1=create gb_1
this.Control[]={this.rb_detalle,&
this.rb_1,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_1}
end on

on w_analisis_rep_gerencial_solcitudes.destroy
destroy(this.rb_detalle)
destroy(this.rb_1)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_1)
end on

event open;Long ll_row
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	SetPointer(hourglass!)
	//dw_report.retrieve()
	//commit;
	
	
//	"d_analisis_rep_gerencial_soli_resumen"

end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type rb_detalle from radiobutton within w_analisis_rep_gerencial_solcitudes
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
	dw_report.DataObject = "d_analisis_rep_gerencial_solicitudes"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type rb_1 from radiobutton within w_analisis_rep_gerencial_solcitudes
integer x = 119
integer y = 192
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
string text = "Resumen x Tipo Tramite"
end type

event clicked;If This.checked = True Then
	dw_report.DataObject = "d_analisis_rep_gerencial_soli_resumen"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If


end event

type pb_nuevo from picturebutton within w_analisis_rep_gerencial_solcitudes
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

type pb_grabar from picturebutton within w_analisis_rep_gerencial_solcitudes
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

event clicked;Close(w_analisis_rep_gerencial_solcitudes)
end event

type pb_2 from picturebutton within w_analisis_rep_gerencial_solcitudes
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

type pb_3 from picturebutton within w_analisis_rep_gerencial_solcitudes
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

event clicked;Close(w_analisis_rep_gerencial_solcitudes)
end event

type dw_report from datawindow within w_analisis_rep_gerencial_solcitudes
integer x = 41
integer y = 464
integer width = 4178
integer height = 2148
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_gerencial_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_gerencial_solcitudes
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

type gb_1 from groupbox within w_analisis_rep_gerencial_solcitudes
integer x = 37
integer width = 1659
integer height = 356
integer taborder = 10
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

