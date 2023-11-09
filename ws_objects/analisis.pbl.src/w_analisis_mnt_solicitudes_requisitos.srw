$PBExportHeader$w_analisis_mnt_solicitudes_requisitos.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_mnt_solicitudes_requisitos from window
end type
type pb_4 from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_2 from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_3 from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_buscar1 from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_gastos_fun from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_aux_postumo from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_seguro_vida_jub from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_seguro_vida_act from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_muerte_jubilado from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_cv from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_muerte_activo from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_invalidez from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type rb_vejez from radiobutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_eliminar from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_grabar from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_nuevo from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_salir from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type pb_buscar from picturebutton within w_analisis_mnt_solicitudes_requisitos
end type
type dw_requisitos from datawindow within w_analisis_mnt_solicitudes_requisitos
end type
type gb_buscar from groupbox within w_analisis_mnt_solicitudes_requisitos
end type
end forward

global type w_analisis_mnt_solicitudes_requisitos from window
integer x = 1550
integer y = 120
integer width = 4453
integer height = 2812
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
pb_2 pb_2
pb_3 pb_3
pb_buscar1 pb_buscar1
rb_gastos_fun rb_gastos_fun
rb_aux_postumo rb_aux_postumo
rb_seguro_vida_jub rb_seguro_vida_jub
rb_seguro_vida_act rb_seguro_vida_act
rb_muerte_jubilado rb_muerte_jubilado
rb_cv rb_cv
rb_muerte_activo rb_muerte_activo
rb_invalidez rb_invalidez
rb_vejez rb_vejez
pb_eliminar pb_eliminar
pb_grabar pb_grabar
pb_nuevo pb_nuevo
pb_salir pb_salir
pb_buscar pb_buscar
dw_requisitos dw_requisitos
gb_buscar gb_buscar
end type
global w_analisis_mnt_solicitudes_requisitos w_analisis_mnt_solicitudes_requisitos

type variables
String is_descripcion, is_tipo_tramite
end variables

on w_analisis_mnt_solicitudes_requisitos.create
this.pb_4=create pb_4
this.pb_2=create pb_2
this.pb_3=create pb_3
this.pb_buscar1=create pb_buscar1
this.rb_gastos_fun=create rb_gastos_fun
this.rb_aux_postumo=create rb_aux_postumo
this.rb_seguro_vida_jub=create rb_seguro_vida_jub
this.rb_seguro_vida_act=create rb_seguro_vida_act
this.rb_muerte_jubilado=create rb_muerte_jubilado
this.rb_cv=create rb_cv
this.rb_muerte_activo=create rb_muerte_activo
this.rb_invalidez=create rb_invalidez
this.rb_vejez=create rb_vejez
this.pb_eliminar=create pb_eliminar
this.pb_grabar=create pb_grabar
this.pb_nuevo=create pb_nuevo
this.pb_salir=create pb_salir
this.pb_buscar=create pb_buscar
this.dw_requisitos=create dw_requisitos
this.gb_buscar=create gb_buscar
this.Control[]={this.pb_4,&
this.pb_2,&
this.pb_3,&
this.pb_buscar1,&
this.rb_gastos_fun,&
this.rb_aux_postumo,&
this.rb_seguro_vida_jub,&
this.rb_seguro_vida_act,&
this.rb_muerte_jubilado,&
this.rb_cv,&
this.rb_muerte_activo,&
this.rb_invalidez,&
this.rb_vejez,&
this.pb_eliminar,&
this.pb_grabar,&
this.pb_nuevo,&
this.pb_salir,&
this.pb_buscar,&
this.dw_requisitos,&
this.gb_buscar}
end on

on w_analisis_mnt_solicitudes_requisitos.destroy
destroy(this.pb_4)
destroy(this.pb_2)
destroy(this.pb_3)
destroy(this.pb_buscar1)
destroy(this.rb_gastos_fun)
destroy(this.rb_aux_postumo)
destroy(this.rb_seguro_vida_jub)
destroy(this.rb_seguro_vida_act)
destroy(this.rb_muerte_jubilado)
destroy(this.rb_cv)
destroy(this.rb_muerte_activo)
destroy(this.rb_invalidez)
destroy(this.rb_vejez)
destroy(this.pb_eliminar)
destroy(this.pb_grabar)
destroy(this.pb_nuevo)
destroy(this.pb_salir)
destroy(this.pb_buscar)
destroy(this.dw_requisitos)
destroy(this.gb_buscar)
end on

event open;//this.backcolor = rgb(236,240,245)

//GB_BUSCAR.backCOLOR = RGB (59,140,188)
//rb_vejez.backcolor = rgb(59,140,188)
//RB_Vejez.textcolor = rgb (255,255,255)
//rb_invalidez.backcolor = rgb(59,140,188)
//rb_invalidez.tEXTcolor = rgb(255,255,255)
//rb_cv.backcolor = rgb(59,140,188)
//rb_cv.Textcolor = rgb(255,255,255)
//rb_muerte_jubilado.backcolor = rgb(59,140,188)
//rb_muerte_jubilado.Textcolor = rgb(255,255,255)
//rb_muerte_activo.backcolor = rgb(59,140,188)
//rb_muerte_activo.Textcolor = rgb(255,255,255)
//rb_seguro_vida_jub.backcolor = rgb(59,140,188)
//rb_seguro_vida_jub.Textcolor = rgb(255,255,255)
//rb_seguro_vida_act.backcolor = rgb(59,140,188)
//rb_seguro_vida_act.textcolor = rgb(255,255,255)
//rb_aux_postumo.backcolor = rgb(59,140,188)
//rb_aux_postumo.textcolor = rgb(255,255,255)
//rb_gastos_fun.backcolor = rgb(59,140,188)
//rb_gastos_fun.textcolor = rgb(255,255,255)
//

pb_buscar.backcolor = rgb(59,140,188)
pb_buscar.TEXTcolor =  rgb(255,255,255)
pb_nuevo.backcolor =  rgb(0,164,90)
pb_nuevo.TEXTcolor =  rgb(255,255,255)
//pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.backcolor = rgb(0,191,240)
pb_grabar.TEXTcolor =  rgb(255,255,255)
pb_eliminar.backcolor = rgb(220,74,55)
pb_eliminar.TEXTcolor =  rgb(255,255,255)
pb_salir.backcolor =  rgb(41,57,85)
pb_salir.textcolor = rgb(240,240,240)
//dw_profesiones.backcolor = rgb(236,240,245)
dw_requisitos.retrieve('')
commit;


end event

event resize;//p_frame.width = newwidth - 1
//p_frame.height = newheight - 1
end event

type pb_4 from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3803
integer y = 1692
integer width = 110
integer height = 96
integer taborder = 70
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\salir.gif"
long backcolor = 33554432
end type

type pb_2 from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3803
integer y = 688
integer width = 110
integer height = 96
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\nuevo.GIF"
long backcolor = 33554432
end type

type pb_3 from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3803
integer y = 824
integer width = 110
integer height = 96
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\guardar.png"
long backcolor = 33554432
end type

type pb_buscar1 from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 2555
integer y = 188
integer width = 110
integer height = 100
integer taborder = 40
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string picturename = "C:\PPEM\Sistemas\Analisis\Resources\iconos\buscar.png"
vtextalign vtextalign = vcenter!
end type

type rb_gastos_fun from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 1632
integer y = 332
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Gastos Fun."
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '09'
End If
end event

type rb_aux_postumo from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 1632
integer y = 216
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Aux. Póstumo"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '08'
End If
end event

type rb_seguro_vida_jub from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 978
integer y = 332
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "S. V. Jubilados"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '06'
End If
end event

type rb_seguro_vida_act from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 1632
integer y = 100
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "S. V. Activos"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '07'
End If
end event

type rb_muerte_jubilado from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 978
integer y = 100
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Muerte Jubilado"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '04'
End If
end event

type rb_cv from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 320
integer y = 332
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "C.  V."
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '03'
End If
end event

type rb_muerte_activo from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 978
integer y = 216
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Muerte Activo"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '05'
End If
end event

type rb_invalidez from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 320
integer y = 216
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Invalidez"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '02'
End If
end event

type rb_vejez from radiobutton within w_analisis_mnt_solicitudes_requisitos
integer x = 320
integer y = 100
integer width = 549
integer height = 80
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 25314066
long backcolor = 553648127
string text = "Vejez"
end type

event clicked;If This.checked = True Then
	is_tipo_tramite = '01'
End If
end event

type pb_eliminar from picturebutton within w_analisis_mnt_solicitudes_requisitos
boolean visible = false
integer x = 3922
integer y = 940
integer width = 457
integer height = 100
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

event clicked;dw_requisitos.DeleteRow(0)

dw_requisitos.SetFocus()
end event

type pb_grabar from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3922
integer y = 824
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

event clicked;IF dw_requisitos.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
ELSE	
	ROLLBACK using SQLCA;
END IF
end event

type pb_nuevo from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3927
integer y = 688
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

ll_row = dw_requisitos.InsertRow(0)
dw_requisitos.ScrollToRow(ll_row)
dw_requisitos.object.tipo_tramite[ll_row] = is_tipo_tramite
dw_requisitos.object.status[ll_row] = '1'
dw_requisitos.SetFocus()
end event

type pb_salir from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 3922
integer y = 1692
integer width = 457
integer height = 100
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Close(w_analisis_mnt_solicitudes_requisitos)
end event

type pb_buscar from picturebutton within w_analisis_mnt_solicitudes_requisitos
integer x = 2651
integer y = 188
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -9
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

dw_requisitos.SetFocus()
ll_rows = dw_requisitos.retrieve(is_tipo_tramite)
commit;

end event

type dw_requisitos from datawindow within w_analisis_mnt_solicitudes_requisitos
integer x = 37
integer y = 540
integer width = 3735
integer height = 1356
integer taborder = 10
string title = "none"
string dataobject = "d_analisis_mnt_requisitos_solicitudes"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;This.SetTransObject(SQLCA)
end event

type gb_buscar from groupbox within w_analisis_mnt_solicitudes_requisitos
integer x = 32
integer y = 8
integer width = 2478
integer height = 488
integer taborder = 30
integer textsize = -9
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
long textcolor = 134217857
long backcolor = 33553142
boolean enabled = false
boolean righttoleft = true
end type

