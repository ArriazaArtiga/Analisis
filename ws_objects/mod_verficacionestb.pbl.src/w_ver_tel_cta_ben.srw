$PBExportHeader$w_ver_tel_cta_ben.srw
forward
global type w_ver_tel_cta_ben from window
end type
type cb_1 from commandbutton within w_ver_tel_cta_ben
end type
type buscar from commandbutton within w_ver_tel_cta_ben
end type
type lb_1 from listbox within w_ver_tel_cta_ben
end type
type dw_1 from datawindow within w_ver_tel_cta_ben
end type
type grabar from commandbutton within w_ver_tel_cta_ben
end type
type codigo from singlelineedit within w_ver_tel_cta_ben
end type
type gb_1 from groupbox within w_ver_tel_cta_ben
end type
type gb_2 from groupbox within w_ver_tel_cta_ben
end type
end forward

global type w_ver_tel_cta_ben from window
integer width = 4914
integer height = 2324
boolean titlebar = true
string title = "Verificacion de telefono y cuenta bancaria"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
cb_1 cb_1
buscar buscar
lb_1 lb_1
dw_1 dw_1
grabar grabar
codigo codigo
gb_1 gb_1
gb_2 gb_2
end type
global w_ver_tel_cta_ben w_ver_tel_cta_ben

on w_ver_tel_cta_ben.create
this.cb_1=create cb_1
this.buscar=create buscar
this.lb_1=create lb_1
this.dw_1=create dw_1
this.grabar=create grabar
this.codigo=create codigo
this.gb_1=create gb_1
this.gb_2=create gb_2
this.Control[]={this.cb_1,&
this.buscar,&
this.lb_1,&
this.dw_1,&
this.grabar,&
this.codigo,&
this.gb_1,&
this.gb_2}
end on

on w_ver_tel_cta_ben.destroy
destroy(this.cb_1)
destroy(this.buscar)
destroy(this.lb_1)
destroy(this.dw_1)
destroy(this.grabar)
destroy(this.codigo)
destroy(this.gb_1)
destroy(this.gb_2)
end on

event open;dw_1.retrieve( )
lb_1.reset( )
end event

type cb_1 from commandbutton within w_ver_tel_cta_ben
integer x = 2578
integer y = 44
integer width = 402
integer height = 128
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Reporte"
end type

event clicked;open(w_ver_tel_cta_reporte)
close(parent)
end event

type buscar from commandbutton within w_ver_tel_cta_ben
integer x = 1682
integer y = 44
integer width = 402
integer height = 128
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Buscar"
end type

event clicked;if isnull(codigo.text) then
	dw_1.retrieve( )
elseif codigo.text = ""  then
	dw_1.retrieve( )
else 
	dw_1.setfilter("detalle_beneficiarios_nombre like '%"+codigo.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type lb_1 from listbox within w_ver_tel_cta_ben
integer x = 59
integer y = 1456
integer width = 4768
integer height = 560
integer taborder = 40
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
boolean hscrollbar = true
boolean vscrollbar = true
string item[] = {"","","",""}
borderstyle borderstyle = stylelowered!
end type

type dw_1 from datawindow within w_ver_tel_cta_ben
integer x = 46
integer y = 276
integer width = 4782
integer height = 1068
integer taborder = 20
string title = "none"
string dataobject = "d_ver_tel_cta_ben"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
this.retrieve( )
end event

event itemchanged;String cadena, dpi, formatoTelefono
dpi= string(this.object.detalle_beneficiarios_correlativo[row])
cadena  ="Se modificó lo siguiente, Fila: " + String(row)+", Correlativo: "+dpi+ ", columna: " + dwo.Name + ", datos: "+ data +", realizado por el usuario: "+gs_userid
		
choose case dwo.Name
    case "detalle_beneficiarios_tel_verificado"
           dw_1.SetItem(row, 'detalle_beneficiarios_telverby', gs_userid)
    case "detalle_beneficiarios_cta_verificada"
            dw_1.SetItem(row, 'detalle_beneficiarios_ctaverby', gs_userid)
	case 'detalle_beneficiarios_telefono'
			dw_1.SetItem(row, 'detalle_beneficiarios_usuario_modifica', gs_userid)
			dw_1.SetItem(row, 'detalle_beneficiarios_fecha_modifica', datetime(today(),now()))
			formatoTelefono = Mid(data, 1, 8)+';'+Mid(data,9,8)+';'+Mid(data, 17, 8)
			cadena += ' Formtato de telefono: '+formatoTelefono
			dw_1.SetItem(row,'detalle_beneficiarios_telefono',formatoTelefono)
	case 'detalle_beneficiarios_cuenta_bancaria'
			dw_1.SetItem(row, 'detalle_beneficiarios_usuario_modifica', gs_userid)
			dw_1.SetItem(row, 'detalle_beneficiarios_fecha_modifica', datetime(today(),now()))
end choose
dw_1.Update()
lb_1.additem( cadena)
end event

type grabar from commandbutton within w_ver_tel_cta_ben
integer x = 2135
integer y = 44
integer width = 402
integer height = 128
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Grabar"
end type

event clicked;IF dw_1.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro detalle se grabó con éxito")
	ELSE	
		ROLLBACK using SQLCA;
	END IF

dw_1.settransobject( SQLCA)
dw_1.retrieve( )
lb_1.reset( )
end event

type codigo from singlelineedit within w_ver_tel_cta_ben
event darenter pbm_keydown
integer x = 46
integer y = 44
integer width = 1531
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
string placeholder = "Ingrese CUI a  buscar"
end type

event darenter;	dw_1.retrieve( )
end event

type gb_1 from groupbox within w_ver_tel_cta_ben
integer x = 32
integer y = 212
integer width = 4818
integer height = 1144
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datos a verificar"
end type

type gb_2 from groupbox within w_ver_tel_cta_ben
integer x = 32
integer y = 1396
integer width = 4814
integer height = 668
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Cambios en datos"
end type

