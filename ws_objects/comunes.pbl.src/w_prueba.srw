$PBExportHeader$w_prueba.srw
forward
global type w_prueba from window
end type
type dw_1 from datawindow within w_prueba
end type
end forward

global type w_prueba from window
integer width = 5262
integer height = 4020
boolean titlebar = true
string title = "Untitled"
boolean controlmenu = true
boolean minbox = true
boolean maxbox = true
boolean resizable = true
long backcolor = 67108864
string icon = "AppIcon!"
boolean center = true
dw_1 dw_1
end type
global w_prueba w_prueba

on w_prueba.create
this.dw_1=create dw_1
this.Control[]={this.dw_1}
end on

on w_prueba.destroy
destroy(this.dw_1)
end on

type dw_1 from datawindow within w_prueba
integer x = 169
integer y = 100
integer width = 4965
integer height = 3800
integer taborder = 10
string title = "none"
string dataobject = "preuba"
boolean hscrollbar = true
boolean vscrollbar = true
boolean hsplitscroll = true
borderstyle borderstyle = styleraised!
end type

event constructor;this.settransobject( SQLCA)
this.retrieve('2730198211805',' 800-ma-2023')
end event

