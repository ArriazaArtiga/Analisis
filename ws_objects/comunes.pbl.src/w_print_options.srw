$PBExportHeader$w_print_options.srw
$PBExportComments$Generated MDI About Box
forward
global type w_print_options from window
end type
type cbx_collate from checkbox within w_print_options
end type
type cb_printer from commandbutton within w_print_options
end type
type cb_cancel from commandbutton within w_print_options
end type
type cb_ok from commandbutton within w_print_options
end type
type ddlb_range from dropdownlistbox within w_print_options
end type
type st_4 from statictext within w_print_options
end type
type sle_page_range from singlelineedit within w_print_options
end type
type st_3 from statictext within w_print_options
end type
type rb_pages from radiobutton within w_print_options
end type
type rb_current_page from radiobutton within w_print_options
end type
type rb_all from radiobutton within w_print_options
end type
type em_copies from editmask within w_print_options
end type
type st_2 from statictext within w_print_options
end type
type sle_printer from singlelineedit within w_print_options
end type
type st_1 from statictext within w_print_options
end type
type gb_1 from groupbox within w_print_options
end type
type cbx_print_to_file from checkbox within w_print_options
end type
end forward

global type w_print_options from window
integer x = 672
integer y = 268
integer width = 2149
integer height = 1356
boolean titlebar = true
string title = ".:. Opciones para imprimir .:."
boolean controlmenu = true
windowtype windowtype = response!
long backcolor = 16777215
string icon = "AppIcon!"
toolbaralignment toolbaralignment = alignatleft!
cbx_collate cbx_collate
cb_printer cb_printer
cb_cancel cb_cancel
cb_ok cb_ok
ddlb_range ddlb_range
st_4 st_4
sle_page_range sle_page_range
st_3 st_3
rb_pages rb_pages
rb_current_page rb_current_page
rb_all rb_all
em_copies em_copies
st_2 st_2
sle_printer sle_printer
st_1 st_1
gb_1 gb_1
cbx_print_to_file cbx_print_to_file
end type
global w_print_options w_print_options

type variables
string is_page_range
datawindow idw_dw
end variables

forward prototypes
private subroutine wf_page_range (radiobutton who)
end prototypes

private subroutine wf_page_range (radiobutton who);choose case who
	case rb_all
		sle_page_range.text = ''
		sle_page_range.enabled = false
		is_page_range = 'a'
	case rb_current_page
		sle_page_range.text = ''
		sle_page_range.enabled = false
		is_page_range = 'c'
	case rb_pages		
		sle_page_range.enabled = true
		is_page_range = 'p'
end choose
end subroutine

on w_print_options.create
this.cbx_collate=create cbx_collate
this.cb_printer=create cb_printer
this.cb_cancel=create cb_cancel
this.cb_ok=create cb_ok
this.ddlb_range=create ddlb_range
this.st_4=create st_4
this.sle_page_range=create sle_page_range
this.st_3=create st_3
this.rb_pages=create rb_pages
this.rb_current_page=create rb_current_page
this.rb_all=create rb_all
this.em_copies=create em_copies
this.st_2=create st_2
this.sle_printer=create sle_printer
this.st_1=create st_1
this.gb_1=create gb_1
this.cbx_print_to_file=create cbx_print_to_file
this.Control[]={this.cbx_collate,&
this.cb_printer,&
this.cb_cancel,&
this.cb_ok,&
this.ddlb_range,&
this.st_4,&
this.sle_page_range,&
this.st_3,&
this.rb_pages,&
this.rb_current_page,&
this.rb_all,&
this.em_copies,&
this.st_2,&
this.sle_printer,&
this.st_1,&
this.gb_1,&
this.cbx_print_to_file}
end on

on w_print_options.destroy
destroy(this.cbx_collate)
destroy(this.cb_printer)
destroy(this.cb_cancel)
destroy(this.cb_ok)
destroy(this.ddlb_range)
destroy(this.st_4)
destroy(this.sle_page_range)
destroy(this.st_3)
destroy(this.rb_pages)
destroy(this.rb_current_page)
destroy(this.rb_all)
destroy(this.em_copies)
destroy(this.st_2)
destroy(this.sle_printer)
destroy(this.st_1)
destroy(this.gb_1)
destroy(this.cbx_print_to_file)
end on

event open;idw_dw = message.powerobjectparm
sle_printer.text = idw_dw.describe('datawindow.printer')
is_page_range = 'a'
end event

type cbx_collate from checkbox within w_print_options
boolean visible = false
integer x = 1426
integer y = 744
integer width = 626
integer height = 92
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean enabled = false
string text = "Intercalar Cop&ias"
boolean checked = true
end type

type cb_printer from commandbutton within w_print_options
integer x = 1426
integer y = 348
integer width = 517
integer height = 128
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "&Impresora..."
end type

event clicked;printsetup()
sle_printer.text = idw_dw.describe('datawindow.printer')
end event

type cb_cancel from commandbutton within w_print_options
integer x = 1426
integer y = 216
integer width = 517
integer height = 128
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Cancelar"
boolean cancel = true
end type

event clicked;closewithreturn(parent,-1)
end event

type cb_ok from commandbutton within w_print_options
integer x = 1426
integer y = 84
integer width = 517
integer height = 128
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
string text = "Aceptar"
boolean default = true
end type

event clicked;string tmp, command
long row 
string	docname, named
int	value

//choose case lower(left(ddlb_range.text,1)) // determine rangeinclude (all,even,odd)
//	case 'a' // all
//		tmp = '0'
//	case 'e' // even
//		tmp = '1'
//	case 'o' //odd
//		tmp = '2'
//end choose
//command = 'datawindow.print.page.rangeinclude = '+tmp
//if cbx_collate.checked then // collate output ?
//	command = command +  " datawindow.print.collate = yes"
//else
//	command = command +  " datawindow.print.collate = no"
//end if
choose case is_page_range // did they pick a page range?
	case 'a'  // all
		tmp = ''
	case 'c' // current page?
		row = idw_dw.getrow()
		tmp = idw_dw.describe("evaluate('page()',"+string(row)+")")
	case 'p' // a range?
		tmp = sle_page_range.text
end choose		
if len(tmp) > 0 then command = command +  " datawindow.print.page.range = '"+tmp+"'"

// number of copies ?
if len(em_copies.text) > 0 then command = command +  " datawindow.print.copies = "+em_copies.text

if cbx_print_to_file.checked then // print to file ?
	value = GetFileSaveName("Print To File", docname, named, "PRN", "Print (*.PRN),*.PRN")
	if value = 1 then 
		command = command + " datawindow.print.filename = '"+docname+"'"
	else // they canceled out of the dialog so quit completely
		return
	end if
end if

// now alter the datawindow
tmp = idw_dw.modify(command)
if len(tmp) > 0 then // if error the display the 
	messagebox('Error Setting Print Options','Error message = ' + tmp)
	messagebox('Error Setting Print Options','~r~nCommand = ' + command)
	return
end if
closewithreturn(parent,1)
end event

type ddlb_range from dropdownlistbox within w_print_options
boolean visible = false
integer x = 329
integer y = 888
integer width = 1065
integer height = 288
integer taborder = 50
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean enabled = false
boolean sorted = false
string item[] = {"Todas las páginas en rango.","Páginas pares.","Páginas impares."}
borderstyle borderstyle = stylelowered!
end type

type st_4 from statictext within w_print_options
boolean visible = false
integer x = 64
integer y = 896
integer width = 274
integer height = 72
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean enabled = false
string text = "&Imprimir:"
boolean focusrectangle = false
end type

type sle_page_range from singlelineedit within w_print_options
integer x = 457
integer y = 528
integer width = 882
integer height = 88
integer taborder = 40
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type st_3 from statictext within w_print_options
integer x = 105
integer y = 616
integer width = 1184
integer height = 232
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean enabled = false
string text = "Ingrese números de página y/o rangos separados por comas. Por ejemplo, 2,5,8-10"
boolean focusrectangle = false
end type

type rb_pages from radiobutton within w_print_options
integer x = 146
integer y = 524
integer width = 315
integer height = 92
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "Pá&ginas:"
end type

event clicked;wf_page_range(this)
end event

type rb_current_page from radiobutton within w_print_options
integer x = 146
integer y = 448
integer width = 462
integer height = 92
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "&Página Actual"
end type

event clicked;wf_page_range(this)
end event

type rb_all from radiobutton within w_print_options
integer x = 146
integer y = 372
integer width = 242
integer height = 92
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "&Todo"
boolean checked = true
end type

event clicked;wf_page_range(this)
end event

type em_copies from editmask within w_print_options
integer x = 306
integer y = 160
integer width = 247
integer height = 88
integer taborder = 20
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "1"
borderstyle borderstyle = stylelowered!
string mask = "#####"
end type

type st_2 from statictext within w_print_options
integer x = 73
integer y = 168
integer width = 320
integer height = 68
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "Copias:"
boolean focusrectangle = false
end type

type sle_printer from singlelineedit within w_print_options
integer x = 384
integer y = 48
integer width = 864
integer height = 100
integer taborder = 10
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
boolean enabled = false
boolean border = false
boolean autohscroll = false
borderstyle borderstyle = stylelowered!
end type

type st_1 from statictext within w_print_options
integer x = 73
integer y = 56
integer width = 320
integer height = 68
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "Impresora:"
boolean focusrectangle = false
end type

type gb_1 from groupbox within w_print_options
integer x = 69
integer y = 260
integer width = 1326
integer height = 608
integer taborder = 30
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "Rango de Página"
end type

type cbx_print_to_file from checkbox within w_print_options
integer x = 1426
integer y = 628
integer width = 626
integer height = 92
integer textsize = -11
integer weight = 400
fontcharset fontcharset = ansi!
fontpitch fontpitch = variable!
fontfamily fontfamily = swiss!
string facename = "Calibri"
long textcolor = 33554432
long backcolor = 16777215
string text = "Imprimir a &Archivo"
end type

