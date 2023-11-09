$PBExportHeader$w_analisis_mnt_documentos_expediente.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_documentos_expediente from window
end type
type dw_1 from datawindow within w_analisis_mnt_documentos_expediente
end type
type pb_modifricar from picturebutton within w_analisis_mnt_documentos_expediente
end type
type pb_nuevo from picturebutton within w_analisis_mnt_documentos_expediente
end type
type pb_salir from picturebutton within w_analisis_mnt_documentos_expediente
end type
end forward

global type w_analisis_mnt_documentos_expediente from window
integer x = 1289
integer y = 120
integer width = 5664
integer height = 1352
boolean titlebar = true
string title = ".:. PPEM SIG - Módulo Análisis - Mantenimiento Documentos Expediente .:."
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = centeranimation!
dw_1 dw_1
pb_modifricar pb_modifricar
pb_nuevo pb_nuevo
pb_salir pb_salir
end type
global w_analisis_mnt_documentos_expediente w_analisis_mnt_documentos_expediente

type variables
st_analisis parametros

end variables

on w_analisis_mnt_documentos_expediente.create
this.dw_1=create dw_1
this.pb_modifricar=create pb_modifricar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.Control[]={this.dw_1,&
this.pb_modifricar,&
this.pb_nuevo,&
this.pb_salir}
end on

on w_analisis_mnt_documentos_expediente.destroy
destroy(this.dw_1)
destroy(this.pb_modifricar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
end on

event open;/*Long ll_rows

parametros  = Message.PowerObjectParm
dw_1.settransobject( SQLCA)
dw_1.SetFocus()

dw_1.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
//messagebox('analista',ist_parametros.sl_solicitud)

commit;

*/



end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type dw_1 from datawindow within w_analisis_mnt_documentos_expediente
integer x = 27
integer y = 16
integer width = 5097
integer height = 1200
integer taborder = 50
string title = "none"
string dataobject = "dwg_menu_expedientes03"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;
parametros  = Message.PowerObjectParm

this.settransobject( SQLCA)
this.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
end event

event itemchanged;
parametros  = Message.PowerObjectParm

this.settransobject( SQLCA)
this.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
end event

event itemfocuschanged;
parametros  = Message.PowerObjectParm

this.settransobject( SQLCA)
this.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
end event

type pb_modifricar from picturebutton within w_analisis_mnt_documentos_expediente
integer x = 5134
integer y = 124
integer width = 457
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Modificar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 32554752
end type

event clicked;long id
if dw_1.rowcount( ) >0 then
	id = dw_1.getitemnumber( dw_1.getrow(),2)
	//messagebox("Info",""+string(id))
	parametros.doc=string(id)
	parametros.dt = dw_1
	OpenWithParm(w_analisis_mnt_docexp_m,parametros)
end if
dw_1.SetTransObject(SQLCA)
dw_1.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
end event

type pb_nuevo from picturebutton within w_analisis_mnt_documentos_expediente
integer x = 5134
integer y = 4
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

event clicked;parametros.doc = "..."
parametros.dt = dw_1
//messagebox("",string(ist_parametros.sl_solicitud)+"-"+string(ist_parametros.ss_dpi)+"-"+"-"+string(ist_parametros.doc))
OpenWithParm(w_analisis_mnt_docexp_m,parametros)
dw_1.SetTransObject(SQLCA)
dw_1.retrieve(parametros.sl_solicitud,parametros.ss_dpi)
end event

type pb_salir from picturebutton within w_analisis_mnt_documentos_expediente
integer x = 5138
integer y = 228
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

event clicked;Close(w_analisis_mnt_documentos_expediente)
end event

