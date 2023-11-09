$PBExportHeader$w_parametrizar.srw
forward
global type w_parametrizar from window
end type
type st_5 from statictext within w_parametrizar
end type
type cb_1 from commandbutton within w_parametrizar
end type
type dp_2 from datepicker within w_parametrizar
end type
type dp_1 from datepicker within w_parametrizar
end type
type st_4 from statictext within w_parametrizar
end type
type st_1 from statictext within w_parametrizar
end type
type rb_aguinaldo_2 from radiobutton within w_parametrizar
end type
type rb_aguinaldo_1 from radiobutton within w_parametrizar
end type
type rb_bono14_2 from radiobutton within w_parametrizar
end type
type rb_bono14_1 from radiobutton within w_parametrizar
end type
type mle_1 from multilineedit within w_parametrizar
end type
type fagui from datepicker within w_parametrizar
end type
type ibono14 from datepicker within w_parametrizar
end type
type fbono14 from datepicker within w_parametrizar
end type
type iagui from datepicker within w_parametrizar
end type
type fallece from datepicker within w_parametrizar
end type
type upago from datepicker within w_parametrizar
end type
type b_prueba from commandbutton within w_parametrizar
end type
type st_13 from statictext within w_parametrizar
end type
type st_12 from statictext within w_parametrizar
end type
type st_11 from statictext within w_parametrizar
end type
type st_10 from statictext within w_parametrizar
end type
type st_3 from statictext within w_parametrizar
end type
type st_2 from statictext within w_parametrizar
end type
type gb_1 from groupbox within w_parametrizar
end type
type gb_2 from groupbox within w_parametrizar
end type
type gb_3 from groupbox within w_parametrizar
end type
end forward

global type w_parametrizar from window
accessiblerole accessiblerole = buttonmenurole!
integer width = 5243
integer height = 1968
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
st_5 st_5
cb_1 cb_1
dp_2 dp_2
dp_1 dp_1
st_4 st_4
st_1 st_1
rb_aguinaldo_2 rb_aguinaldo_2
rb_aguinaldo_1 rb_aguinaldo_1
rb_bono14_2 rb_bono14_2
rb_bono14_1 rb_bono14_1
mle_1 mle_1
fagui fagui
ibono14 ibono14
fbono14 fbono14
iagui iagui
fallece fallece
upago upago
b_prueba b_prueba
st_13 st_13
st_12 st_12
st_11 st_11
st_10 st_10
st_3 st_3
st_2 st_2
gb_1 gb_1
gb_2 gb_2
gb_3 gb_3
end type
global w_parametrizar w_parametrizar

on w_parametrizar.create
this.st_5=create st_5
this.cb_1=create cb_1
this.dp_2=create dp_2
this.dp_1=create dp_1
this.st_4=create st_4
this.st_1=create st_1
this.rb_aguinaldo_2=create rb_aguinaldo_2
this.rb_aguinaldo_1=create rb_aguinaldo_1
this.rb_bono14_2=create rb_bono14_2
this.rb_bono14_1=create rb_bono14_1
this.mle_1=create mle_1
this.fagui=create fagui
this.ibono14=create ibono14
this.fbono14=create fbono14
this.iagui=create iagui
this.fallece=create fallece
this.upago=create upago
this.b_prueba=create b_prueba
this.st_13=create st_13
this.st_12=create st_12
this.st_11=create st_11
this.st_10=create st_10
this.st_3=create st_3
this.st_2=create st_2
this.gb_1=create gb_1
this.gb_2=create gb_2
this.gb_3=create gb_3
this.Control[]={this.st_5,&
this.cb_1,&
this.dp_2,&
this.dp_1,&
this.st_4,&
this.st_1,&
this.rb_aguinaldo_2,&
this.rb_aguinaldo_1,&
this.rb_bono14_2,&
this.rb_bono14_1,&
this.mle_1,&
this.fagui,&
this.ibono14,&
this.fbono14,&
this.iagui,&
this.fallece,&
this.upago,&
this.b_prueba,&
this.st_13,&
this.st_12,&
this.st_11,&
this.st_10,&
this.st_3,&
this.st_2,&
this.gb_1,&
this.gb_2,&
this.gb_3}
end on

on w_parametrizar.destroy
destroy(this.st_5)
destroy(this.cb_1)
destroy(this.dp_2)
destroy(this.dp_1)
destroy(this.st_4)
destroy(this.st_1)
destroy(this.rb_aguinaldo_2)
destroy(this.rb_aguinaldo_1)
destroy(this.rb_bono14_2)
destroy(this.rb_bono14_1)
destroy(this.mle_1)
destroy(this.fagui)
destroy(this.ibono14)
destroy(this.fbono14)
destroy(this.iagui)
destroy(this.fallece)
destroy(this.upago)
destroy(this.b_prueba)
destroy(this.st_13)
destroy(this.st_12)
destroy(this.st_11)
destroy(this.st_10)
destroy(this.st_3)
destroy(this.st_2)
destroy(this.gb_1)
destroy(this.gb_2)
destroy(this.gb_3)
end on

type st_5 from statictext within w_parametrizar
integer x = 850
integer y = 1716
integer width = 517
integer height = 72
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
alignment alignment = center!
boolean focusrectangle = false
end type

type cb_1 from commandbutton within w_parametrizar
integer x = 78
integer y = 1704
integer width = 517
integer height = 128
integer taborder = 50
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "none"
end type

event clicked;st_5.text= string(f_diferencia_meses(datetime(dp_1.text), datetime(dp_2.text)))
end event

type dp_2 from datepicker within w_parametrizar
integer x = 1015
integer y = 1560
integer width = 965
integer height = 100
integer taborder = 40
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-12-06"), Time("13:35:17.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type dp_1 from datepicker within w_parametrizar
integer x = 41
integer y = 1580
integer width = 827
integer height = 100
integer taborder = 40
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-12-06"), Time("13:35:17.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type st_4 from statictext within w_parametrizar
integer x = 1015
integer y = 1416
integer width = 942
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Final"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_1 from statictext within w_parametrizar
integer x = 14
integer y = 1396
integer width = 869
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Inicio"
alignment alignment = center!
boolean focusrectangle = false
end type

type rb_aguinaldo_2 from radiobutton within w_parametrizar
integer x = 4219
integer y = 756
integer width = 846
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "aguinaldo provisional"
boolean automatic = false
end type

type rb_aguinaldo_1 from radiobutton within w_parametrizar
integer x = 4219
integer y = 636
integer width = 896
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "aguinaldo proporcional"
boolean automatic = false
end type

type rb_bono14_2 from radiobutton within w_parametrizar
integer x = 4219
integer y = 512
integer width = 768
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "bono14 provisional"
boolean automatic = false
end type

type rb_bono14_1 from radiobutton within w_parametrizar
integer x = 4219
integer y = 388
integer width = 818
integer height = 92
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
boolean enabled = false
string text = "bono14 proporcional"
boolean automatic = false
end type

type mle_1 from multilineedit within w_parametrizar
integer x = 2167
integer y = 116
integer width = 1943
integer height = 1684
integer taborder = 30
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
string text = "Parametros:"
borderstyle borderstyle = styleshadowbox!
end type

type fagui from datepicker within w_parametrizar
integer x = 1001
integer y = 1104
integer width = 965
integer height = 100
integer taborder = 30
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2021-11-30"), Time("11:35:15.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type ibono14 from datepicker within w_parametrizar
integer x = 5
integer y = 736
integer width = 878
integer height = 96
integer taborder = 40
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2021-07-01"), Time("11:34:30.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type fbono14 from datepicker within w_parametrizar
integer x = 1024
integer y = 720
integer width = 937
integer height = 100
integer taborder = 30
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-06-30"), Time("11:34:20.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type iagui from datepicker within w_parametrizar
integer x = 27
integer y = 1124
integer width = 827
integer height = 100
integer taborder = 30
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2020-12-01"), Time("11:33:49.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type fallece from datepicker within w_parametrizar
integer x = 32
integer y = 320
integer width = 873
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2021-09-13"), Time("11:31:08.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type upago from datepicker within w_parametrizar
integer x = 1033
integer y = 324
integer width = 928
integer height = 100
integer taborder = 20
boolean border = true
borderstyle borderstyle = stylelowered!
date maxdate = Date("2999-12-31")
date mindate = Date("1800-01-01")
datetime value = DateTime(Date("2022-01-31"), Time("11:30:28.000000"))
integer textsize = -11
integer fontweight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
integer calendarfontweight = 400
boolean todaysection = true
boolean todaycircle = true
boolean valueset = true
end type

type b_prueba from commandbutton within w_parametrizar
integer x = 4219
integer y = 100
integer width = 571
integer height = 140
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
string text = "Ejecutar"
end type

event clicked;
//creacion de variables globales 
date f_fallece, f_upago,f_ib14,f_fb14,f_iagui,f_fagui
string bono, aguinaldo
bono= ""
aguinaldo = ""
rb_bono14_2.checked = false
rb_bono14_1.checked = false
rb_aguinaldo_2.checked = false
rb_aguinaldo_1.checked = false
rb_bono14_2.backcolor =  RGB(255,255,255)
rb_bono14_1.backcolor =  RGB(255,255,255)
rb_aguinaldo_2.backcolor =  RGB(255,255,255)
rb_aguinaldo_1.backcolor =  RGB(255,255,255)

mle_1.text = "Parametros: "
//asignacion de valores a las variables globales 



f_fallece= fallece.datevalue
f_upago= upago.datevalue 
f_ib14= ibono14.datevalue 
f_fb14= fbono14.datevalue
f_iagui= iagui.datevalue
f_fagui= fagui.datevalue 

//definir parametros
//agui fallece
if( f_iagui > f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo += " f_iagui > f_fallece "
end if
if( f_iagui < f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo += " f_iagui < f_fallece "
end if
if( f_iagui = f_fallece) then
	bono+= "~r~n"
	bono += " f_iagui = f_fallece "
end if
if( f_iagui = f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_iagui = f_fallece "
end if
if( f_fagui > f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo += " f_fagui > f_fallece "
end if
if( f_fagui < f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo += " f_fagui < f_fallece "
end if
if( f_fagui = f_fallece) then
	aguinaldo+="~r~n"
	aguinaldo += " f_fagui = f_fallece "
end if
if( f_fagui = f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_fagui = f_fallece "
end if
//agui upago
if( f_iagui > f_upago) then
	aguinaldo +="~r~n"
	aguinaldo += " f_iagui > f_upago "
end if
if( f_iagui < f_upago) then
	aguinaldo += "~r~n"
	aguinaldo += " f_iagui < f_upago "
end if
if( f_iagui = f_upago) then
	aguinaldo+= "~r~n"
	aguinaldo += " f_iagui = f_upago "
end if
if( f_iagui = f_upago) then
	aguinaldo +="~r~n"
	aguinaldo+= " f_iagui = f_upago "
end if
if( f_fagui > f_upago) then
	aguinaldo += "~r~n"
	aguinaldo += " f_fagui > f_upago "
end if
if( f_fagui < f_upago) then
	aguinaldo += "~r~n"
	aguinaldo += " f_fagui < f_upago "
end if
if( f_fagui = f_upago) then
	aguinaldo+= "~r~n"
	aguinaldo += " f_fagui = f_upago "
end if
if( f_fagui = f_fallece) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_fagui = f_upago "
end if
if( f_fallece < f_upago) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_fallece < f_upago "
end if
if( f_fallece > f_upago) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_fallece > f_upago "
end if
if( f_fallece = f_upago) then
	aguinaldo += "~r~n"
	aguinaldo+= " f_fallece = f_upago "
end if

//bono fallece
if( f_ib14 > f_fallece) then
	bono +="~r~n"
	bono += " f_ib14 > f_fallece "
end if
if( f_ib14 < f_fallece) then
	bono +="~r~n"
	bono += " f_ib14 < f_fallece "
end if
if( f_ib14 = f_fallece) then
	bono+="~r~n"
	bono += " f_ib14 = f_fallece "
end if
if( f_ib14 = f_fallece) then
	bono += "~r~n"
	bono+= " f_ib14 = f_fallece "
end if
if( f_fb14 > f_fallece) then
	bono += "~r~n"
	bono += " f_fb14 > f_fallece "
end if
if( f_fb14 < f_fallece) then
	bono +="~r~n"
	bono += " f_fb14 < f_fallece "
end if
if( f_fb14 = f_fallece) then
	bono+= "~r~n"
	bono += " f_fb14 = f_fallece "
end if
if( f_fb14 = f_fallece) then
	bono +="~r~n"
	bono+= " f_fb14 = f_fallece "
end if
//bono upago
if( f_ib14 > f_upago) then
	bono += "~r~n"
	bono += " f_ib14 > f_upago "
end if
if( f_ib14 < f_upago) then
	bono += "~r~n"
	bono += " f_ib14 < f_upago "
end if
if( f_ib14 = f_upago) then
	bono+= "~r~n"
	bono += " f_ib14 = f_upago "
end if
if( f_ib14 = f_upago) then
	bono += "~r~n"
	bono+= " f_ib14 = f_upago "
end if
if( f_fb14 > f_upago) then
	bono += "~r~n"
	bono += " f_fb14 > f_upago "
end if
if( f_fb14 < f_upago) then
	bono +="~r~n"
	bono += " f_fb14 < f_upago "
end if
if( f_fb14 = f_upago) then
	bono+= "~r~n"
	bono += " f_fb14 = f_upago "
end if
if( f_fb14 = f_fallece) then
	bono += "~r~n"
	bono+= " f_fb14 = f_upago "
end if
if( f_fallece < f_upago) then
	bono += "~r~n"
	bono+= " f_fallece < f_upago "
end if
if( f_fallece > f_upago) then
	bono += "~r~n"
	bono+= " f_fallece > f_upago "
end if
if( f_fallece = f_upago) then
	bono += "~r~n"
	bono+= " f_fallece = f_upago "
end if
mle_1.text += "~r~n"
mle_1.text += "~r~n"
mle_1.text +="Bono 14:"+ bono

mle_1.text += "~r~n"
mle_1.text += "~r~n"
mle_1.text +="Aguinaldo: "+Aguinaldo

//Bono Proporcional
if  f_ib14 < f_fallece and f_fb14 > f_fallece and f_ib14 < f_upago and f_fb14 < f_upago and f_fallece < f_upago then
	rb_bono14_1.checked = true
	rb_bono14_1.backcolor = RGB(255,0,0)
end if
if f_iagui < f_fallece and f_fagui > f_fallece and f_iagui < f_upago  and f_fagui = f_upago  and f_fallece < f_upago then
	rb_bono14_1.checked = true
	rb_bono14_1.backcolor = RGB(255,0,0)
end if
//Bono Provisional
if  f_ib14 < f_fallece and f_fb14 > f_fallece and f_ib14 < f_upago and f_fb14 > f_upago and f_fallece < f_upago then
	rb_bono14_2.checked = true
	rb_bono14_2.backcolor = RGB(0,255,0)
end if
if f_ib14 < f_fallece and f_fb14 > f_fallece and f_ib14 < f_upago and f_fb14 > f_upago and f_fallece > f_upago then
	rb_bono14_2.checked = true
	rb_bono14_2.backcolor = RGB(0,255,0)
end if
if f_ib14 < f_fallece and f_fb14 > f_fallece and f_ib14 < f_upago and f_fb14 = f_upago and  f_fallece < f_upago then
	rb_bono14_2.checked = true
	rb_bono14_2.backcolor = RGB(0,255,0)
end if 

//Aguinaldo Proporcional
if  f_iagui < f_fallece and f_fagui > f_fallece and f_iagui < f_upago and f_fagui < f_upago and f_fallece < f_upago then
	rb_aguinaldo_1.checked = true
	rb_aguinaldo_1.backcolor = RGB(255,0,0)
end if
//Aguinaldo Provisional

if  f_iagui < f_fallece and  f_fagui > f_fallece and f_iagui < f_upago and f_fagui > f_upago and f_fallece < f_upago then
	rb_aguinaldo_2.checked = true
	rb_aguinaldo_2.backcolor =RGB(0,255,0)
end if

if f_iagui < f_fallece  and f_fagui > f_fallece  and f_iagui < f_upago  and f_fagui > f_upago  and f_fallece > f_upago then
	rb_aguinaldo_2.checked = true
	rb_aguinaldo_2.backcolor =RGB(0,255,0)
end if



end event

type st_13 from statictext within w_parametrizar
integer x = 1001
integer y = 960
integer width = 942
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "F. Aguinaldo "
alignment alignment = center!
boolean focusrectangle = false
end type

type st_12 from statictext within w_parametrizar
integer x = 1024
integer y = 568
integer width = 919
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "F. Bono 14"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_11 from statictext within w_parametrizar
integer y = 940
integer width = 869
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "I. Aguinaldo "
alignment alignment = center!
boolean focusrectangle = false
end type

type st_10 from statictext within w_parametrizar
integer x = 18
integer y = 560
integer width = 832
integer height = 96
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "I. Bono 14"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_3 from statictext within w_parametrizar
integer x = 1061
integer y = 208
integer width = 901
integer height = 104
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Upago"
alignment alignment = center!
boolean focusrectangle = false
end type

type st_2 from statictext within w_parametrizar
integer y = 188
integer width = 901
integer height = 104
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Fallecimiento "
alignment alignment = center!
boolean focusrectangle = false
end type

type gb_1 from groupbox within w_parametrizar
integer x = 23
integer y = 72
integer width = 2016
integer height = 1248
integer taborder = 20
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Datos"
end type

type gb_2 from groupbox within w_parametrizar
integer x = 2112
integer y = 36
integer width = 2053
integer height = 1196
integer taborder = 30
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "Parametrización"
end type

type gb_3 from groupbox within w_parametrizar
integer x = 1445
integer y = 60
integer width = 617
integer height = 452
integer taborder = 10
integer textsize = -11
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
end type

