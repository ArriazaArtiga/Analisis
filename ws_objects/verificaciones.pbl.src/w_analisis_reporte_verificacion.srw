$PBExportHeader$w_analisis_reporte_verificacion.srw
forward
global type w_analisis_reporte_verificacion from window
end type
type pb_2 from picturebutton within w_analisis_reporte_verificacion
end type
type pb_1 from picturebutton within w_analisis_reporte_verificacion
end type
type pb_generar from picturebutton within w_analisis_reporte_verificacion
end type
type pb_salir from picturebutton within w_analisis_reporte_verificacion
end type
type pb_imprimir from picturebutton within w_analisis_reporte_verificacion
end type
type codigo from singlelineedit within w_analisis_reporte_verificacion
end type
type dw_1 from datawindow within w_analisis_reporte_verificacion
end type
end forward

global type w_analisis_reporte_verificacion from window
integer width = 3867
integer height = 2224
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_2 pb_2
pb_1 pb_1
pb_generar pb_generar
pb_salir pb_salir
pb_imprimir pb_imprimir
codigo codigo
dw_1 dw_1
end type
global w_analisis_reporte_verificacion w_analisis_reporte_verificacion

on w_analisis_reporte_verificacion.create
this.pb_2=create pb_2
this.pb_1=create pb_1
this.pb_generar=create pb_generar
this.pb_salir=create pb_salir
this.pb_imprimir=create pb_imprimir
this.codigo=create codigo
this.dw_1=create dw_1
this.Control[]={this.pb_2,&
this.pb_1,&
this.pb_generar,&
this.pb_salir,&
this.pb_imprimir,&
this.codigo,&
this.dw_1}
end on

on w_analisis_reporte_verificacion.destroy
destroy(this.pb_2)
destroy(this.pb_1)
destroy(this.pb_generar)
destroy(this.pb_salir)
destroy(this.pb_imprimir)
destroy(this.codigo)
destroy(this.dw_1)
end on

type pb_2 from picturebutton within w_analisis_reporte_verificacion
boolean visible = false
integer x = 1504
integer y = 172
integer width = 402
integer height = 100
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "PDF"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 255
end type

event clicked;dw_1.SetTransObject(sqlca)
dw_1.retrieve(codigo.text)
dw_1.SaveAs("", Pdf!, true)

end event

type pb_1 from picturebutton within w_analisis_reporte_verificacion
boolean visible = false
integer x = 1065
integer y = 172
integer width = 402
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Excel"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 32768
end type

event clicked;dw_1.SetTransObject(sqlca)
dw_1.retrieve(codigo.text)
dw_1.SaveAs("", Excel!, true)

end event

type pb_generar from picturebutton within w_analisis_reporte_verificacion
integer x = 1047
integer y = 60
integer width = 402
integer height = 100
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Generar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long textcolor = 16777215
long backcolor = 29397330
end type

event clicked;integer i_r, resultadoA,resultadoB, mesesTotales,mesesRestantes, añosTotales
if f_existe_verificacion(codigo.text)= 1 then
	dw_1.settransobject(SQLCA)
	dw_1.retrieve(trim(codigo.text))
elseif f_existe_verificacion(codigo.text)= 2 then
	
	messagebox('Error','Ya existe un codigo de verificacion como este, se encuentra inactivo')
else
	
	messagebox('Información','No existe la verificación buscada')
end if 
end event

type pb_salir from picturebutton within w_analisis_reporte_verificacion
integer x = 1874
integer y = 60
integer width = 402
integer height = 100
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
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;Close(parent)
end event

type pb_imprimir from picturebutton within w_analisis_reporte_verificacion
integer x = 1463
integer y = 60
integer width = 402
integer height = 100
integer taborder = 20
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

event clicked;OpenWithParm(w_print_options, dw_1)

If Message.DoubleParm = -1 Then Return
dw_1.Print(True)
end event

type codigo from singlelineedit within w_analisis_reporte_verificacion
event darenter pbm_keydown
integer x = 69
integer y = 36
integer width = 919
integer height = 128
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
borderstyle borderstyle = stylelowered!
string placeholder = "Ingrese la verificación a buscar"
end type

type dw_1 from datawindow within w_analisis_reporte_verificacion
integer x = 59
integer y = 280
integer width = 3744
integer height = 1760
integer taborder = 10
string title = "none"
string dataobject = "dw_verificacion_cmp"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

