$PBExportHeader$w_ver_tel_cta_reporte.srw
forward
global type w_ver_tel_cta_reporte from window
end type
type cb_1 from commandbutton within w_ver_tel_cta_reporte
end type
type dw_1 from datawindow within w_ver_tel_cta_reporte
end type
end forward

global type w_ver_tel_cta_reporte from window
integer width = 4389
integer height = 1484
boolean titlebar = true
string title = "Reporte de Cuentas Bancarias verificadas"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
dw_1 dw_1
end type
global w_ver_tel_cta_reporte w_ver_tel_cta_reporte

event open;dw_1.SetTransObject(sqlca)
dw_1.retrieve( )

end event

on w_ver_tel_cta_reporte.create
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_1,&
this.dw_1}
end on

on w_ver_tel_cta_reporte.destroy
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_1 from commandbutton within w_ver_tel_cta_reporte
integer x = 3922
integer y = 40
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Descargar"
end type

event clicked;dw_1.SetTransObject(sqlca)
dw_1.retrieve( )
dw_1.SaveAs("", XLSB!, true)
end event

type dw_1 from datawindow within w_ver_tel_cta_reporte
integer x = 27
integer y = 32
integer width = 3863
integer height = 1312
integer taborder = 10
string title = "Reporte"
string dataobject = "d_ver_tel_cta_grid"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event itemchanged;dw_1.SetTransObject(sqlca)
end event

