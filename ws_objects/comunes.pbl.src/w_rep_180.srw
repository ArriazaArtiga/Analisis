$PBExportHeader$w_rep_180.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_rep_180 from window
end type
type st_1 from statictext within w_rep_180
end type
type em_fecha from editmask within w_rep_180
end type
type cb_1 from commandbutton within w_rep_180
end type
type st_2 from statictext within w_rep_180
end type
type em_listado from editmask within w_rep_180
end type
type pb_nuevo from picturebutton within w_rep_180
end type
type pb_grabar from picturebutton within w_rep_180
end type
type pb_2 from picturebutton within w_rep_180
end type
type pb_3 from picturebutton within w_rep_180
end type
type dw_report from datawindow within w_rep_180
end type
type gb_acciones from groupbox within w_rep_180
end type
end forward

global type w_rep_180 from window
integer x = 1289
integer y = 120
integer width = 6930
integer height = 4080
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
st_1 st_1
em_fecha em_fecha
cb_1 cb_1
st_2 st_2
em_listado em_listado
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
end type
global w_rep_180 w_rep_180

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni, ii_listado
DataWindowChild idwch_muni
end variables

on w_rep_180.create
this.st_1=create st_1
this.em_fecha=create em_fecha
this.cb_1=create cb_1
this.st_2=create st_2
this.em_listado=create em_listado
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.Control[]={this.st_1,&
this.em_fecha,&
this.cb_1,&
this.st_2,&
this.em_listado,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones}
end on

on w_rep_180.destroy
destroy(this.st_1)
destroy(this.em_fecha)
destroy(this.cb_1)
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

type st_1 from statictext within w_rep_180
integer x = 667
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
string text = "Fecha:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_fecha from editmask within w_rep_180
integer x = 923
integer y = 20
integer width = 421
integer height = 100
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
alignment alignment = center!
borderstyle borderstyle = stylelowered!
maskdatatype maskdatatype = datetimemask!
string mask = "dd/mm/yyyy"
end type

event modified;DateTime ldt_fecha

ldt_fecha = datetime(this.text)

dw_report.retrieve(ii_listado,ldt_fecha)
commit;
end event

type cb_1 from commandbutton within w_rep_180
integer x = 6395
integer y = 384
integer width = 485
integer height = 112
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "EXCEL"
end type

event clicked;dw_report.SetTransObject(sqlca)
dw_report.retrieve(integer(em_listado.text))
dw_report.SaveAs("", Excel!, true)

end event

type st_2 from statictext within w_rep_180
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
string text = "Listado:"
alignment alignment = right!
boolean focusrectangle = false
end type

type em_listado from editmask within w_rep_180
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

ii_listado = integer(this.text)


end event

type pb_nuevo from picturebutton within w_rep_180
integer x = 6487
integer y = 124
integer width = 402
integer height = 80
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

type pb_grabar from picturebutton within w_rep_180
integer x = 6487
integer y = 244
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

event clicked;Close(w_analisis_rep_solic_x_tramite_etapa_180)
end event

type pb_2 from picturebutton within w_rep_180
integer x = 6382
integer y = 108
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

type pb_3 from picturebutton within w_rep_180
integer x = 6382
integer y = 244
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

event clicked;Close(w_analisis_rep_solic_x_tramite_etapa_180)
end event

type dw_report from datawindow within w_rep_180
integer x = 55
integer y = 88
integer width = 6331
integer height = 3692
integer taborder = 20
string title = "none"
string dataobject = "d_rep_180"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_rep_180
integer x = 6363
integer y = 20
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

