$PBExportHeader$w_principal.srw
forward
global type w_principal from window
end type
type p_1 from picture within w_principal
end type
type st_1 from statictext within w_principal
end type
end forward

global type w_principal from window
integer width = 5550
integer height = 3444
boolean titlebar = true
string title = "w_principal"
string menuname = "menu_principal"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
windowstate windowstate = maximized!
long backcolor = 16777215
string icon = "AppIcon!"
boolean center = true
windowanimationstyle openanimation = fadeanimation!
windowanimationstyle closeanimation = centeranimation!
p_1 p_1
st_1 st_1
end type
global w_principal w_principal

on w_principal.create
if this.MenuName = "menu_principal" then this.MenuID = create menu_principal
this.p_1=create p_1
this.st_1=create st_1
this.Control[]={this.p_1,&
this.st_1}
end on

on w_principal.destroy
if IsValid(MenuID) then destroy(MenuID)
destroy(this.p_1)
destroy(this.st_1)
end on

event open;String a
a= message.stringparm

st_1.text = 'Welcome ' +a
end event

event close;halt
end event

event resize;long ll_altoimagen, ll_anchoimagen,  ll_altotexto, ll_anchotexto
  long ll_altoventana, ll_anchoventana
  long ll_posx, ll_posy,  ll_posx2, ll_posy2
 
  //   p_1    es el control picture
 
  ll_altotexto = st_1.height
  ll_anchotexto = st_1.width
  
  ll_altoimagen = p_1.height
  ll_anchoimagen = p_1.width
  
  ll_altoventana = this.height
  ll_anchoventana = this.width
 
  ll_posx = (ll_anchoventana / 2) - (ll_anchoimagen/2) 
  ll_posy = (ll_altoventana / 2) - (ll_altoimagen/2) - 250
  
  ll_posx2 = (ll_anchoventana / 2) - (ll_anchotexto/2)
  ll_posy2 = (ll_altoventana / 2) - (ll_altotexto/2) + 250
 
  p_1.x = ll_posx
  p_1.y = ll_posy
  
  st_1.x = ll_posx2
  st_1.y = ll_posy2
end event

type p_1 from picture within w_principal
integer x = 1888
integer y = 760
integer width = 965
integer height = 832
string picturename = "Z:\Analisis\Resources\logo.png"
boolean focusrectangle = false
end type

type st_1 from statictext within w_principal
integer x = 709
integer y = 1624
integer width = 3899
integer height = 116
integer textsize = -18
integer weight = 700
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Tahoma"
long textcolor = 33554432
long backcolor = 67108864
string text = "none"
alignment alignment = center!
long bordercolor = 8388608
boolean focusrectangle = false
end type

