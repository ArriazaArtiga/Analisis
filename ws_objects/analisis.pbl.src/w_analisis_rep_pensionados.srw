$PBExportHeader$w_analisis_rep_pensionados.srw
$PBExportComments$Mantenimiento Departamentos
forward
global type w_analisis_rep_pensionados from window
end type
type st_anio from statictext within w_analisis_rep_pensionados
end type
type ddlb_mes from dropdownlistbox within w_analisis_rep_pensionados
end type
type st_mes from statictext within w_analisis_rep_pensionados
end type
type rb_susp_mte from radiobutton within w_analisis_rep_pensionados
end type
type dw_listaprinters from datawindow within w_analisis_rep_pensionados
end type
type dw_1 from datawindow within w_analisis_rep_pensionados
end type
type pb_exportar from picturebutton within w_analisis_rep_pensionados
end type
type dw_depto_pdf from datawindow within w_analisis_rep_pensionados
end type
type st_depto from statictext within w_analisis_rep_pensionados
end type
type dw_deptos from datawindow within w_analisis_rep_pensionados
end type
type rb_1 from radiobutton within w_analisis_rep_pensionados
end type
type rb_detalle from radiobutton within w_analisis_rep_pensionados
end type
type pb_nuevo from picturebutton within w_analisis_rep_pensionados
end type
type pb_grabar from picturebutton within w_analisis_rep_pensionados
end type
type pb_2 from picturebutton within w_analisis_rep_pensionados
end type
type pb_3 from picturebutton within w_analisis_rep_pensionados
end type
type dw_report from datawindow within w_analisis_rep_pensionados
end type
type gb_acciones from groupbox within w_analisis_rep_pensionados
end type
type gb_1 from groupbox within w_analisis_rep_pensionados
end type
type em_anio from editmask within w_analisis_rep_pensionados
end type
end forward

global type w_analisis_rep_pensionados from window
integer x = 1289
integer y = 120
integer width = 4891
integer height = 2712
boolean titlebar = true
string title = ".:. PPEM SIG - Módulo Análisis - Reporte solicitudes por trámite en etapa 120 .:."
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
st_anio st_anio
ddlb_mes ddlb_mes
st_mes st_mes
rb_susp_mte rb_susp_mte
dw_listaprinters dw_listaprinters
dw_1 dw_1
pb_exportar pb_exportar
dw_depto_pdf dw_depto_pdf
st_depto st_depto
dw_deptos dw_deptos
rb_1 rb_1
rb_detalle rb_detalle
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
dw_report dw_report
gb_acciones gb_acciones
gb_1 gb_1
em_anio em_anio
end type
global w_analisis_rep_pensionados w_analisis_rep_pensionados

type variables
u_report_structure  iuo_Parm
Integer  ii_CurrentZoom = 75
Constant Integer iZOOMINCREMENT = 5

Integer ii_depto, ii_muni, ii_mes, ii_anio
DataWindowChild idwch_muni

string ls_impresora
end variables

on w_analisis_rep_pensionados.create
this.st_anio=create st_anio
this.ddlb_mes=create ddlb_mes
this.st_mes=create st_mes
this.rb_susp_mte=create rb_susp_mte
this.dw_listaprinters=create dw_listaprinters
this.dw_1=create dw_1
this.pb_exportar=create pb_exportar
this.dw_depto_pdf=create dw_depto_pdf
this.st_depto=create st_depto
this.dw_deptos=create dw_deptos
this.rb_1=create rb_1
this.rb_detalle=create rb_detalle
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.dw_report=create dw_report
this.gb_acciones=create gb_acciones
this.gb_1=create gb_1
this.em_anio=create em_anio
this.Control[]={this.st_anio,&
this.ddlb_mes,&
this.st_mes,&
this.rb_susp_mte,&
this.dw_listaprinters,&
this.dw_1,&
this.pb_exportar,&
this.dw_depto_pdf,&
this.st_depto,&
this.dw_deptos,&
this.rb_1,&
this.rb_detalle,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.dw_report,&
this.gb_acciones,&
this.gb_1,&
this.em_anio}
end on

on w_analisis_rep_pensionados.destroy
destroy(this.st_anio)
destroy(this.ddlb_mes)
destroy(this.st_mes)
destroy(this.rb_susp_mte)
destroy(this.dw_listaprinters)
destroy(this.dw_1)
destroy(this.pb_exportar)
destroy(this.dw_depto_pdf)
destroy(this.st_depto)
destroy(this.dw_deptos)
destroy(this.rb_1)
destroy(this.rb_detalle)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.dw_report)
destroy(this.gb_acciones)
destroy(this.gb_1)
destroy(this.em_anio)
end on

event open;Long ll_row, ll_rows
ll_rows = dw_deptos.InsertRow(0)

ddlb_mes.visible = False
em_anio.visible = False
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
ll_rows = dw_deptos.InsertRow(0)
dw_deptos.ScrollToRow(ll_rows)
dw_deptos.SetFocus()
end event

event resize;//dw_report.width = newwidth - 174
//dw_report.height = newheight - 784
end event

type st_anio from statictext within w_analisis_rep_pensionados
boolean visible = false
integer x = 1499
integer y = 236
integer width = 155
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Año:"
boolean focusrectangle = false
end type

type ddlb_mes from dropdownlistbox within w_analisis_rep_pensionados
integer x = 1006
integer y = 236
integer width = 480
integer height = 400
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
boolean sorted = false
string item[] = {"Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre"}
borderstyle borderstyle = stylelowered!
end type

event selectionchanged;String ls_mes
ls_mes = this.text
ii_mes = this.FindItem(ls_mes,0)

If isnull(ii_mes) = true Or ii_mes < 1 Then
	MessageBox('Error','Debe Ingresar Mes.',Exclamation!)
	this.setfocus()
Else
	em_anio.SetFocus()
End If
end event

type st_mes from statictext within w_analisis_rep_pensionados
boolean visible = false
integer x = 873
integer y = 236
integer width = 155
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Mes:"
boolean focusrectangle = false
end type

type rb_susp_mte from radiobutton within w_analisis_rep_pensionados
integer x = 114
integer y = 220
integer width = 718
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Suspendido por Muerte"
end type

event clicked;If This.checked = True Then
	st_depto.visible = False
	dw_deptos.visible = False
	pb_exportar.visible = False
	st_mes.visible = True
	ddlb_mes.visible = True
	st_anio.visible = True
	em_anio.visible = True
	dw_report.DataObject = "d_analisis_rep_pensionados_susp_mte"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	//dw_report.Retrieve()
	//commit;
End If
end event

type dw_listaprinters from datawindow within w_analisis_rep_pensionados
boolean visible = false
integer x = 1330
integer y = 388
integer width = 2715
integer height = 712
integer taborder = 60
string title = "none"
string dataobject = "d_analisis_listaprinters_pensionados"
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event doubleclicked;ls_impresora = dw_listaprinters.getitemstring(row, "nombre")
dw_listaprinters.hide()


int ifilas, ifilaspensionados
string ls_nombre
dw_1.settransobject(sqlca)
dw_1.retrieve(ii_depto)
commit;
ifilas = 1
do while ifilas <= dw_1.rowcount()
	ifilaspensionados =dw_depto_pdf.retrieve(dw_1.getitemnumber(ifilas, "depto"), dw_1.getitemnumber(ifilas, "muni"),&
	dw_1.getitemnumber(ifilas, "correlativo"))
	 if ifilaspensionados > 0 then 
		long      ll_job
		integer  li_rc
		ls_nombre = string(dw_1.getitemnumber(ifilas, "depto")) + string(dw_1.getitemnumber(ifilas, "muni"))+&
					string(dw_1.getitemstring(ifilas, "nombre")) +".pdf" 
					//messagebox("impresora seleccionada", ls_impresora)
		printsetprinter(ls_impresora)
		ll_job  =     PrintOpen(ls_nombre, true)
		li_rc    =     PrintDatawindow(ll_job, Dw_depto_pdf)
		PrintClose(ll_job)
	end if
		ifilas = ifilas  + 1
loop


end event

type dw_1 from datawindow within w_analisis_rep_pensionados
boolean visible = false
integer x = 3456
integer y = 104
integer width = 343
integer height = 148
integer taborder = 60
string title = "none"
string dataobject = "d_analisis_corporacion_pensionados"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;dw_1.settransobject(sqlca)

end event

type pb_exportar from picturebutton within w_analisis_rep_pensionados
boolean visible = false
integer x = 4366
integer y = 384
integer width = 402
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Exportar PDF"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16840702
end type

event clicked;integer li_pdf
//dw_depto_pdf.retrieve(ii_depto)
//commit;

//OpenWithParm(w_print_options, dw_depto_pdf)

//If Message.DoubleParm = -1 Then Return
//dw_depto_pdf.Print(True)

//li_pdf    =   dw_depto_pdf.SaveAs("", PDF!, true)
//messagebox('pdf',li_pdf)
//dw_depto_pdf.print()
dw_listaprinters.hide()
int ifilap,i
dw_listaprinters.settransobject(sqlca)
dw_listaprinters.retrieve()
commit;
ifilap = dw_listaprinters.rowcount()
for i = 1 to ifilap
 dw_listaprinters.deleterow(1)
next
dw_listaprinters.update()
commit;

string ls_prntrs, ls_left
int iband, ll_place
ls_prntrs  = PrintGetPrinters ( )
//Messagebox("Printer", ls_prntrs)
IBAND = 1
DO WHILE  IBAND = 1
       ll_place=  pos (ls_prntrs, "~t" )     
	  ls_left = Left (ls_prntrs, ll_place - 1)      
		//  Messagebox("valor a trasladar", ls_left)  
		  Ifilap = Dw_Listaprinters.Insertrow(0)
		ifilap   =  dw_listaprinters.insertrow(0)
		 dw_listaprinters.setitem(ifilap, 'nombre',  ls_left)   
		 dw_listaprinters.setitem(ifilap,'correlativo', ifilap)     
	     ll_place   =     pos (ls_prntrs, "~n" )   
 	  if ll_place > 0 THEN
   	       ls_prntrs = mid (ls_prntrs, ll_place+1)  
  			// MESSAGEBOX("ls prntrs despue", ls_prntrs)
   			//MESSAGEBOX("largo de string", len(ls_prntrs))
  ELSE 
  		 IBAND = 0
  end if  
LOOP
dw_listaprinters.Update()
commit;

dw_listaprinters.show()

//////////////////////////////

end event

type dw_depto_pdf from datawindow within w_analisis_rep_pensionados
boolean visible = false
integer x = 2962
integer y = 140
integer width = 407
integer height = 156
integer taborder = 40
string title = "none"
string dataobject = "d_analisis_rep_pensionados_depto_pdf"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(SQLCA)
end event

type st_depto from statictext within w_analisis_rep_pensionados
boolean visible = false
integer x = 873
integer y = 164
integer width = 416
integer height = 64
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Departamento:"
boolean focusrectangle = false
end type

type dw_deptos from datawindow within w_analisis_rep_pensionados
boolean visible = false
integer x = 1266
integer y = 152
integer width = 869
integer height = 92
integer taborder = 40
string title = "none"
string dataobject = "dddw_deptos"
boolean border = false
boolean livescroll = true
end type

event constructor;This.SetTransObject(SQLCA)
end event

event itemchanged;Long ll_rows

This.AcceptText()

ii_depto = This.object.depto[row]
dw_report.SetFocus()
ll_rows = dw_report.retrieve(ii_depto)

commit;
end event

type rb_1 from radiobutton within w_analisis_rep_pensionados
integer x = 114
integer y = 152
integer width = 699
integer height = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 25314066
long backcolor = 553648127
string text = "Detalle x Departamento"
end type

event clicked;If This.checked = True Then
	st_depto.visible = True
	dw_deptos.visible = True
	pb_exportar.visible = True
	st_mes.visible = False
	ddlb_mes.visible = False
	st_anio.visible = False
	em_anio.visible = False
	dw_report.DataObject = "d_analisis_rep_pensionados_depto"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
End If


end event

type rb_detalle from radiobutton within w_analisis_rep_pensionados
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
	st_depto.visible = False
	dw_deptos.visible = False
	pb_exportar.visible = False
	st_mes.visible = False
	ddlb_mes.visible = False
	st_anio.visible = False
	em_anio.visible = False
	dw_report.DataObject = "d_analisis_rep_pensionados"
	dw_report.SetTransObject(sqlca)
	dw_report.Modify("DataWindow.Print.Preview=Yes")
	dw_report.Retrieve()
	commit;
End If
end event

type pb_nuevo from picturebutton within w_analisis_rep_pensionados
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

type pb_grabar from picturebutton within w_analisis_rep_pensionados
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

event clicked;Close(w_analisis_rep_pensionados)
end event

type pb_2 from picturebutton within w_analisis_rep_pensionados
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

type pb_3 from picturebutton within w_analisis_rep_pensionados
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

event clicked;Close(w_analisis_rep_pensionados)
end event

type dw_report from datawindow within w_analisis_rep_pensionados
integer x = 32
integer y = 368
integer width = 4178
integer height = 2196
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_rep_pensionados"
boolean hscrollbar = true
boolean vscrollbar = true
boolean resizable = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type gb_acciones from groupbox within w_analisis_rep_pensionados
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

type gb_1 from groupbox within w_analisis_rep_pensionados
integer x = 37
integer width = 809
integer height = 356
integer taborder = 20
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

type em_anio from editmask within w_analisis_rep_pensionados
integer x = 1627
integer y = 236
integer width = 279
integer height = 92
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 8388608
alignment alignment = right!
borderstyle borderstyle = stylelowered!
string mask = "###,###"
end type

event modified;Long ll_rows

ii_anio = integer(This.text)

dw_report.SetFocus()
ll_rows = dw_report.retrieve(ii_mes,ii_anio)

commit;
end event

