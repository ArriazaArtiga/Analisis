$PBExportHeader$w_analisis_mnt_regreso_etapas.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_regreso_etapas from window
end type
type pb_1 from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_salir from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_nuevo from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_grabar from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_2 from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_3 from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_4 from picturebutton within w_analisis_mnt_regreso_etapas
end type
type st_1 from statictext within w_analisis_mnt_regreso_etapas
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_regreso_etapas
end type
type pb_buscar from picturebutton within w_analisis_mnt_regreso_etapas
end type
type sle_buscar from singlelineedit within w_analisis_mnt_regreso_etapas
end type
type dw_regresar_etapa from datawindow within w_analisis_mnt_regreso_etapas
end type
type pb_5 from picturebutton within w_analisis_mnt_regreso_etapas
end type
end forward

global type w_analisis_mnt_regreso_etapas from window
integer x = 1550
integer y = 120
integer width = 3205
integer height = 2312
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
dw_regresar_etapa dw_regresar_etapa
pb_5 pb_5
end type
global w_analisis_mnt_regreso_etapas w_analisis_mnt_regreso_etapas

type variables
string is_dpi
integer ii_etapa_actual
long il_solicitud
end variables

on w_analisis_mnt_regreso_etapas.create
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
this.dw_regresar_etapa=create dw_regresar_etapa
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
this.dw_regresar_etapa,&
this.pb_5}
end on

on w_analisis_mnt_regreso_etapas.destroy
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
destroy(this.dw_regresar_etapa)
destroy(this.pb_5)
end on

type pb_1 from picturebutton within w_analisis_mnt_regreso_etapas
boolean visible = false
integer x = 2560
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

type pb_salir from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2670
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

event clicked;Close(w_analisis_mnt_regreso_etapas)
end event

type pb_nuevo from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2670
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

ll_row = dw_regresar_etapa.InsertRow(0)
dw_regresar_etapa.ScrollToRow(ll_row)
dw_regresar_etapa.SetFocus()
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "dpi", is_dpi)
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "no_solicitud", il_solicitud)
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "etapa_actual", ii_etapa_actual)
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "fecha", today())
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "usuario", gs_userid)
dw_regresar_etapa.setitem(dw_regresar_etapa.getrow(), "fecha_sys", today())
end event

type pb_grabar from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2670
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

event clicked;boolean lb_grabar
long ll_row

lb_grabar = true
ll_row = dw_regresar_etapa.Getrow()

if isnull(dw_regresar_etapa.object.etapa_actual[ll_row]) then
	messagebox('Error','Debe ingresar datos en ETAPA ACTUAL')
	lb_grabar = false
end if

/*if isnull(dw_regresar_etapa.object.etapa_nueva[ll_row]) then
	messagebox('Error','Debe ingresar datos en ETAPA NUEVA')
	lb_grabar = false
end if

if isnull(dw_regresar_etapa.object.fecha[ll_row]) then
	messagebox('Error','Debe ingresar datos en FECHA')
	lb_grabar = false
end if

if isnull(dw_regresar_etapa.object.justificacion[ll_row]) then
	messagebox('Error','Debe ingresar datos en JUSTIFICACIÓN')
	lb_grabar = false
end if*/

if lb_grabar = true then
	f_db_del_solicitud_etapa(is_dpi,il_solicitud,dw_regresar_etapa.object.etapa_nueva[ll_row])
	f_db_upd_etapa_solicitud(is_dpi,il_solicitud,dw_regresar_etapa.object.etapa_nueva[ll_row])
	
	IF dw_regresar_etapa.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro se grabó con éxito")
		this.visible = false
		pb_3.visible=false
	ELSE	
		ROLLBACK using SQLCA;
	END IF
else
	messagebox('Error','La operación grabar se realizará hasta que ingrese los datos requeridos')
end if
end event

type pb_2 from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2560
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

type pb_3 from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2560
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

type pb_4 from picturebutton within w_analisis_mnt_regreso_etapas
integer x = 2560
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

event clicked;Close(w_analisis_mnt_regreso_etapas)
end event

type st_1 from statictext within w_analisis_mnt_regreso_etapas
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

type pb_buscar1 from picturebutton within w_analisis_mnt_regreso_etapas
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

type pb_buscar from picturebutton within w_analisis_mnt_regreso_etapas
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

event clicked;Long ll_rows
string cui
cui = buscardpi(is_dpi)
ll_rows     =       dw_regresar_etapa.retrieve(cui)
ii_etapa_actual = f_db_get_etapa_actual (cui,il_solicitud)
dw_regresar_etapa.setfocus()
Commit;

end event

type sle_buscar from singlelineedit within w_analisis_mnt_regreso_etapas
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

event modified;
if isnumber(This.text)  then
	is_dpi     =   Trim(This.text)
else
		is_dpi = '' 
end if
end event

type dw_regresar_etapa from datawindow within w_analisis_mnt_regreso_etapas
integer x = 37
integer y = 192
integer width = 2491
integer height = 564
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_regreso_etapas"
boolean hscrollbar = true
boolean vscrollbar = true
boolean border = false
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.settransobject(sqlca)
end event

event itemchanged;if not isnull(this.object.etapa_actual[row]) and not isnull(this.object.etapa_nueva[row]) then
	if this.object.etapa_actual[row] <= this.object.etapa_nueva[row] then
		messagebox('Error','La etapa nueva debe ser menor a la etapa actual')
	end if
end if
end event

type pb_5 from picturebutton within w_analisis_mnt_regreso_etapas
boolean visible = false
integer x = 2670
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

