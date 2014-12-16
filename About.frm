VERSION 5.00
Begin VB.Form About 
   BackColor       =   &H00000000&
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "[e_render Generator] :: [Version 1.0] - [By Xylitol]"
   ClientHeight    =   6540
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   9285
   Icon            =   "About.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6540
   ScaleWidth      =   9285
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer3 
      Enabled         =   0   'False
      Interval        =   10
      Left            =   1080
      Top             =   120
   End
   Begin VB.Timer Timer2 
      Interval        =   10
      Left            =   600
      Top             =   120
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Cool"
      Height          =   375
      Left            =   7320
      TabIndex        =   1
      Top             =   5280
      Width           =   855
   End
   Begin VB.Timer Timer1 
      Left            =   120
      Top             =   120
   End
   Begin VB.PictureBox Picture1 
      BackColor       =   &H00000000&
      Height          =   3855
      Left            =   960
      ScaleHeight     =   3795
      ScaleWidth      =   7155
      TabIndex        =   0
      Top             =   1320
      Width           =   7215
      Begin VB.Image Image1 
         Height          =   49080
         Left            =   0
         Picture         =   "About.frx":E912
         Top             =   0
         Width           =   7170
      End
   End
End
Attribute VB_Name = "About"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Sub CopyMem Lib "kernel32" Alias "RtlMoveMemory" (pDst As Any, pSrc As Any, ByVal ByteLen As Long)
    
     Dim X(100), Y(100), Z(100) As Integer
     Dim tmpX(100), tmpY(100), tmpZ(100) As Integer
     Dim K As Integer
     Dim Zoom As Integer
     Dim Speed As Integer
    
    
Private Sub Command1_Click()
Timer1.Enabled = False
Timer2.Enabled = False
Timer3.Enabled = False
uFMOD_PlaySong 0, 0, 0
Unload Me
End Sub

     Private Sub Form_Activate()
     Image1.Top = 0
     Timer1.Enabled = True
Timer2.Enabled = True
Timer3.Enabled = False
     Speed = -1
     K = 2038
     Zoom = 256
     Timer1.Interval = 1
    
    
    For i = 0 To 100
     X(i) = Int(Rnd * 1024) - 512
     Y(i) = Int(Rnd * 1024) - 512
     Z(i) = Int(Rnd * 512) - 256
    Next i
     End Sub
    
    
     Private Sub Timer1_Timer()
    
    
     For i = 0 To 100
     Circle (tmpX(i), tmpY(i)), 5, BackColor
     Z(i) = Z(i) + Speed
     If Z(i) > 255 Then Z(i) = -255
     If Z(i) < -255 Then Z(i) = 255
     tmpZ(i) = Z(i) + Zoom
     tmpX(i) = (X(i) * K / tmpZ(i)) + (Form1.Width / 2)
     tmpY(i) = (Y(i) * K / tmpZ(i)) + (Form1.Height / 2)
     Radius = 1
     StarColor = 256 - Z(i)
     Circle (tmpX(i), tmpY(i)), 5, RGB(StarColor, StarColor, StarColor)
     Next i
     End Sub

' Returns the track's title
Function Title() As String
        Title = Space$(20)
        CopyMem ByVal Title, ByVal uFMOD_GetTitle, 20
        If Len(Trim$(Title)) = 0 Then Title = "{anonymous track}"
End Function


Private Sub Form_Load()
        If uFMOD_PlaySong(1, 0, XM_RESOURCE) <> 0 Then
        End If
End Sub

Private Sub Timer2_Timer()
If Image1.Top = -45120 Then
Timer2.Enabled = False
Timer3.Enabled = True
Else
Image1.Top = Image1.Top - 10
End If
End Sub

Private Sub Timer3_Timer()
If Image1.Top = 0 Then
Timer3.Enabled = False
Timer2.Enabled = True
Else
Image1.Top = Image1.Top + 10
End If
End Sub
