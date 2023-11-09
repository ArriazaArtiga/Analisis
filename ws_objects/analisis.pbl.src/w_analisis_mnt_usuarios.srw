$PBExportHeader$w_analisis_mnt_usuarios.srw
forward
global type w_analisis_mnt_usuarios from window
end type
type pb_3 from picturebutton within w_analisis_mnt_usuarios
end type
type pb_grabar from picturebutton within w_analisis_mnt_usuarios
end type
type pb_4 from picturebutton within w_analisis_mnt_usuarios
end type
type pb_salir from picturebutton within w_analisis_mnt_usuarios
end type
type dw_1 from datawindow within w_analisis_mnt_usuarios
end type
end forward

global type w_analisis_mnt_usuarios from window
integer x = 1550
integer y = 120
integer width = 4215
integer height = 2232
boolean titlebar = true
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
pb_3 pb_3
pb_grabar pb_grabar
pb_4 pb_4
pb_salir pb_salir
dw_1 dw_1
end type
global w_analisis_mnt_usuarios w_analisis_mnt_usuarios

event open;//if upper(gs_userid) = 'MHERNANDEZ' or upper(gs_userid) = 'BBARRIOS'  or upper(gs_userid) = 'MLEMEN' or upper(gs_userid) = 'JGOMEZ' then
	dw_1.settransobject(sqlca)
	dw_1.retrieve()
	commit;
//else
	//Messagebox("Atencion", "Solo usuario administrador puede accesar a esta opción", Information!)
	//pb_salir.triggerevent(Clicked!)
//end if
end event

on w_analisis_mnt_usuarios.create
this.pb_3=create pb_3
this.pb_grabar=create pb_grabar
this.pb_4=create pb_4
this.pb_salir=create pb_salir
this.dw_1=create dw_1
this.Control[]={this.pb_3,&
this.pb_grabar,&
this.pb_4,&
this.pb_salir,&
this.dw_1}
end on

on w_analisis_mnt_usuarios.destroy
destroy(this.pb_3)
destroy(this.pb_grabar)
destroy(this.pb_4)
destroy(this.pb_salir)
destroy(this.dw_1)
end on

type pb_3 from picturebutton within w_analisis_mnt_usuarios
integer x = 3538
integer y = 256
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

event clicked;Long ll_rows, ll_rows_detalle
String ls_descripcion


IF dw_1.Update() = 1 THEN	
	COMMIT using SQLCA;	
	MessageBox("Grabar","El registro se grabó con éxito")
END IF
end event

type pb_grabar from picturebutton within w_analisis_mnt_usuarios
integer x = 3648
integer y = 260
integer width = 457
integer height = 96
integer taborder = 20
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

event clicked;Long ll_rows, ll_rows_detalle
String ls_descripcion


IF dw_1.Update() = 1 THEN	
	COMMIT using SQLCA;	
			
	select a.Unidad
	into 	:gi_unidad
	from 	dbo.Usuarios a
	where a.Usuario = :gs_userid
	and 	 a.Clave = :gs_password
	using SQLCA;
	
	MessageBox("Grabar","El registro se grabó con éxito")
	commit;
END IF
end event

type pb_4 from picturebutton within w_analisis_mnt_usuarios
integer x = 3538
integer y = 376
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

event clicked;Close(w_analisis_mnt_usuarios)
end event

type pb_salir from picturebutton within w_analisis_mnt_usuarios
integer x = 3648
integer y = 376
integer width = 457
integer height = 96
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = roman!
string facename = "Times New Roman"
string text = "Salir"
boolean originalsize = true
vtextalign vtextalign = vcenter!
end type

event clicked;Close(w_analisis_mnt_usuarios)
end event

type dw_1 from datawindow within w_analisis_mnt_usuarios
integer x = 114
integer y = 52
integer width = 3365
integer height = 828
integer taborder = 10
string title = "none"
string dataobject = "d_usuarios"
boolean hscrollbar = true
boolean vscrollbar = true
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

