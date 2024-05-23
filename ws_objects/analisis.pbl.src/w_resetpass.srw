$PBExportHeader$w_resetpass.srw
$PBExportComments$Generated MDI About Box
forward
global type w_resetpass from window
end type
type st_2 from statictext within w_resetpass
end type
type sle_3 from singlelineedit within w_resetpass
end type
type st_1 from statictext within w_resetpass
end type
type sle_2 from singlelineedit within w_resetpass
end type
type pb_cancelar from picturebutton within w_resetpass
end type
type pb_aceptar from picturebutton within w_resetpass
end type
type sle_clave from singlelineedit within w_resetpass
end type
type sle_usuario from singlelineedit within w_resetpass
end type
type st_clave from statictext within w_resetpass
end type
type st_usuario from statictext within w_resetpass
end type
type p_1 from picture within w_resetpass
end type
type st_empresa from statictext within w_resetpass
end type
type ln_1 from line within w_resetpass
end type
end forward

global type w_resetpass from window
integer width = 3077
integer height = 1540
boolean titlebar = true
windowtype windowtype = response!
long backcolor = 32895212
string icon = "AppIcon!"
boolean contexthelp = true
boolean center = true
windowanimationstyle openanimation = toproll!
windowanimationstyle closeanimation = fadeanimation!
st_2 st_2
sle_3 sle_3
st_1 st_1
sle_2 sle_2
pb_cancelar pb_cancelar
pb_aceptar pb_aceptar
sle_clave sle_clave
sle_usuario sle_usuario
st_clave st_clave
st_usuario st_usuario
p_1 p_1
st_empresa st_empresa
ln_1 ln_1
end type
global w_resetpass w_resetpass

on w_resetpass.create
this.st_2=create st_2
this.sle_3=create sle_3
this.st_1=create st_1
this.sle_2=create sle_2
this.pb_cancelar=create pb_cancelar
this.pb_aceptar=create pb_aceptar
this.sle_clave=create sle_clave
this.sle_usuario=create sle_usuario
this.st_clave=create st_clave
this.st_usuario=create st_usuario
this.p_1=create p_1
this.st_empresa=create st_empresa
this.ln_1=create ln_1
this.Control[]={this.st_2,&
this.sle_3,&
this.st_1,&
this.sle_2,&
this.pb_cancelar,&
this.pb_aceptar,&
this.sle_clave,&
this.sle_usuario,&
this.st_clave,&
this.st_usuario,&
this.p_1,&
this.st_empresa,&
this.ln_1}
end on

on w_resetpass.destroy
destroy(this.st_2)
destroy(this.sle_3)
destroy(this.st_1)
destroy(this.sle_2)
destroy(this.pb_cancelar)
destroy(this.pb_aceptar)
destroy(this.sle_clave)
destroy(this.sle_usuario)
destroy(this.st_clave)
destroy(this.st_usuario)
destroy(this.p_1)
destroy(this.st_empresa)
destroy(this.ln_1)
end on

type st_2 from statictext within w_resetpass
integer x = 1961
integer y = 940
integer width = 617
integer height = 88
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Confirma Contraseña:"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type sle_3 from singlelineedit within w_resetpass
event keydown pbm_keydown
integer x = 1961
integer y = 1032
integer width = 699
integer height = 100
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
boolean password = true
borderstyle borderstyle = stylelowered!
end type

event keydown;IF this.text = sle_2.text then
	sle_2.backcolor=RGB(0, 255, 0)
	this.backcolor=RGB(0, 255, 0)
ELSEIF isnull(this.text) or this.text = '' then
	sle_2.backcolor=RGB(255, 255, 255)
	this.backcolor=RGB(255, 255, 255)
Else
	sle_2.backcolor=RGB(255, 0, 0)
	this.backcolor=RGB(255, 0, 0)
End IF
end event

type st_1 from statictext within w_resetpass
integer x = 1961
integer y = 744
integer width = 553
integer height = 88
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Nueva Contraseña:"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type sle_2 from singlelineedit within w_resetpass
integer x = 1961
integer y = 832
integer width = 699
integer height = 100
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type pb_cancelar from picturebutton within w_resetpass
integer x = 2139
integer y = 1352
integer width = 517
integer height = 96
integer taborder = 60
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Cancelar"
boolean cancel = true
boolean originalsize = true
long textcolor = 16777215
long backcolor = 23742773
end type

event clicked;HALT
end event

type pb_aceptar from picturebutton within w_resetpass
integer x = 2139
integer y = 1224
integer width = 517
integer height = 96
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Aceptar"
boolean default = true
boolean originalsize = true
long textcolor = 16777215
long backcolor = 22717440
end type

event clicked;// 1) Instantiate the Transaction object
// 2) Close login window if connection successful

//Local variable declarations
String ls_database, ls_userid, ls_password, passencriptado
Long ll_row, ll_rows, ll_i

//Assignment statements
gs_userid = Trim ( sle_usuario.text )
gs_password = f_encriptar(Trim ( sle_clave.text ))
gs_database="ConnectString=’DSN=PPEM;"

//"ConnectString='DSN=Flexigraf;UID=dba;PWD=sqldata'"
//gnv_connect = CREATE n_analisis_connectservice 



select count(Status)
into :ll_row
from dbo.usuarios
where Usuario = :gs_userid
and PassEncript = :gs_password
using SQLCA;

IF ll_row = 0 THEN
	MessageBox('Error', 'El usuario ' + gs_userid + ' no esta registrado',StopSign!,OK!)
Else
	
		select a.Status,/*b.Sistema,b.Rol,b.Permisos,*/a.Descripcion,a.Unidad
		into 	:gs_status,/* :gi_sistema, :gs_rol, :gs_permisos,*/ :gs_descripcion, :gi_unidad
		from 	dbo.Usuarios a/*,*/
//				dbo.Usuarios_Sistemas b
		where /*b.Usuario = a.Usuario*/
//		and b.sistema = :ll_i
		/*and*/ a.Usuario = :gs_userid
		and a.PassEncript = :gs_password
		using SQLCA;
			IF gs_status = '0' THEN
				MessageBox('Información', 'El usuario ' + gs_userid + ' está inactivo',Information!,OK!)
			Else
				///w_analisis_frame.title = '.:. PPEM SIG - Módulo Análisis - Ver. 1.1.0.0  ----    Usuario: ' + gs_userid + ' - ' + gs_descripcion + ' - Fecha: ' + string(Today()) + ' .:.'
				//open(w_calculos_express2)
				if sle_2.text = sle_3.text then 
					sle_2.backcolor=RGB(0, 255, 0)
					sle_3.backcolor=RGB(0, 255, 0)
					passencriptado = f_encriptar(sle_2.text)
					update dbo.Usuarios set Passencript = :passencriptado, Actualizado_por=:gs_userid, Actualizado_el= getdate() where Usuario = :gs_userid
					using SQLCA;
					commit;
					messagebox('Info','Se ha cambiado la contraseña con exito')
					close(parent)
				else
					sle_2.backcolor=RGB(255, 0, 0)
					sle_3.backcolor=RGB(255, 0, 0)
					messagebox('Error','Las nuevas contraseñas no coinciden')
				end if
			
			END IF
end if
	
end event

type sle_clave from singlelineedit within w_resetpass
integer x = 1961
integer y = 532
integer width = 699
integer height = 100
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
boolean password = true
borderstyle borderstyle = stylelowered!
end type

type sle_usuario from singlelineedit within w_resetpass
integer x = 1961
integer y = 300
integer width = 699
integer height = 100
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
borderstyle borderstyle = stylelowered!
end type

type st_clave from statictext within w_resetpass
integer x = 1961
integer y = 468
integer width = 549
integer height = 88
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Contraseña Actual:"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type st_usuario from statictext within w_resetpass
integer x = 1961
integer y = 232
integer width = 265
integer height = 88
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Usuario:"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type p_1 from picture within w_resetpass
integer x = 114
integer y = 188
integer width = 1317
integer height = 1028
string picturename = "Z:\Analisis\Resources\logo.png"
boolean focusrectangle = false
end type

type st_empresa from statictext within w_resetpass
integer x = 1669
integer y = 56
integer width = 1321
integer height = 132
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 25314066
long backcolor = 553648127
string text = "Reset Password"
alignment alignment = center!
boolean focusrectangle = false
end type

type ln_1 from line within w_resetpass
long linecolor = 268435456
integer linethickness = 11
integer beginx = 1531
integer beginy = 72
integer endx = 1531
integer endy = 1400
end type

