$PBExportHeader$w_ver_tel_cta.srw
forward
global type w_ver_tel_cta from window
end type
type cb_1 from commandbutton within w_ver_tel_cta
end type
type buscar from commandbutton within w_ver_tel_cta
end type
type lb_1 from listbox within w_ver_tel_cta
end type
type dw_1 from datawindow within w_ver_tel_cta
end type
type grabar from commandbutton within w_ver_tel_cta
end type
type codigo from singlelineedit within w_ver_tel_cta
end type
type gb_1 from groupbox within w_ver_tel_cta
end type
type gb_2 from groupbox within w_ver_tel_cta
end type
end forward

global type w_ver_tel_cta from window
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
global w_ver_tel_cta w_ver_tel_cta

on w_ver_tel_cta.create
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

on w_ver_tel_cta.destroy
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

type cb_1 from commandbutton within w_ver_tel_cta
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

type buscar from commandbutton within w_ver_tel_cta
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
	dw_1.setfilter("dpi like '%"+codigo.text+"%'")
	dw_1.filter( ) 
	dw_1.sort( )
	
	//dw_1.selectrow( long(dw_1.getitemstring(dw_1.getrow(),3) ),true)
end if
end event

type lb_1 from listbox within w_ver_tel_cta
integer y = 1380
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

type dw_1 from datawindow within w_ver_tel_cta
integer x = 46
integer y = 276
integer width = 4782
integer height = 1068
integer taborder = 20
string title = "none"
string dataobject = "d_ver_tel_cta"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

event constructor;this.settransobject(sqlca)
this.retrieve( )
end event

event itemchanged;String cadena, dpi
dpi= string(this.object.dpi[row])
cadena  ="Se modificó lo siguiente, Fila: " + String(row)+", DPI: "+dpi+ ", columna: " + dwo.Name + ", datos: "+ data +", realizado por el usuario: "+gs_userid
		
choose case dwo.Name
    case "tel_verificado"
           dw_1.SetItem(row, 'telverby', gs_userid)
    case "cta_verificada"
            dw_1.SetItem(row, 'ctaverby', gs_userid)
	case 'telefono'
			dw_1.SetItem(row, 'usuario_modifica', gs_userid)
			dw_1.SetItem(row, 'fecha_modifica', string(f_db_get_fecha()))
	case 'cuenta_bancaria'
			dw_1.SetItem(row, 'usuario_modifica', gs_userid)
			dw_1.SetItem(row, 'fecha_modifica', string(f_db_get_fecha()))
end choose
dw_1.Update()
lb_1.additem( cadena)
end event

type grabar from commandbutton within w_ver_tel_cta
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

event clicked;/*integer i_r, resultadoA,resultadoB, mesesTotales,mesesRestantes, añosTotales
dw_1.reset()
dw_2.reset()
if f_existe_verificacion(codigo.text)= 1 then
	dw_1.settransobject(SQLCA)
	dw_1.retrieve(trim(codigo.text))
	dw_2.settransobject(SQLCA)
	dw_2.retrieve(trim(codigo.text))
	modificar.visible=true
	agregar.visible=true
	if dw_2.getrow( )>0 then
		editar.visible = true
		
		for i_r = 1 to dw_2.rowcount( )
			resultadoA+= dw_2.object.verificacion_det_annos[i_r]
			resultadoB+=dw_2.object.verificacion_det_meses[i_r]
		next
		mesesTotales =  ((resultadoA)*12)+resultadoB
		mesesRestantes =  mod(mesesTotales,  12)
		annos.text= string(truncate(mesesTotales/12,0) )
		meses.text= string(mesesRestantes)
	else
		editar.visible = false
	end if
elseif f_existe_verificacion(codigo.text)= 2 then
	nuevo.visible=true
	agregar.visible= false
	messagebox('Error','Ya existe un codigo de verificacion como este, se encuentra inactivo')
else
	nuevo.visible=true
	agregar.visible= false
	messagebox('Información','No existe la verificación buscada')
end if */

IF dw_1.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MessageBox("Grabar","El registro detalle se grabó con éxito")
	ELSE	
		ROLLBACK using SQLCA;
	END IF

dw_1.settransobject( SQLCA)
dw_1.retrieve( )
lb_1.reset( )
end event

type codigo from singlelineedit within w_ver_tel_cta
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

type gb_1 from groupbox within w_ver_tel_cta
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

type gb_2 from groupbox within w_ver_tel_cta
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

