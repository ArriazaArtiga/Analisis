$PBExportHeader$w_analisis_welcome.srw
$PBExportComments$Generated MDI About Box
forward
global type w_analisis_welcome from window
end type
type pb_cancelar from picturebutton within w_analisis_welcome
end type
type pb_aceptar from picturebutton within w_analisis_welcome
end type
type sle_clave from singlelineedit within w_analisis_welcome
end type
type sle_usuario from singlelineedit within w_analisis_welcome
end type
type st_clave from statictext within w_analisis_welcome
end type
type st_usuario from statictext within w_analisis_welcome
end type
type p_1 from picture within w_analisis_welcome
end type
type st_sistema from statictext within w_analisis_welcome
end type
type st_empresa from statictext within w_analisis_welcome
end type
type ln_1 from line within w_analisis_welcome
end type
end forward

global type w_analisis_welcome from window
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
pb_cancelar pb_cancelar
pb_aceptar pb_aceptar
sle_clave sle_clave
sle_usuario sle_usuario
st_clave st_clave
st_usuario st_usuario
p_1 p_1
st_sistema st_sistema
st_empresa st_empresa
ln_1 ln_1
end type
global w_analisis_welcome w_analisis_welcome

on w_analisis_welcome.create
this.pb_cancelar=create pb_cancelar
this.pb_aceptar=create pb_aceptar
this.sle_clave=create sle_clave
this.sle_usuario=create sle_usuario
this.st_clave=create st_clave
this.st_usuario=create st_usuario
this.p_1=create p_1
this.st_sistema=create st_sistema
this.st_empresa=create st_empresa
this.ln_1=create ln_1
this.Control[]={this.pb_cancelar,&
this.pb_aceptar,&
this.sle_clave,&
this.sle_usuario,&
this.st_clave,&
this.st_usuario,&
this.p_1,&
this.st_sistema,&
this.st_empresa,&
this.ln_1}
end on

on w_analisis_welcome.destroy
destroy(this.pb_cancelar)
destroy(this.pb_aceptar)
destroy(this.sle_clave)
destroy(this.sle_usuario)
destroy(this.st_clave)
destroy(this.st_usuario)
destroy(this.p_1)
destroy(this.st_sistema)
destroy(this.st_empresa)
destroy(this.ln_1)
end on

type pb_cancelar from picturebutton within w_analisis_welcome
integer x = 2080
integer y = 1048
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

type pb_aceptar from picturebutton within w_analisis_welcome
integer x = 2080
integer y = 920
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
String ls_database, ls_userid, ls_password
Long ll_row, ll_rows, ll_i

//Assignment statements
gs_userid = Trim ( sle_usuario.text )
gs_password = Trim ( sle_clave.text )
gs_database="ConnectString=’DSN=PPEM;"

//"ConnectString='DSN=Flexigraf;UID=dba;PWD=sqldata'"
gnv_connect = CREATE n_analisis_connectservice 

//Instantiate with user-entry values
//SQLCA.userid = ls_userid
//SQLCA.dbpass = ls_password
//SQLCA.dbparm = ls_database + "UID=" + ls_userid + ";PWD=" + ls_password + "'"

//IF gnv_connect.of_ConnectDB ( ) = 0 THEN
//	Close (parent)
//END IF

select count(Status)
into :ll_row
from dbo.usuarios
where Usuario = :gs_userid
and Clave = :gs_password
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
		and a.Clave = :gs_password
		using SQLCA;
			IF gs_status = '0' THEN
				MessageBox('Información', 'El usuario ' + gs_userid + ' está inactivo',Information!,OK!)
			Else
				///w_analisis_frame.title = '.:. PPEM SIG - Módulo Análisis - Ver. 1.1.0.0  ----    Usuario: ' + gs_userid + ' - ' + gs_descripcion + ' - Fecha: ' + string(Today()) + ' .:.'
				//open(w_calculos_express2)
				OpenWithParm(w_principal, gs_descripcion)
				w_principal.title = '.:. PPEM SIG - Módulo Análisis - Ver. 1.1.0.0  ----    Usuario: ' + gs_userid + ' - ' + gs_descripcion + ' - Fecha: ' + string(Today()) + ' © PPEM - SIG - 2016-2017 .:.'
			END IF
end if
	
end event

type sle_clave from singlelineedit within w_analisis_welcome
integer x = 1989
integer y = 736
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

type sle_usuario from singlelineedit within w_analisis_welcome
integer x = 1989
integer y = 504
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

type st_clave from statictext within w_analisis_welcome
integer x = 1989
integer y = 672
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
string text = "Clave:"
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type st_usuario from statictext within w_analisis_welcome
integer x = 1984
integer y = 436
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

type p_1 from picture within w_analisis_welcome
integer x = 114
integer y = 188
integer width = 1317
integer height = 1028
string picturename = "Z:\Analisis\Resources\logo.png"
boolean focusrectangle = false
end type

type st_sistema from statictext within w_analisis_welcome
integer x = 1678
integer y = 264
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
string text = "Ingreso de Usuarios"
alignment alignment = center!
borderstyle borderstyle = styleraised!
boolean focusrectangle = false
end type

type st_empresa from statictext within w_analisis_welcome
integer x = 1678
integer y = 132
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
string text = "PPEM SIG - Módulo Análisis"
alignment alignment = center!
boolean focusrectangle = false
end type

type ln_1 from line within w_analisis_welcome
long linecolor = 268435456
integer linethickness = 11
integer beginx = 1531
integer beginy = 72
integer endx = 1531
integer endy = 1400
end type

