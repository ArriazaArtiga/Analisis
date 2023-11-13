$PBExportHeader$w_analisis_mnt_tiempo_servicio.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_tiempo_servicio from window
end type
type pb_4 from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_3 from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_2 from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_eliminar from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_grabar from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_nuevo from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type pb_salir from picturebutton within w_analisis_mnt_tiempo_servicio
end type
type dw_tiempo_servicio from datawindow within w_analisis_mnt_tiempo_servicio
end type
end forward

global type w_analisis_mnt_tiempo_servicio from window
integer x = 1289
integer y = 120
integer width = 4018
integer height = 876
boolean titlebar = true
string title = ".:. PPEM SIG - Módulo Análisis - Mantenimiento Tiempo Servicio .:."
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
windowanimationstyle openanimation = centeranimation!
pb_4 pb_4
pb_3 pb_3
pb_2 pb_2
pb_eliminar pb_eliminar
pb_grabar pb_grabar
pb_nuevo pb_nuevo
pb_salir pb_salir
dw_tiempo_servicio dw_tiempo_servicio
end type
global w_analisis_mnt_tiempo_servicio w_analisis_mnt_tiempo_servicio

type variables
st_analisis ist_parametros

String is_descripcion
end variables

on w_analisis_mnt_tiempo_servicio.create
this.pb_4=create pb_4
this.pb_3=create pb_3
this.pb_2=create pb_2
this.pb_eliminar=create pb_eliminar
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.dw_tiempo_servicio=create dw_tiempo_servicio
this.Control[]={this.pb_4,&
this.pb_3,&
this.pb_2,&
this.pb_eliminar,&
this.pb_grabar,&
this.pb_nuevo,&
this.pb_salir,&
this.dw_tiempo_servicio}
end on

on w_analisis_mnt_tiempo_servicio.destroy
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.pb_2)
destroy(this.pb_eliminar)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
destroy(this.dw_tiempo_servicio)
end on

event open;Long ll_rows

ist_parametros  = Message.PowerObjectParm

dw_tiempo_servicio.SetFocus()

ll_rows = dw_tiempo_servicio.retrieve(ist_parametros.sl_solicitud,ist_parametros.ss_dpi)

If ll_rows > 0 then
	pb_nuevo.visible=false
	pb_2.visible=false
else
	pb_nuevo.visible=true
	pb_2.visible=true
End if

commit;





end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type pb_4 from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3401
integer y = 392
integer width = 110
integer height = 96
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_mnt_tiempo_servicio)
end event

type pb_3 from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3401
integer y = 152
integer width = 110
integer height = 96
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

event clicked;IF dw_tiempo_servicio.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_2 from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3401
integer y = 32
integer width = 110
integer height = 96
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\nuevo.GIF"
long backcolor = 33554432
end type

event clicked;Long ll_row

ll_row = dw_tiempo_servicio.InsertRow(0)
dw_tiempo_servicio.ScrollToRow(ll_row)
dw_tiempo_servicio.SetFocus()

dw_tiempo_servicio.object.no_solicitud[ll_row] = ist_parametros.sl_solicitud
dw_tiempo_servicio.object.dpi[ll_row] 			= ist_parametros.ss_dpi 

this.visible=false
pb_2.visible=false
end event

type pb_eliminar from picturebutton within w_analisis_mnt_tiempo_servicio
boolean visible = false
integer x = 3511
integer y = 272
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Eliminar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 20400860
end type

type pb_grabar from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3511
integer y = 152
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
long textcolor = 16777215
long backcolor = 32554752
end type

event clicked;IF dw_tiempo_servicio.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_nuevo from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3511
integer y = 32
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
long textcolor = 16777215
long backcolor = 22717440
end type

event clicked;Long ll_row

ll_row = dw_tiempo_servicio.InsertRow(0)
dw_tiempo_servicio.ScrollToRow(ll_row)
dw_tiempo_servicio.SetFocus()

dw_tiempo_servicio.object.no_solicitud[ll_row] = ist_parametros.sl_solicitud
dw_tiempo_servicio.object.dpi[ll_row] 			= ist_parametros.ss_dpi 

this.visible=false
pb_2.visible=false
end event

type pb_salir from picturebutton within w_analisis_mnt_tiempo_servicio
integer x = 3511
integer y = 392
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

event clicked;Close(w_analisis_mnt_tiempo_servicio)
end event

type dw_tiempo_servicio from datawindow within w_analisis_mnt_tiempo_servicio
integer x = 37
integer y = 32
integer width = 3346
integer height = 544
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_tiempo_servicio"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

