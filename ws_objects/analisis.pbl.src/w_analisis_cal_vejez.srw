$PBExportHeader$w_analisis_cal_vejez.srw
forward
global type w_analisis_cal_vejez from window
end type
type pb_1 from picturebutton within w_analisis_cal_vejez
end type
type pb_3 from picturebutton within w_analisis_cal_vejez
end type
type pd from editmask within w_analisis_cal_vejez
end type
type d_aguinaldo from editmask within w_analisis_cal_vejez
end type
type d_bono from editmask within w_analisis_cal_vejez
end type
type st_3 from statictext within w_analisis_cal_vejez
end type
type st_2 from statictext within w_analisis_cal_vejez
end type
type st_1 from statictext within w_analisis_cal_vejez
end type
type dw from datawindow within w_analisis_cal_vejez
end type
type btn_grabar from commandbutton within w_analisis_cal_vejez
end type
type btn_calcular from commandbutton within w_analisis_cal_vejez
end type
end forward

global type w_analisis_cal_vejez from window
integer width = 3803
integer height = 2112
boolean titlebar = true
string title = "CALCULO VEJEZ E INVALIDEZ"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
string icon = "AppIcon!"
boolean center = true
pb_1 pb_1
pb_3 pb_3
pd pd
d_aguinaldo d_aguinaldo
d_bono d_bono
st_3 st_3
st_2 st_2
st_1 st_1
dw dw
btn_grabar btn_grabar
btn_calcular btn_calcular
end type
global w_analisis_cal_vejez w_analisis_cal_vejez

on w_analisis_cal_vejez.create
this.pb_1=create pb_1
this.pb_3=create pb_3
this.pd=create pd
this.d_aguinaldo=create d_aguinaldo
this.d_bono=create d_bono
this.st_3=create st_3
this.st_2=create st_2
this.st_1=create st_1
this.dw=create dw
this.btn_grabar=create btn_grabar
this.btn_calcular=create btn_calcular
this.Control[]={this.pb_1,&
this.pb_3,&
this.pd,&
this.d_aguinaldo,&
this.d_bono,&
this.st_3,&
this.st_2,&
this.st_1,&
this.dw,&
this.btn_grabar,&
this.btn_calcular}
end on

on w_analisis_cal_vejez.destroy
destroy(this.pb_1)
destroy(this.pb_3)
destroy(this.pd)
destroy(this.d_aguinaldo)
destroy(this.d_bono)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.dw)
destroy(this.btn_grabar)
destroy(this.btn_calcular)
end on

event open;string id
long row
e_vejez st, st_A

id = message.stringparm
st_A= f_aux_cal_vejez2(id)
d_bono.text ='0'
d_aguinaldo.text ='0'
pd.text ='0'
dw.settransobject(sqlca)


if  st_A.solicitud = 0 then 
	dw.insertrow(1)
	row = dw.getrow( )
	st= f_aux_cal_vejez(id)
	//em_1.text = string(st.fechasolicitud, 'dd/mm/yyyy')
	dw.object.solicitud[row] = st.solicitud
	dw.object.dpi[row] = id
	dw.object.iddoc[row] = '7'
	dw.object.resolución[row] = st.resolucion
	dw.object.entregacargo[row] = st.entregacargo
	dw.object.fecharesolucion[row] = st.fecharesolucion
	dw.object.iniciocalculo[row] = st.iniciocalculo
	dw.object.pensionmensual[row] = st.pensionmensual
	dw.object.bono[row] = 0
	dw.object.aguinaldo[row] =0
	dw.object.textdiasacum[row] = 'Dias acumulados'
	dw.object.textperiodoacum[row] = 'Periodo Acumulado'
	dw.object.textbono[row] = 'Bono 14 Proporcional'
	dw.object.textaguinaldo[row] = 'Aguinaldo Proporcional'
	if isnull(st._aux) then
		dw.object.textauxpostperiodo[row] =''
	elseif st._aux = '' then 
		dw.object.textauxpostperiodo[row] =''
	elseif st._aux = '0' then
		dw.object.textauxpostperiodo[row] =''
	else
		dw.object.textauxpostperiodo[row] = 'Periodo Axilio Postumo'
	end if
	
else

	dw.SetTransObject(sqlca)
	dw.retrieve( id )
	d_bono.text=string(st_A.diasbono)
	d_aguinaldo.text=string(st_A.diasaguinaldo)
end if
end event

type pb_1 from picturebutton within w_analisis_cal_vejez
integer x = 3621
integer y = 188
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string picturename = "Custom009!"
string disabledname = "AddWatch!"
long backcolor = 33554432
end type

event clicked;Close(w_analisis_cal_vejez)
end event

type pb_3 from picturebutton within w_analisis_cal_vejez
integer x = 3621
integer y = 56
integer width = 110
integer height = 96
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
boolean flatstyle = true
string picturename = "CreateLibrary!"
string disabledname = "AddWatch!"
alignment htextalign = left!
long backcolor = 33554432
end type

event clicked;d_bono.displayonly = false
d_aguinaldo.displayonly = false

long row
decimal  total

row = dw.getrow()
//variables
total =0.00
total += dw.object.montodiasacum[row]
total += dw.object.montoperiodoacum[row]
total += dw.object.montobono[row]
total += dw.object.montoaguinaldo[row]
dw.object.total[row] = total
end event

type pd from editmask within w_analisis_cal_vejez
integer x = 2725
integer y = 20
integer width = 402
integer height = 112
integer taborder = 30
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
boolean displayonly = true
borderstyle borderstyle = stylelowered!
string mask = "###,###.00000"
end type

type d_aguinaldo from editmask within w_analisis_cal_vejez
integer x = 1586
integer y = 24
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
boolean displayonly = true
borderstyle borderstyle = stylelowered!
string mask = "#####"
string minmax = "0~~"
end type

type d_bono from editmask within w_analisis_cal_vejez
integer x = 448
integer y = 32
integer width = 402
integer height = 112
integer taborder = 20
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "none"
boolean displayonly = true
borderstyle borderstyle = stylelowered!
string mask = "#####"
string minmax = "0~~"
end type

type st_3 from statictext within w_analisis_cal_vejez
integer x = 2258
integer y = 48
integer width = 475
integer height = 68
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Pensión Diaria:"
boolean focusrectangle = false
end type

type st_2 from statictext within w_analisis_cal_vejez
integer x = 1033
integer y = 48
integer width = 494
integer height = 68
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Dias Aguinaldo:"
boolean focusrectangle = false
end type

type st_1 from statictext within w_analisis_cal_vejez
integer x = 32
integer y = 48
integer width = 402
integer height = 64
integer textsize = -10
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Dias Bono14:"
boolean focusrectangle = false
end type

type dw from datawindow within w_analisis_cal_vejez
integer x = 37
integer y = 156
integer width = 3095
integer height = 1788
integer taborder = 20
string title = "none"
string dataobject = "d_analisis_cal_vi"
boolean border = false
string icon = "Application5!"
boolean livescroll = true
borderstyle borderstyle = stylelowered!
end type

type btn_grabar from commandbutton within w_analisis_cal_vejez
integer x = 3191
integer y = 180
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Grabar"
end type

event clicked;Integer respuesta
respuesta = MessageBox("¿Grabar?", "¿Ya reviso los cálculos?. ¿Desea Grabar?", Question!, YesNo!, 2)
IF respuesta = 1  THEN
	IF dw.Update() = 1 THEN	
		COMMIT using SQLCA;	
		MESSAGEBOX("EXITO", 'SE HA GRABADO EN BASE DE DATOS')
	ELSE	
		ROLLBACK using SQLCA;
		MESSAGEBOX("ERROR", 'ERROR, NO SE HA GRABADO')
	END IF
ELSE
	
END IF


end event

type btn_calcular from commandbutton within w_analisis_cal_vejez
integer x = 3186
integer y = 48
integer width = 402
integer height = 112
integer taborder = 10
integer textsize = -10
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Calcular"
end type

event clicked;long row
e_vejez st

datetime f_resolucion, f_iniciocalculo, f_entregacargo, f_sol, f_ibono, f_fbono, f_iaguinaldo, f_faguinaldo
integer mesB01, mesA01
date fauxiliar, fauxiliar2,ib14, inicioAguinaldo
decimal  total, PDiaria,PensionDiaria, bono, aguinaldo 
total = 0.00
int meses, year, DiasBono, DiasAguinaldo,convBono,convAguinaldo
string s_dias
row = dw.getrow()

//variables
st =  f_aux_cal_vejez(message.stringparm)
dw.object.resolución[row] = st.resolucion
dw.object.entregacargo[row] = st.entregacargo
dw.object.fecharesolucion[row] = st.fecharesolucion
dw.object.entregacargo[row] = st.entregacargo
dw.object.pensionmensual[row] = st.pensionmensual
dw.object.iniciocalculo[row] = st.iniciocalculo

f_resolucion =st.fecharesolucion  
f_iniciocalculo =st.iniciocalculo
f_entregacargo = st.entregacargo
f_sol = st.fechasolicitud
f_ibono= datetime(string(year(date(f_iniciocalculo))-1)+'/06/30')
f_fbono= datetime(string(year(date(f_resolucion)))+'/06/30')
f_iaguinaldo=datetime(string(year(date(f_iniciocalculo))-1)+'/11/30')
f_faguinaldo=datetime(string(year(date(f_resolucion)))+'/11/30')
PDiaria =(st.pensionmensual /365)
pd.text = string(PDiaria )
PensionDiaria =PDiaria

//Texto Dias

if(f_iniciocalculo >  f_fecha_ini_mes(month(date(f_iniciocalculo)),year(date(f_iniciocalculo )))) then
	s_dias =string( f_db_get_dias_pago_new( dw.object.dpi[row],  dw.object.solicitud[row])) + ' Dias de ' + string(lower(f_fecha_meses_letras_com(  f_iniciocalculo )))
else
	s_dias = 'Dias acumulados'
end if
 dw.object.textdiasacum[row] = s_dias
 
 dw.object.montodiasacum[row]= round(f_recibo_linea1( f_iniciocalculo,  dw.object.dpi[row],    dw.object.pensionmensual[row] ,  dw.object.solicitud[row]  ),2)

 total += dw.object.montodiasacum[row]
 //Periodo Acumulado
 dw.object.textperiodoacum[row] = f_txt_antes_b14_recibo( f_iniciocalculo,  f_resolucion, f_sol,  f_entregacargo  )
 dw.object.montoperiodoacum[row]=round(f_recibo_linea2( f_iniciocalculo , f_resolucion , dw.object.pensionmensual[row] ),2)
 total += dw.object.montoperiodoacum[row]
 //Bono14



 if dw.object.bono[row]=1 then
	//calculo b14
	fauxiliar= date(f_fbono)
	mesB01 = month(fauxiliar)
	
	if mesB01 < 6 then
		fauxiliar = date(string(year(date (f_fbono))-1)+'-06-30')
	else  
		fauxiliar= date(f_fbono)
	end if
	
	//messagebox('','Fecha auxiliar: '+string(fauxiliar))
	DiasBono = daysafter(date(f_iniciocalculo), date( fauxiliar))+1
	//messagebox('hi','dias:' + string(DiasBono))
	if DiasBono < 0 then
	DiasBono = 0
	end if
	d_bono.text= string(DiasBono)
	convBono = integer(d_bono.text)
	dw.object.diasbono[row]=convBono
	bono = round(PensionDiaria * convBono,2)
	if bono < 0 then
		bono = 0.00
	end if
	dw.object.montobono[row]=bono
	total += bono
	//etiqueta b14
	
	ib14 = date(string(year(date(f_iniciocalculo)))+'-07-01')
	if ib14 > date(f_iniciocalculo) then
		ib14 = date(string(year(date(f_iniciocalculo))-1)+'-07-01')
	end if
	dw.object.textbono[row] =  'Bono 14 proporcional '  +string( year(ib14) )  + '-' + string(year( date(fauxiliar) ) ) 
	
 else
	dw.object.textbono[row] ='No aplica bono 14 proporcional'
	dw.object.montobono[row]=0.00
	 total += dw.object.montobono[row]
	 d_bono.text ='0'
	 dw.object.diasbono[row]=0
 end if
	
//Aguinaldo

 if dw.object.aguinaldo[row]=1  then
	//calculo aguinaldo
	 fauxiliar2= date(f_faguinaldo)
	mesA01= month(fauxiliar2)
	
	if  f_faguinaldo > f_resolucion then
		fauxiliar2 = date(string(year(date (f_faguinaldo))-1)+'-11-30')
	else 
		 fauxiliar2= date(f_faguinaldo)
	end if
	diasAguinaldo = daysafter(date(f_iniciocalculo), date(fauxiliar2))+1
	if diasAguinaldo < 0 then
	diasAguinaldo = 0
	end if
	d_aguinaldo.text= string(diasAguinaldo)
	
	convAguinaldo = integer(d_aguinaldo.text)
	dw.object.diasaguinaldo[row]=convAguinaldo
	aguinaldo=round(PensionDiaria*convAguinaldo,2)                                         
	if aguinaldo < 0 then
		aguinaldo = 0.00
	end if

	dw.object.montoaguinaldo[row]= aguinaldo
	 total += aguinaldo	
	 //etiqueta aguinaldo
	
	
	inicioAguinaldo = date(string(year(date(f_iniciocalculo)))+'-12-01')
	if inicioAguinaldo > date(f_iniciocalculo) then
		inicioAguinaldo = date(string(year(date(f_iniciocalculo))-1)+'-12-01')
	end if
	dw.object.textaguinaldo[row] = 'Aguinaldo proporcional '  +string( year(inicioAguinaldo) )  + '-' + string(year( date(  fauxiliar2  ) ) )	 
	 
	 
 else
	dw.object.textaguinaldo[row] = 'No aplica aguinaldo proporcional'
	dw.object.montoaguinaldo[row]=0.00
	total += dw.object.montoaguinaldo[row]
	d_aguinaldo.text ='0'
	dw.object.diasbono[row]=0
 end if
 if isnull(st._aux) or st._aux='' or st._aux='0' then 
	// Auxilio Postumo
	dw.object.montoauxpostumo_t.text=''
 	dw.object.montoauxpostumo[row] = round(0 ,2)
	 //Periodo Aux
	 dw.object.textauxpostperiodo[row] = ''
	 dw.object.montoauxpostperiodo[row]= round(0,2)
else
	 // Auxilio Postumo
	 dw.object.montoauxpostumo[row] = round(dec(st.montoinsaux) ,2)
	 total -= dw.object.montoauxpostumo[row]
	//Periodo Axu Postumo
	if month(date(f_iniciocalculo)) = month(date(f_resolucion)) and year(date(f_iniciocalculo)) = year(date(f_resolucion)) then
		dw.object.textauxpostperiodo[row] = '(-) Auxilio Póstumo de ' +string(lower(f_fecha_meses_letras_com(  f_resolucion   )))
	else
		dw.object.textauxpostperiodo[row] = '(-) Auxilio Póstumo de ' + string(lower(f_fecha_meses_letras_com(   f_iniciocalculo ))) + ' a ' + string(lower(f_fecha_meses_letras_com(  f_resolucion   )))
	end if
		dw.object.montoauxpostperiodo[row]= round((st.montoauxpostumo * ( f_diferencia_meses(f_iniciocalculo, f_resolucion) + 1)),2)
		total -=dw.object.montoauxpostperiodo[row]
end if

	dw.object.total[row] = round(total,2)
	
end event

