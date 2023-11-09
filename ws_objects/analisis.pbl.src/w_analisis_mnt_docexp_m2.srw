$PBExportHeader$w_analisis_mnt_docexp_m2.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_docexp_m2 from window
end type
type cb_3 from commandbutton within w_analisis_mnt_docexp_m2
end type
type dw_1 from datawindow within w_analisis_mnt_docexp_m2
end type
type cb_2 from commandbutton within w_analisis_mnt_docexp_m2
end type
type cb_1 from commandbutton within w_analisis_mnt_docexp_m2
end type
end forward

global type w_analisis_mnt_docexp_m2 from window
integer width = 2240
integer height = 1980
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 134217732
string icon = "AppIcon!"
boolean center = true
cb_3 cb_3
dw_1 dw_1
cb_2 cb_2
cb_1 cb_1
end type
global w_analisis_mnt_docexp_m2 w_analisis_mnt_docexp_m2

type variables
DataWindowChild dwc_tipodoc
integer ii_unidad
end variables

on w_analisis_mnt_docexp_m2.create
this.cb_3=create cb_3
this.dw_1=create dw_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.Control[]={this.cb_3,&
this.dw_1,&
this.cb_2,&
this.cb_1}
end on

on w_analisis_mnt_docexp_m2.destroy
destroy(this.cb_3)
destroy(this.dw_1)
destroy(this.cb_2)
destroy(this.cb_1)
end on

event open;st_analisis parametros
string id
long i_rows, xx
parametros = message.powerobjectparm
//messagebox("",id)
dw_1.settransobject(sqlca)
if parametros.doc = "..."  then 
	dw_1.insertrow(1)
	i_rows = dw_1.getrow( )
	//messagebox("",string(parametros.sl_solicitud)+"-"+string(parametros.ss_dpi)+"-"+"-"+string(parametros.doc))
	dw_1.object.no_solicitud[1]= parametros.sl_solicitud
	dw_1.object.dpi[1] = parametros.ss_dpi
	
else 
	xx = long(parametros.doc)
	dw_1.retrieve(xx)
	i_rows = dw_1.getrow( )
	//dw_1.object.pensionados_modifica[i_rows] = gs_userid+" | " +string(Today())+" | "+string(Now())
end if 
end event

type cb_3 from commandbutton within w_analisis_mnt_docexp_m2
integer x = 1728
integer y = 268
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Eliminar"
end type

event clicked;long id
if dw_1.rowcount( ) =0 then
	return
else 
		dw_1.deleterow( dw_1.getrow( ) )
		dw_1.update( )
end if
If SQLCA.SQLCODE = 0 Then
   Commit Using SQLCA; // Se realizan los cambios
Else
   RollBack Using SQLCA; // Ocurrio un error, no se guardan los cambios
End If

close(parent)
end event

type dw_1 from datawindow within w_analisis_mnt_docexp_m2
integer x = 91
integer y = 32
integer width = 1541
integer height = 1796
integer taborder = 10
string title = "none"
string dataobject = "dwff_docexp"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;integer dato
this.settransobject(sqlca)
this.scrolltorow( this.insertrow( 0 ) )
dato = this.getchild( "tipo_documento",dwc_tipodoc)
dwc_tipodoc.insertrow( 0)
dwc_tipodoc.settransobject( SQLCA)
end event

event itemchanged;int unidad

//messagebox("dwo",String(dwo.name))
if dwo.name = "unidad" then
	unidad = integer(this.gettext( ))
	//messagebox("2",String(unidad))

	if unidad <> ii_unidad then
		ii_unidad = unidad
			
		dwc_tipodoc.retrieve(ii_unidad)
	//	dwc_tipodoc.settransobject(SQLCA)
	
	end if
end if
end event

type cb_2 from commandbutton within w_analisis_mnt_docexp_m2
integer x = 1733
integer y = 400
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Salir"
end type

event clicked;close(parent)
end event

type cb_1 from commandbutton within w_analisis_mnt_docexp_m2
integer x = 1728
integer y = 148
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Guardar"
end type

event clicked;if dw_1.update() = 1 then
	//close(parent)
else
	messagebox("Error","El registro no se a guardado en el sistema")
end if
end event

