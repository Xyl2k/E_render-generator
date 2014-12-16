VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "[e_render Generator] :: [Version 1.0] - [By Xylitol]"
   ClientHeight    =   7635
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   9405
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   7635
   ScaleWidth      =   9405
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton HIDEz 
      Caption         =   "HIDE"
      Height          =   300
      Left            =   5160
      TabIndex        =   50
      Top             =   7200
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.TextBox Examples 
      Height          =   6615
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   49
      Text            =   "Form1.frx":E912
      Top             =   480
      Visible         =   0   'False
      Width           =   9135
   End
   Begin VB.CommandButton exa 
      Caption         =   "Examples"
      Height          =   300
      Left            =   5160
      TabIndex        =   48
      Top             =   7200
      Width           =   1215
   End
   Begin VB.Timer Timer1 
      Interval        =   3000
      Left            =   6720
      Top             =   120
   End
   Begin VB.CommandButton Render 
      Caption         =   "About"
      Height          =   300
      Left            =   6600
      TabIndex        =   47
      Top             =   7200
      Width           =   1215
   End
   Begin VB.CommandButton Close 
      Caption         =   "Close"
      Height          =   300
      Left            =   8040
      TabIndex        =   46
      Top             =   7200
      Width           =   1215
   End
   Begin VB.CommandButton Copy 
      Caption         =   "Copy"
      Height          =   300
      Left            =   3720
      TabIndex        =   42
      Top             =   7200
      Width           =   1215
   End
   Begin VB.Frame Effects 
      Caption         =   "Effects"
      Height          =   6495
      Left            =   6240
      TabIndex        =   20
      Top             =   600
      Width           =   3015
      Begin VB.TextBox fxbox 
         Height          =   285
         Left            =   1680
         TabIndex        =   44
         Text            =   "0"
         Top             =   240
         Visible         =   0   'False
         Width           =   855
      End
      Begin VB.OptionButton fx 
         Caption         =   "Distort"
         Height          =   195
         Index           =   15
         Left            =   120
         TabIndex        =   41
         Top             =   4320
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Hologram"
         Height          =   195
         Index           =   16
         Left            =   120
         TabIndex        =   40
         Top             =   4560
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Dead Player (not recommended)"
         Height          =   195
         Index           =   17
         Left            =   120
         TabIndex        =   39
         Top             =   4800
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Explode (sprites)"
         Height          =   195
         Index           =   18
         Left            =   120
         TabIndex        =   38
         Top             =   5040
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Strobe Fast"
         Height          =   195
         Index           =   10
         Left            =   120
         TabIndex        =   37
         Top             =   3120
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Strobe Faster"
         Height          =   195
         Index           =   11
         Left            =   120
         TabIndex        =   36
         Top             =   3360
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Flicker Slow"
         Height          =   195
         Index           =   12
         Left            =   120
         TabIndex        =   35
         Top             =   3600
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Flicker Fast"
         Height          =   195
         Index           =   13
         Left            =   120
         TabIndex        =   34
         Top             =   3840
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Glow Shell"
         Height          =   195
         Index           =   19
         Left            =   120
         TabIndex        =   33
         Top             =   5280
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "No Dissipation"
         Height          =   195
         Index           =   14
         Left            =   120
         TabIndex        =   32
         Top             =   4080
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Fade Slow"
         Height          =   195
         Index           =   5
         Left            =   120
         TabIndex        =   31
         Top             =   1920
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Fade Fast"
         Height          =   195
         Index           =   6
         Left            =   120
         TabIndex        =   30
         Top             =   2160
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Solid Slow"
         Height          =   195
         Index           =   7
         Left            =   120
         TabIndex        =   29
         Top             =   2400
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Solid Fast"
         Height          =   195
         Index           =   8
         Left            =   120
         TabIndex        =   28
         Top             =   2640
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "None"
         Height          =   195
         Index           =   0
         Left            =   120
         TabIndex        =   27
         Top             =   720
         Value           =   -1  'True
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Pulse Slow"
         Height          =   195
         Index           =   1
         Left            =   120
         TabIndex        =   26
         Top             =   960
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Pulse Fast"
         Height          =   195
         Index           =   2
         Left            =   120
         TabIndex        =   25
         Top             =   1200
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Pulse Slow Wide"
         Height          =   195
         Index           =   3
         Left            =   120
         TabIndex        =   24
         Top             =   1440
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Strobe Slow"
         Height          =   195
         Index           =   9
         Left            =   120
         TabIndex        =   23
         Top             =   2880
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Pulse Fast Wide"
         Height          =   195
         Index           =   4
         Left            =   120
         TabIndex        =   22
         Top             =   1680
         Width           =   2775
      End
      Begin VB.OptionButton fx 
         Caption         =   "Clamp Min Scale (sprites)"
         Height          =   195
         Index           =   20
         Left            =   120
         TabIndex        =   21
         Top             =   5520
         Width           =   2775
      End
   End
   Begin VB.Frame Frame4 
      Caption         =   "Amount"
      Height          =   975
      Left            =   120
      TabIndex        =   17
      Top             =   3360
      Width           =   6015
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   3
         Left            =   5160
         TabIndex        =   19
         Text            =   "0"
         Top             =   360
         Width           =   615
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   375
         Index           =   3
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   4935
         _ExtentX        =   8705
         _ExtentY        =   661
         _Version        =   393216
         Max             =   255
      End
   End
   Begin VB.TextBox generated 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   960
      Locked          =   -1  'True
      TabIndex        =   15
      Top             =   7200
      Width           =   2535
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   0
      Left            =   3120
      TabIndex        =   14
      Text            =   "0"
      Top             =   8280
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   1
      Left            =   3840
      TabIndex        =   13
      Text            =   "0"
      Top             =   8280
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Index           =   2
      Left            =   4560
      TabIndex        =   12
      Text            =   "0"
      Top             =   8280
      Visible         =   0   'False
      Width           =   615
   End
   Begin VB.Frame Frame3 
      Caption         =   "RGB"
      Height          =   2655
      Left            =   120
      TabIndex        =   2
      Top             =   4440
      Width           =   6015
      Begin MSComctlLib.Slider Slider1 
         Height          =   375
         Index           =   0
         Left            =   360
         TabIndex        =   9
         Top             =   1080
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   661
         _Version        =   393216
         Max             =   255
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   375
         Index           =   1
         Left            =   360
         TabIndex        =   10
         Top             =   1560
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   661
         _Version        =   393216
         Max             =   255
      End
      Begin MSComctlLib.Slider Slider1 
         Height          =   375
         Index           =   2
         Left            =   360
         TabIndex        =   11
         Top             =   2040
         Width           =   5295
         _ExtentX        =   9340
         _ExtentY        =   661
         _Version        =   393216
         Max             =   255
      End
      Begin VB.Shape Shape1 
         BackColor       =   &H80000006&
         BackStyle       =   1  'Opaque
         BorderStyle     =   0  'Transparent
         Height          =   615
         Left            =   360
         Top             =   360
         Width           =   5295
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Render Mode"
      Height          =   2655
      Left            =   120
      TabIndex        =   1
      Top             =   600
      Width           =   6015
      Begin VB.TextBox modetxt 
         Height          =   285
         Left            =   4200
         TabIndex        =   45
         Text            =   "0"
         Top             =   360
         Visible         =   0   'False
         Width           =   495
      End
      Begin VB.OptionButton mode 
         Caption         =   " TransAdd (Gives the entity a brighter transparent effect)"
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   8
         Top             =   2280
         Width           =   5295
      End
      Begin VB.OptionButton mode 
         Caption         =   "TransAlpha (makes blue parts of the texture on the entity transparent)"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   7
         Top             =   1920
         Width           =   5295
      End
      Begin VB.OptionButton mode 
         Caption         =   "Glow (makes a non-brush entity glow the color in R g b)"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   6
         Top             =   1560
         Width           =   5175
      End
      Begin VB.OptionButton mode 
         Caption         =   "TransTexture (amt sets the transparent on the entity 0 is invisible 255 is fully opaque and any number in between can be used)"
         Height          =   375
         Index           =   2
         Left            =   240
         TabIndex        =   5
         Top             =   1080
         Width           =   5655
      End
      Begin VB.OptionButton mode 
         Caption         =   "TransColor (makes an entity the color specified in r g b)"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   4
         Top             =   720
         Width           =   4455
      End
      Begin VB.OptionButton mode 
         Caption         =   "Normal"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   360
         Value           =   -1  'True
         Width           =   2415
      End
   End
   Begin VB.Label Label3 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Generated:"
      Height          =   195
      Left            =   120
      TabIndex        =   43
      Top             =   7200
      Width           =   795
   End
   Begin VB.Label Label2 
      AutoSize        =   -1  'True
      Caption         =   "Generated:"
      Height          =   195
      Left            =   4680
      TabIndex        =   16
      Top             =   6240
      Width           =   795
   End
   Begin VB.Label hint 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Usage: e_render <mode> [amt] [fx] [r] [g] [b]"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   315
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   9165
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim Etape As Integer
'#################################################################
'             .: We are gamers, We are coders :.
' Enjoy my ugly code, coded with my feets
'#################################################################

Private Sub Close_Click()
End
End Sub



Private Sub Copy_Click()
Clipboard.Clear
Clipboard.SetText (generated)
End Sub

Private Sub exa_Click()
Examples.Visible = True
exa.Visible = False
HIDEz.Visible = True
End Sub

Private Sub hidez_Click()
Examples.Visible = False
HIDEz.Visible = False
exa.Visible = True
End Sub

Private Sub Form_Load()
Etape = 1
End Sub

Private Sub fx_Click(Index As Integer)
'Enjoy the ugly code !
If fx(0).Value = True Then
fxbox.Text = "0"
Else
If fx(1).Value = True Then
fxbox.Text = "1"
Else
If fx(2).Value = True Then
fxbox.Text = "2"
Else
If fx(3).Value = True Then
fxbox.Text = "3"
Else
If fx(4).Value = True Then
fxbox.Text = "4"
Else
If fx(5).Value = True Then
fxbox.Text = "5"
Else
If fx(6).Value = True Then
fxbox.Text = "6"
Else
If fx(7).Value = True Then
fxbox.Text = "7"
Else
If fx(8).Value = True Then
fxbox.Text = "8"
Else
If fx(9).Value = True Then
fxbox.Text = "9"
Else
If fx(10).Value = True Then
fxbox.Text = "10"
Else
If fx(11).Value = True Then
fxbox.Text = "11"
Else
If fx(12).Value = True Then
fxbox.Text = "12"
Else
If fx(13).Value = True Then
fxbox.Text = "13"
Else
If fx(14).Value = True Then
fxbox.Text = "14"
Else
If fx(15).Value = True Then
fxbox.Text = "15"
Else
If fx(16).Value = True Then
fxbox.Text = "16"
Else
If fx(17).Value = True Then
fxbox.Text = "17"
Else
If fx(18).Value = True Then
fxbox.Text = "18"
Else
If fx(19).Value = True Then
fxbox.Text = "19"
Else
If fx(20).Value = True Then
fxbox.Text = "20"
Else
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
End If
'omg
generated.Text = "e_render" & " " & modetxt.Text & " " & Text1(3).Text & " " & fxbox.Text & " " & Text1(0).Text & " " & Text1(1).Text & " " & Text1(2).Text
End Sub






Private Sub mode_Click(Index As Integer)
If mode(0).Value = True Then
modetxt.Text = "0"
Else
If mode(1).Value = True Then
modetxt.Text = "1"
Else
If mode(2).Value = True Then
modetxt.Text = "2"
Else
If mode(3).Value = True Then
modetxt.Text = "3"
Else
If mode(4).Value = True Then
modetxt.Text = "4"
Else
If mode(5).Value = True Then
modetxt.Text = "5"
Else
End If
End If
End If
End If
End If
End If
generated.Text = "e_render" & " " & modetxt.Text & " " & Text1(3).Text & " " & fxbox.Text & " " & Text1(0).Text & " " & Text1(1).Text & " " & Text1(2).Text
End Sub

Private Sub Render_Click()
About.Show
End Sub

Private Sub Slider1_Scroll(Index As Integer)
Shape1.BackColor = RGB(Slider1(0), Slider1(1), Slider1(2))
Text1(0) = Slider1(0)
Text1(1) = Slider1(1)
Text1(2) = Slider1(2)
Text1(3) = Slider1(3)
generated.Text = "e_render" & " " & modetxt.Text & " " & Text1(3).Text & " " & fxbox.Text & " " & Text1(0).Text & " " & Text1(1).Text & " " & Text1(2).Text
End Sub

Private Sub Text1_Change(Index As Integer)
Shape1.BackColor = RGB(Text1(0), Text1(1), Text1(2))
Slider1(0) = Text1(0)
Slider1(1) = Text1(1)
Slider1(2) = Text1(2)
Slider1(3) = Text1(3)
End Sub

Private Sub Timer1_Timer()
    Select Case Etape
      Case 1
         hint.Caption = "Usage: e_render <mode> [amt] [fx] [r] [g] [b]"
         Etape = 2
      Case 2
         hint.Caption = "WARNING: Using mode 3 on something other than a sprite, will cause a very annoying console spam"
         Etape = 3
      Case 3
         hint.Caption = "In most situations Amount will edit the transparency"
         Etape = 4
      Case 4
         hint.Caption = "RGB = Red Green Blue | AMT = Amount | FX = Effects"
         Etape = 1
   End Select

End Sub

