$PBExportHeader$w_analisis_mnt_etapas.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_etapas from window
end type
type pb_4 from picturebutton within w_analisis_mnt_etapas
end type
type pb_3 from picturebutton within w_analisis_mnt_etapas
end type
type pb_2 from picturebutton within w_analisis_mnt_etapas
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_etapas
end type
type pb_eliminar from picturebutton within w_analisis_mnt_etapas
end type
type pb_grabar from picturebutton within w_analisis_mnt_etapas
end type
type pb_nuevo from picturebutton within w_analisis_mnt_etapas
end type
type pb_salir from picturebutton within w_analisis_mnt_etapas
end type
type pb_buscar from picturebutton within w_analisis_mnt_etapas
end type
type sle_buscar from singlelineedit within w_analisis_mnt_etapas
end type
type dw_etapas from datawindow within w_analisis_mnt_etapas
end type
end forward

global type w_analisis_mnt_etapas from window
integer x = 1550
integer y = 120
integer width = 3771
integer height = 2244
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 32895212
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = centeranimation!
pb_4 pb_4
pb_3 pb_3
pb_2 pb_2
pb_buscar1 pb_buscar1
pb_eliminar pb_eliminar
pb_grabar pb_grabar
pb_nuevo pb_nuevo
pb_salir pb_salir
pb_buscar pb_buscar
sle_buscar sle_buscar
dw_etapas dw_etapas
end type
global w_analisis_mnt_etapas w_analisis_mnt_etapas

type variables
String is_descripcion
end variables

on w_analisis_mnt_etapas.create
this.pb_4=create pb_4
this.pb_3=create pb_3
this.pb_2=create pb_2
this.pb_buscar1=create pb_buscar1
this.pb_eliminar=create pb_eliminar
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.pb_buscar=create pb_buscar
this.sle_buscar=create sle_buscar
this.dw_etapas=create dw_etapas
this.Control[]={this.pb_4,&
this.pb_3,&
this.pb_2,&
this.pb_buscar1,&
this.pb_eliminar,&
this.pb_grabar,&
this.pb_nuevo,&
this.pb_salir,&
this.pb_buscar,&
this.sle_buscar,&
this.dw_etapas}
end on

on w_analisis_mnt_etapas.destroy
destroy(this.pb_4)
destroy(this.pb_3)
destroy(this.pb_2)
destroy(this.pb_buscar1)
destroy(this.pb_eliminar)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
destroy(this.pb_buscar)
destroy(this.sle_buscar)
destroy(this.dw_etapas)
end on

event open;//this.backcolor = rgb(236,240,245)

pb_buscar.backcolor = rgb(59,140,188)
//pb_buscar1.backcolor = rgb(1,1,1)
pb_buscar.TEXTcolor =  rgb(255,255,255)

pb_nuevo.backcolor =  rgb(0,164,90)
pb_nuevo.TEXTcolor =  rgb(255,255,255)
//pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.TEXTcolor =  rgb(255,255,255)
pb_eliminar.backcolor = rgb(220,74,55)
pb_eliminar.TEXTcolor =  rgb(255,255,255)

//pb_salir.backcolor =  rgb(59,141,188)
pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)

//dw_profesiones.backcolor = rgb(236,240,245)

dw_etapas.retrieve('')
commit;
end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type pb_4 from picturebutton within w_analisis_mnt_etapas
integer x = 2798
integer y = 1224
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

type pb_3 from picturebutton within w_analisis_mnt_etapas
integer x = 2798
integer y = 400
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

type pb_2 from picturebutton within w_analisis_mnt_etapas
integer x = 2798
integer y = 284
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

type pb_buscar1 from picturebutton within w_analisis_mnt_etapas
integer x = 1193
integer y = 76
integer width = 110
integer height = 96
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Z:\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
end type

type pb_eliminar from picturebutton within w_analisis_mnt_etapas
boolean visible = false
integer x = 2903
integer y = 516
integer width = 457
integer height = 96
integer taborder = 60
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
boolean enabled = false
string text = "Eliminar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

type pb_grabar from picturebutton within w_analisis_mnt_etapas
integer x = 2903
integer y = 400
integer width = 457
integer height = 96
integer taborder = 50
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Grabar"
boolean originalsize = true
vtextalign vtextalign = vcenter!
long backcolor = 16777215
end type

event clicked;IF dw_etapas.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_nuevo from picturebutton within w_analisis_mnt_etapas
integer x = 2903
integer y = 284
integer width = 457
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Nuevo"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_row

ll_row = dw_etapas.InsertRow(0)
dw_etapas.ScrollToRow(ll_row)
dw_etapas.SetFocus()
end event

type pb_salir from picturebutton within w_analisis_mnt_etapas
integer x = 2903
integer y = 1224
integer width = 457
integer height = 96
integer taborder = 30
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Close(w_analisis_mnt_etapas)
end event

type pb_buscar from picturebutton within w_analisis_mnt_etapas
integer x = 1294
integer y = 76
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Buscar"
vtextalign vtextalign = vcenter!
end type

event clicked;Long ll_rows

dw_etapas.SetFocus()
ll_rows = dw_etapas.retrieve(is_descripcion)
commit;

end event

type sle_buscar from singlelineedit within w_analisis_mnt_etapas
integer x = 32
integer y = 80
integer width = 1120
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 33553142
borderstyle borderstyle = stylelowered!
end type

event modified;is_descripcion = '%' + This.text + '%'

If isnull (is_descripcion) Then
	is_descripcion = ''
End If
end event

type dw_etapas from datawindow within w_analisis_mnt_etapas
integer x = 14
integer y = 220
integer width = 2642
integer height = 1484
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_etapas"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

