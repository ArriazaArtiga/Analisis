$PBExportHeader$w_analisis_mnt_solicitudes.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_solicitudes from window
end type
type st_declara_benef from statictext within w_analisis_mnt_solicitudes
end type
type st_nombre from statictext within w_analisis_mnt_solicitudes
end type
type dw_requisitos from datawindow within w_analisis_mnt_solicitudes
end type
type pb_grabar_detalle from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_grabar_detalle_icon from picturebutton within w_analisis_mnt_solicitudes
end type
type dw_detalle_requisitos from datawindow within w_analisis_mnt_solicitudes
end type
type st_1 from statictext within w_analisis_mnt_solicitudes
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_4 from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_3 from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_2 from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_eliminar from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_grabar from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_nuevo from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_salir from picturebutton within w_analisis_mnt_solicitudes
end type
type pb_buscar from picturebutton within w_analisis_mnt_solicitudes
end type
type sle_buscar from singlelineedit within w_analisis_mnt_solicitudes
end type
type dw_solicitudes from datawindow within w_analisis_mnt_solicitudes
end type
type gb_contribuyente from groupbox within w_analisis_mnt_solicitudes
end type
type gb_1 from groupbox within w_analisis_mnt_solicitudes
end type
end forward

global type w_analisis_mnt_solicitudes from window
integer x = 1550
integer y = 120
integer width = 4681
integer height = 2748
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = centeranimation!
st_declara_benef st_declara_benef
st_nombre st_nombre
dw_requisitos dw_requisitos
pb_grabar_detalle pb_grabar_detalle
pb_grabar_detalle_icon pb_grabar_detalle_icon
dw_detalle_requisitos dw_detalle_requisitos
st_1 st_1
pb_buscar1 pb_buscar1
pb_4 pb_4
pb_3 pb_3
pb_2 pb_2
pb_eliminar pb_eliminar
pb_grabar pb_grabar
pb_nuevo pb_nuevo
pb_salir pb_salir
pb_buscar pb_buscar
sle_buscar sle_buscar
dw_solicitudes dw_solicitudes
gb_contribuyente gb_contribuyente
gb_1 gb_1
end type
global w_analisis_mnt_solicitudes w_analisis_mnt_solicitudes

type variables
String is_dpi, is_filtro, is_referencia
Integer ii_rows_requisitos, ii_etapa, ii_existe_resol
Boolean ib_hay_detalle, ib_nuevo
Long il_solicitud

DataWindowChild idwch_municipio

int li_fila
end variables

on w_analisis_mnt_solicitudes.create
this.st_declara_benef=create st_declara_benef
this.st_nombre=create st_nombre
this.dw_requisitos=create dw_requisitos
this.pb_grabar_detalle=create pb_grabar_detalle
this.pb_grabar_detalle_icon=create pb_grabar_detalle_icon
this.dw_detalle_requisitos=create dw_detalle_requisitos
this.st_1=create st_1
this.pb_buscar1=create pb_buscar1
this.pb_4=create pb_4
this.pb_3=create pb_3
this.pb_2=create pb_2
this.pb_eliminar=create pb_eliminar
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.dw_solicitudes=create dw_solicitudes
this.gb_contribuyente=create gb_contribuyente
this.gb_1=create gb_1
this.Control[]={this.st_declara_benef,&
this.st_nombre,&
this.dw_requisitos,&
this.pb_grabar_detalle,&
this.pb_grabar_detalle_icon,&
this.dw_detalle_requisitos,&
this.st_1,&
this.pb_buscar1,&
this.pb_4,&
this.pb_3,&
this.pb_2,&
this.pb_eliminar,&
this.pb_grabar,&
this.pb_nuevo,&
this.pb_salir,&
this.pb_buscar,&
this.sle_buscar,&
this.dw_solicitudes,&
this.gb_contribuyente,&
this.gb_1}
end on

on w_analisis_mnt_solicitudes.destroy
destroy(this.st_declara_benef)
destroy(this.st_nombre)
destroy(this.dw_requisitos)
destroy(this.pb_grabar_detalle)
destroy(this.pb_grabar_detalle_icon)
destroy(this.dw_detalle_requisitos)
destroy(this.st_1)
destroy(this.pb_buscar1)
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.pb_2)
destroy(this.pb_eliminar)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.dw_solicitudes)
destroy(this.gb_contribuyente)
destroy(this.gb_1)
end on

event open;//this.backcolor = rgb(236,240,245)
pb_buscar.backcolor = rgb(59,140,188)
pb_buscar.TEXTcolor =  rgb(255,255,255)
//pb_buscar1.backcolor = rgb(1,1,1)

pb_nuevo.backcolor =  rgb(0,164,90)
pb_nuevo.TEXTcolor =  rgb(255,255,255)

pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.TEXTcolor =  rgb(255,255,255)

pb_grabar_detalle.backcolor = rgb(253,219,0)
pb_grabar_detalle.TEXTcolor =  rgb(0,0,0)

pb_eliminar.backcolor = rgb(220,74,55)
pb_eliminar.TEXTcolor =  rgb(255,255,255)
pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)
dw_solicitudes.retrieve('')







end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type st_declara_benef from statictext within w_analisis_mnt_solicitudes
integer x = 1856
integer y = 192
integer width = 1056
integer height = 84
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type st_nombre from statictext within w_analisis_mnt_solicitudes
integer x = 55
integer y = 192
integer width = 1755
integer height = 84
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
boolean border = true
borderstyle borderstyle = stylelowered!
boolean focusrectangle = false
end type

type dw_requisitos from datawindow within w_analisis_mnt_solicitudes
boolean visible = false
integer x = 4037
integer y = 1920
integer width = 585
integer height = 224
integer taborder = 90
string title = "none"
string dataobject = "d_analisis_con_requisitos_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

type pb_grabar_detalle from picturebutton within w_analisis_mnt_solicitudes
boolean visible = false
integer x = 4165
integer y = 1780
integer width = 457
integer height = 96
integer taborder = 80
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Grabar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

event clicked;IF dw_detalle_requisitos.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro detalle se grabó con éxito")
	pb_grabar_detalle_icon.enabled = False
	pb_grabar_detalle.enabled = false
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_grabar_detalle_icon from picturebutton within w_analisis_mnt_solicitudes
boolean visible = false
integer x = 4055
integer y = 1780
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

event clicked;IF dw_detalle_requisitos.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro detalle se grabó con éxito")
	pb_grabar_detalle_icon.enabled = False
	pb_grabar_detalle.enabled = false
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type dw_detalle_requisitos from datawindow within w_analisis_mnt_solicitudes
integer x = 9
integer y = 1888
integer width = 4018
integer height = 704
integer taborder = 50
string title = "none"
string dataobject = "d_analisis_mnt_det_requisitos_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

type st_1 from statictext within w_analisis_mnt_solicitudes
integer x = 55
integer y = 4
integer width = 558
integer height = 124
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Ingrese DPI para buscar SOLICITUD:"
alignment alignment = right!
boolean focusrectangle = false
end type

type pb_buscar1 from picturebutton within w_analisis_mnt_solicitudes
integer x = 1938
integer y = 32
integer width = 110
integer height = 96
integer taborder = 20
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

event clicked;Long ll_rows, ll_rows_detalle
String ls_nombres, ls_apellidos, ls_casada
Integer li_depto, li_muni, li_correlativo
DateTime ldt_fecha_ingreso

dw_solicitudes.SetFocus()

//f_db_get_solicitud()

ll_rows                =      dw_solicitudes.retrieve(is_dpi)
if ll_rows = 0 then 
	Messagebox ("Atencion", "No se encontró ninguna solicitud para el DPI ingresado", Information! )
	
else
	ll_rows_detalle     =      dw_detalle_requisitos.retrieve(is_dpi)
	
	is_filtro = "depto = " + string(dw_solicitudes.object.departamento[1])
	idwch_municipio.setfilter(is_filtro )
  	idwch_municipio.filter()
		  
	ls_nombres = f_db_get_datos_contribuyente(is_dpi, ls_apellidos, ls_casada, li_depto, li_muni, li_correlativo, ldt_fecha_ingreso)
	
	if isnull(ls_casada) then
		ls_casada = ''
	end if
	
	ls_nombres = ls_nombres +' ' +ls_apellidos + ' ' +ls_casada
	w_analisis_mnt_solicitudes.st_nombre.text = ls_nombres
	
	if not isnull(ll_rows_detalle) then
			ib_hay_detalle = true
	else
		ib_hay_detalle = false
	end if
	sle_buscar.text = ''
end if




end event

type pb_4 from picturebutton within w_analisis_mnt_solicitudes
integer x = 4055
integer y = 1052
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_mnt_solicitudes)
end event

type pb_3 from picturebutton within w_analisis_mnt_solicitudes
integer x = 4055
integer y = 376
integer width = 110
integer height = 96
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

event clicked;Long ll_solicitud
Integer li_row,li_row_det

IF dw_solicitudes.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
	
	ll_solicitud = dw_solicitudes.object.no_solicitud[1]
//	messagebox('ll_solicitud',ll_solicitud)
//	messagebox('dw_detalle_requisitos.rowcount()',dw_detalle_requisitos.rowcount())
	for li_row=1 to dw_detalle_requisitos.rowcount()
		dw_detalle_requisitos.object.no_solicitud[li_row] = ll_solicitud
	next
	
	IF dw_detalle_requisitos.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro detalle se grabó con éxito")
//		pb_grabar_detalle_icon.enabled = False
//		pb_grabar_detalle.enabled = false
	ELSE	
		ROLLBACK using SQLCA;
	END IF
//	pb_grabar_detalle_icon.enabled = true
//	pb_grabar_detalle.enabled = true
//	dw_detalle_requisitos.enabled = true
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_2 from picturebutton within w_analisis_mnt_solicitudes
integer x = 4055
integer y = 256
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\nuevo.GIF"
long backcolor = 33554432
end type

event clicked;Long ll_row

ll_row = dw_solicitudes.InsertRow(0)
dw_solicitudes.ScrollToRow(ll_row)
dw_solicitudes.SetFocus()
end event

type pb_eliminar from picturebutton within w_analisis_mnt_solicitudes
boolean visible = false
integer x = 4165
integer y = 508
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Eliminar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

type pb_grabar from picturebutton within w_analisis_mnt_solicitudes
integer x = 4165
integer y = 376
integer width = 457
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Grabar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

event clicked;Long ll_solicitud, ll_row_se
Integer li_row,li_row_det, contador
contador =  dw_detalle_requisitos.rowcount()

if f_resolucion_existe(trim(dw_solicitudes.object.solicitudes_referencia_solicitud[contador]))<>1 then

IF dw_solicitudes.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
	
	il_solicitud = f_db_get_max_no_solicitud()
//	messagebox('ll_solicitud',ll_solicitud)
//	messagebox('dw_detalle_requisitos.rowcount()',dw_detalle_requisitos.rowcount())
	for li_row=1 to dw_detalle_requisitos.rowcount()
		if isnull(dw_detalle_requisitos.object.no_solicitud[li_row]) then
			dw_detalle_requisitos.object.no_solicitud[li_row] = il_solicitud
		end if
	next
	/* se inserta en solicitud etapa si fuera solicitud nueva */
	if ib_nuevo = true then
		f_db_ins_solicitud_etapa(il_solicitud,is_dpi,10,f_db_get_fecha(),gs_userid,f_db_get_fecha())
	end if
		
	
	
	
	IF dw_detalle_requisitos.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro detalle se grabó con éxito")
//		pb_grabar_detalle_icon.enabled = False
//		pb_grabar_detalle.enabled = false
	ELSE	
		ROLLBACK using SQLCA;
	END IF
//	pb_grabar_detalle_icon.enabled = true
//	pb_grabar_detalle.enabled = true
//	dw_detalle_requisitos.enabled = true
ELSE	
	ROLLBACK using SQLCA;
END IF

else 
	MessageBox("Grabar","La resolución ya existe en el sistema")
	ROLLBACK using SQLCA;
end if 

end event

type pb_nuevo from picturebutton within w_analisis_mnt_solicitudes
integer x = 4165
integer y = 256
integer width = 457
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Nuevo"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;If Sle_buscar.text = '' then 
	Messagebox("Atencion", "Debe ingresar un DPI para poder crear un nuevo registro de Solicitud", information!)
		Dw_Solicitudes.reset()
	Dw_Detalle_requisitos.reset ()

Else
	// Poner la funcion que verifica si existe el DPI ingresado a crear solicitud
	// validando si status es ACTIVO o Contribuyente ACTIVO
	// SI ESTA BIEN PERMITIS CREAR SOLICITUD
	
	
	Long     ll_row,ll_solicitud
	Integer li_existe
	
	li_existe = f_db_get_contribuyente(is_dpi)
	If li_existe = 1 then
		Dw_Solicitudes.reset()
		Dw_Detalle_requisitos.reset ()
		ll_row = dw_solicitudes.InsertRow(0)
		dw_solicitudes.ScrollToRow(ll_row)
		dw_solicitudes.SetFocus()
		is_dpi = trim(Sle_Buscar.Text)
		dw_solicitudes.object.dpi[ll_row] = is_dpi
		dw_solicitudes.object.fecha[ll_row] = f_db_get_fecha()
		ll_solicitud = f_db_genera_no_solicitud(1)
		dw_solicitudes.object.no_solicitud[ll_row] = ll_solicitud
		ib_hay_detalle = true	
		ib_nuevo = true
	Else
		Messagebox('Error', 'El DPI no existe en la base de datos de Contribuyentes',Exclamation!)
	End If
End If

end event

type pb_salir from picturebutton within w_analisis_mnt_solicitudes
integer x = 4165
integer y = 1052
integer width = 457
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
end type

event clicked;Close(w_analisis_mnt_solicitudes)
end event

type pb_buscar from picturebutton within w_analisis_mnt_solicitudes
integer x = 2053
integer y = 32
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Buscar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows, ll_rows_detalle
String ls_nombres, ls_apellidos, ls_casada, ls_declara_benef
Integer li_depto, li_muni, li_correlativo
DateTime ldt_fecha_ingreso

dw_solicitudes.SetFocus()

//f_db_get_solicitud()

ll_rows                =      dw_solicitudes.retrieve(is_dpi)
commit;
if ll_rows = 0 then 
		ll_rows                =      dw_solicitudes.retrieve(buscardpi(is_dpi))
	
elseif	ll_rows = 0 then 
		Messagebox ("Atencion", "No se encontró ninguna solicitud para el DPI ingresado", Information! )
else
	ll_rows_detalle     =      dw_detalle_requisitos.retrieve(is_dpi)
	commit;
	if ll_rows_detalle = 0 then 
		ib_nuevo = True
	Else
		ib_nuevo = False
	end if
	il_solicitud = dw_solicitudes.object.no_solicitud[1]
	if not isnull(dw_solicitudes.object.departamento[1]) then
		is_filtro = "depto = " + string(dw_solicitudes.object.departamento[1])
		idwch_municipio.setfilter(is_filtro )
		idwch_municipio.filter()
	end if
	dw_solicitudes.accepttext()
	
	ls_nombres = f_db_get_datos_contribuyente(is_dpi, ls_apellidos, ls_casada, li_depto, li_muni, li_correlativo, ldt_fecha_ingreso)
	
	if isnull(ls_casada) then
		ls_casada = ''
	end if
	
	ls_nombres = ls_nombres +' ' +ls_apellidos + ' ' +ls_casada
	w_analisis_mnt_solicitudes.st_nombre.text = ls_nombres
	
	ls_declara_benef = f_db_get_no_declara_benef(is_dpi)
	w_analisis_mnt_solicitudes.st_declara_benef.text = ls_declara_benef
	
	if not isnull(ll_rows_detalle) then
			ib_hay_detalle = true
	else
		ib_hay_detalle = false
	end if
	//sle_buscar.text = ''
end if




end event

type sle_buscar from singlelineedit within w_analisis_mnt_solicitudes
integer x = 695
integer y = 32
integer width = 1120
integer height = 92
integer taborder = 10
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 33553142
borderstyle borderstyle = stylelowered!
end type

event modified;is_dpi = Trim(This.text)

If isnull (is_dpi) Then
	is_dpi = ''
End If
end event

type dw_solicitudes from datawindow within w_analisis_mnt_solicitudes
event setear_tramite ( )
integer x = 9
integer y = 388
integer width = 4018
integer height = 1488
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event setear_tramite();int li_row_requisitos, li_rows_detalle, li_i

// pregunta primero si hay detalle y es etapa 10
// si es asi borra e inserta, si no no hace nada 
if ib_hay_detalle = true and ii_etapa = 10 then
	li_rows_detalle = dw_detalle_requisitos.retrieve(is_dpi)
	For li_i=1 to li_rows_detalle
		dw_detalle_requisitos.DeleteRow(0)
	Next
	this.accepttext()
//  ii_rows_requisitos = f_db_get_solicitud_requisitos(this.object.tipo_tramite[row])
	li_row_requisitos = dw_requisitos.retrieve(this.object.tipo_tramite[li_fila])
	ii_rows_requisitos = li_row_requisitos
	int li_row, li_row_det
	for li_row=1 to li_row_requisitos
		li_row_det = dw_detalle_requisitos.InsertRow(0)
		dw_detalle_requisitos.ScrollToRow(li_row_det)
		dw_detalle_requisitos.SetFocus()	
		dw_detalle_requisitos.object.no_solicitud[li_row_det] = il_solicitud /*this.object.no_solicitud[li_fila]*/
		dw_detalle_requisitos.object.dpi[li_row_det] = this.object.dpi[li_fila]
		dw_detalle_requisitos.object.requisito[li_row_det] = dw_requisitos.object.idrequisito[li_row]
		dw_detalle_requisitos.object.tipo_tramite[li_row_det] = this.object.tipo_tramite[li_fila]
		dw_detalle_requisitos.object.recibido[li_row_det] = '0'
		dw_detalle_requisitos.object.fecha[li_row_det] = f_db_get_fecha()
	next
else
	/*nada*/
end if

		

end event

event constructor;This.SetTransObject(SQLCA)

this.getchild("municipio",idwch_municipio)
idwch_municipio.settransobject(sqlca)
idwch_municipio.retrieve()
end event

event itemchanged;Integer li_row, li_row_det, li_row_requisitos

This.AcceptText()

Choose case dwo.name
	case 'departamento'
		is_filtro = "depto = " + data
		idwch_municipio.setfilter(is_filtro )
  		idwch_municipio.filter()
	
	case 'tipo_tramite'
				li_fila = row
				ii_etapa = this.object.etapa[row]
				il_solicitud = this.object.no_solicitud[row]
				postevent ("setear_tramite")
	
	case 'solicitudes_referencia_solicitud'
				li_fila = row
				is_referencia = this.object.solicitudes_referencia_solicitud[row]
				ii_existe_resol = f_db_get_existe_resolucion(is_referencia)
				if ii_existe_resol > 0 then
					MessageBox ( 'Precuación', 'Resolución ' + is_referencia + ' ya existe.', Exclamation!, OK!, 1 )
					pb_grabar.enabled = false
					pb_3.enabled = false
				else
					pb_grabar.enabled = true
					pb_3.enabled = true
				end if
				//il_solicitud = this.object.no_solicitud[row]
				//postevent ("setear_tramite")

end choose



end event

type gb_contribuyente from groupbox within w_analisis_mnt_solicitudes
integer x = 37
integer y = 128
integer width = 1797
integer height = 180
integer taborder = 30
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Datos Contribuyente"
end type

type gb_1 from groupbox within w_analisis_mnt_solicitudes
integer x = 1838
integer y = 128
integer width = 1093
integer height = 180
integer taborder = 40
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "No. Formulario Declaración Beneficiarios"
end type

