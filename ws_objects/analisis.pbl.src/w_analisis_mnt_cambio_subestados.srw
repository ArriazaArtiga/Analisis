$PBExportHeader$w_analisis_mnt_cambio_subestados.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_cambio_subestados from window
end type
type pb_1 from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_salir from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_nuevo from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_grabar from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_2 from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_3 from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_4 from picturebutton within w_analisis_mnt_cambio_subestados
end type
type st_1 from statictext within w_analisis_mnt_cambio_subestados
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_cambio_subestados
end type
type pb_buscar from picturebutton within w_analisis_mnt_cambio_subestados
end type
type sle_buscar from singlelineedit within w_analisis_mnt_cambio_subestados
end type
type dw_cambio_subestado from datawindow within w_analisis_mnt_cambio_subestados
end type
type pb_5 from picturebutton within w_analisis_mnt_cambio_subestados
end type
end forward

global type w_analisis_mnt_cambio_subestados from window
integer x = 1550
integer y = 120
integer width = 4096
integer height = 1512
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 33553142
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
pb_salir pb_salir
pb_nuevo pb_nuevo
pb_grabar pb_grabar
pb_2 pb_2
pb_3 pb_3
pb_4 pb_4
st_1 st_1
pb_buscar1 pb_buscar1
pb_buscar pb_buscar
sle_buscar sle_buscar
dw_cambio_subestado dw_cambio_subestado
pb_5 pb_5
end type
global w_analisis_mnt_cambio_subestados w_analisis_mnt_cambio_subestados

type variables
string is_dpi
end variables

on w_analisis_mnt_cambio_subestados.create
this.pb_1=create pb_1
this.pb_salir=create pb_salir
this.pb_nuevo=create pb_nuevo
this.pb_grabar=create pb_grabar
this.pb_2=create pb_2
this.pb_3=create pb_3
this.pb_4=create pb_4
this.st_1=create st_1
this.pb_buscar1=create pb_buscar1
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.dw_cambio_subestado=create dw_cambio_subestado
this.pb_5=create pb_5
this.Control[]={this.pb_1,&
this.pb_salir,&
this.pb_nuevo,&
this.pb_grabar,&
this.pb_2,&
this.pb_3,&
this.pb_4,&
this.st_1,&
this.pb_buscar1,&
this.pb_buscar,&
this.sle_buscar,&
this.dw_cambio_subestado,&
this.pb_5}
end on

on w_analisis_mnt_cambio_subestados.destroy
destroy(this.pb_1)
destroy(this.pb_salir)
destroy(this.pb_nuevo)
destroy(this.pb_grabar)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.pb_4)
destroy(this.st_1)
destroy(this.pb_buscar1)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.dw_cambio_subestado)
destroy(this.pb_5)
end on

type pb_1 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3438
integer y = 432
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\Printer.png"
long backcolor = 33554432
end type

type pb_salir from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3547
integer y = 552
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 22362409
end type

event clicked;Close(w_analisis_mnt_cambio_subestados)
end event

type pb_nuevo from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3547
integer y = 192
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Nuevo"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 22717440
end type

event clicked;Long ll_row
Integer li_estado_ant

ll_row = dw_cambio_subestado.InsertRow(0)
dw_cambio_subestado.ScrollToRow(ll_row)
dw_cambio_subestado.SetFocus()
dw_cambio_subestado.setitem(dw_cambio_subestado.getrow(), "dpi", is_dpi)

// funcion que trae el subestadi anterior
li_estado_ant = f_db_get_subestado_contribuyente(is_dpi)

dw_cambio_subestado.setitem(dw_cambio_subestado.getrow(), "subestado_old", li_estado_ant)



//Long ll_row
//
//ll_row = dw_documentos_expediente.InsertRow(0)
//dw_documentos_expediente.ScrollToRow(ll_row)
//dw_documentos_expediente.SetFocus()
//
//dw_documentos_expediente.object.no_solicitud[ll_row] 	= ist_parametros.sl_solicitud
//dw_documentos_expediente.object.dpi[ll_row] 			= ist_parametros.ss_dpi 
//dw_documentos_expediente.object.idejecutivo[ll_row] 	= id_usuario
//
//
////this.visible=false
////pb_2.visible=false
end event

type pb_grabar from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3547
integer y = 312
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Grabar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 32554752
end type

event clicked;integer 	li_resultado,li_emp, li_sn
datetime	ld_fe
long ll_correla

	dw_cambio_subestado.accepttext() 

	li_sn       =     dw_cambio_subestado.getitemnumber (dw_cambio_subestado.getrow(),    "subestado_new")
	is_dpi     =     dw_cambio_subestado.getitemstring(dw_cambio_subestado.getrow(),"dpi")
	ld_fe       =     dw_cambio_subestado.getitemdatetime(dw_cambio_subestado.getrow(),"fecha")
	ll_correla = f_db_get_max_correla_subestado() + 1
	dw_cambio_subestado.setitem(dw_cambio_subestado.getrow(), "correlativo", ll_correla)
	dw_cambio_subestado.accepttext() 
	
	update contribuyentes
			set   	subestado=:li_sn
	where	    dpi= :is_dpi;
	commit;
	
	IF dw_cambio_subestado.Update() = 1 THEN	
		COMMIT using SQLCA;	
	else 
		Messagebox("Atencion", "Error al  intentar actualizar ficha del Contribuyente", Information!)
		ROLLBACK using SQLCA;
	end if
	
	dw_cambio_subestado.reset() 
	pb_nuevo.enabled = false
	pb_nuevo.visible= false
	pb_2.enabled = false
	pb_2.visible = false

	






//	MessageBox("Grabar","El registro se grabó con éxito")
//ELSE	

//END IF
end event

type pb_2 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3438
integer y = 192
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\nuevo.GIF"
long backcolor = 33554432
end type

event clicked;//Long ll_row
//
//ll_row = dw_documentos_expediente.InsertRow(0)
//dw_documentos_expediente.ScrollToRow(ll_row)
//dw_documentos_expediente.SetFocus()
//
//dw_documentos_expediente.object.no_solicitud[ll_row] 	= ist_parametros.sl_solicitud
//dw_documentos_expediente.object.dpi[ll_row] 			= ist_parametros.ss_dpi 
//dw_documentos_expediente.object.idejecutivo[ll_row] 	= id_usuario
//
//
////this.visible=false
////pb_2.visible=false
end event

type pb_3 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3438
integer y = 312
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

event clicked;//IF dw_documentos_expediente.Update() = 1 THEN	
//	COMMIT using SQLCA;	
//	MessageBox("Grabar","El registro se grabó con éxito")
//ELSE	
//	ROLLBACK using SQLCA;
//END IF
end event

type pb_4 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3438
integer y = 552
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_mnt_cambio_subestados)
end event

type st_1 from statictext within w_analisis_mnt_cambio_subestados
integer x = 69
integer y = 56
integer width = 178
integer height = 72
integer textsize = -9
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 33553142
string text = "DPI:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_buscar1 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 1481
integer y = 36
integer width = 110
integer height = 96
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
long backcolor = 0
end type

event clicked;//Long ll_rows, ll_rows_requisitos
//String ls_descripcion
//Integer li_row
//
//ll_rows = dw_solicitud_contribuyente.retrieve(is_dpi)
//if ll_rows > 0 then
//	ii_etapa_actual = f_db_get_etapa_actual (is_dpi,il_solicitud)
//	ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
//	// sle_etapa_actual.text = string(ii_etapa_actual) + ' ' + ls_descripcion
//
//	If ii_etapa_actual = 10 then
//		dw_detalle_requisitos.visible = true
//		ll_rows_requisitos = dw_detalle_requisitos.retrieve(is_dpi)
//		for li_row=1 to dw_detalle_requisitos.rowcount()
//			if dw_detalle_requisitos.object.recibido[li_row]='0' then
//				dw_detalle_requisitos.object.recibido[li_row] = '1'
//			end if
//		next
//	else 
//		dw_detalle_requisitos.visible = false
//	end if
//
//	dw_cambio_etapa.retrieve(ii_etapa_actual)
//
//	Commit;
//
//	//dw_solicitudes.SetFocus()
//	//
//	////f_db_get_contribuyente()
//	//
//	////f_db_get_solicitud()
//	//
//
//	//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
//	//
//	//if ll_rows_detalle > 0  then
//	//	ib_hay_detalle = true
//	//else
//	//	ib_hay_detalle = false
//	//end if
//else
//	messagebox('Error','no se encuentra una solicitud activa para este DPI')
//End if
//
//
//
end event

type pb_buscar from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 1573
integer y = 36
integer width = 457
integer height = 96
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows, ll_rows_detalle
String ls_descripcion, cui
cui = buscardpi(is_dpi)
ll_rows   =   f_db_get_existe_contribuyente(cui) 
commit;
if  		ll_rows   =   0 then
		PB_NUEVO.ENABLED = FALSE
		pb_nuevo.visible =   FALSE
		pb_2.visible          =   False
		pb_2.enabled = false
		dw_cambio_subestado.reset()
else 
		pb_nuevo.VISIBLE       =    True
		pb_nuevo.ENABLED    =   True
		pb_2.visible                =   True		
		pb_2.enabled = true 
		dw_cambio_subestado.reset()
End If

//Long ll_rows, ll_rows_requisitos
//String ls_descripcion
//Integer li_row
//
//ll_rows     =       dw_cambio_subestado.retrieve(is_dpi)
//if ll_rows > 0 then
//	ii_etapa_actual = f_db_get_etapa_actual (is_dpi,il_solicitud)
//	is_tramite = f_db_get_tramite(is_dpi,il_solicitud)
//	ls_descripcion = f_db_get_desc_etapa(ii_etapa_actual)
//	// sle_etapa_actual.text = string(ii_etapa_actual) + ' ' + ls_descripcion
//
//	If ii_etapa_actual = 10 then
//		dw_cambio_subestado.visible = true
//		ll_rows_requisitos = dw_detalle_requisitos.retrieve(is_dpi)
//		for li_row=1 to dw_detalle_requisitos.rowcount()
//			if dw_detalle_requisitos.object.recibido[li_row]='0' then
//				dw_detalle_requisitos.object.recibido[li_row] = '1'
//			end if
//		next
//	else 
//		dw_detalle_requisitos.visible = false
//	end if
//
//	dw_cambio_etapa.retrieve(ii_etapa_actual)
//
//	Commit;
//
//	//dw_solicitudes.SetFocus()
//	//
//	////f_db_get_contribuyente()
//	//
//	////f_db_get_solicitud()
//	//
//
//	//ll_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
//	//
//	//if ll_rows_detalle > 0  then
//	//	ib_hay_detalle = true
//	//else
//	//	ib_hay_detalle = false
//	//end if
//else
//	messagebox('Error','no se encuentra una solicitud activa para este DPI')
//End if
//
//
//
end event

type sle_buscar from singlelineedit within w_analisis_mnt_cambio_subestados
integer x = 361
integer y = 40
integer width = 942
integer height = 96
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
end type

event modified;Long ll_rows, ll_rows_detalle
String ls_descripcion
if isnumber(This.text)  then
	is_dpi     =   Trim(This.text)
	ll_rows   =   f_db_get_existe_contribuyente(is_dpi) 
	commit;
	if ll_rows = 0 then 
		Messagebox("Atencion", "No Existen datos con el DPI ingresado", Information!)
		PB_NUEVO.ENABLED   =   FALSE
		pb_nuevo.visible       =   FALSE
		pb_2.visible                =   False
		pb_2.enabled            =    False
		dw_cambio_subestado.reset() 
	else 
		Pb_nuevo.VISIBLE       =   True
		Pb_nuevo.ENABLED    =   True
		Pb_2.visible                =   True		
		Pb_2.enabled             =   True 
		dw_cambio_subestado.reset()
	End If	
else
		is_dpi = '' 
end if
end event

type dw_cambio_subestado from datawindow within w_analisis_mnt_cambio_subestados
integer x = 37
integer y = 192
integer width = 3374
integer height = 492
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_subestados_contribuyente"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.settransobject(sqlca)
end event

type pb_5 from picturebutton within w_analisis_mnt_cambio_subestados
integer x = 3547
integer y = 432
integer width = 457
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

event clicked;gs_dpi = is_dpi
//gi_anio = ii_anio
Open ( w_analisis_rep_oficio_conta )
end event

