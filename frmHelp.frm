VERSION 5.00
Begin VB.Form frmHelp 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   " Tetris Help"
   ClientHeight    =   3315
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4560
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3315
   ScaleWidth      =   4560
   ShowInTaskbar   =   0   'False
   StartUpPosition =   1  'CenterOwner
   Begin VB.Frame Frame1 
      Caption         =   "Game Keys"
      Height          =   2655
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   4335
      Begin VB.Label Label3 
         Caption         =   "Label3"
         Height          =   2055
         Left            =   1680
         TabIndex        =   4
         Top             =   480
         Width           =   2295
      End
      Begin VB.Label Label2 
         Caption         =   "Label2"
         Height          =   2055
         Left            =   360
         TabIndex        =   3
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label1 
         Height          =   255
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   3975
      End
   End
   Begin VB.CommandButton Command1 
      Cancel          =   -1  'True
      Caption         =   "&Close"
      Default         =   -1  'True
      Height          =   375
      Left            =   3240
      TabIndex        =   0
      Top             =   2880
      Width           =   1215
   End
End
Attribute VB_Name = "frmHelp"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Form_Load()
Me.Label2.Caption = "Left" & vbCrLf & "Right" & vbCrLf & "Fast Down" & vbCrLf & "Turn block" & vbCrLf & vbCrLf & "Pause" & vbCrLf & "Continue" & vbCrLf & "New/Stop Game" & vbCrLf & vbCrLf & "Highscore"
Me.Label3.Caption = "Arrow Left" & vbCrLf & "Arrow Right" & vbCrLf & "Arrow Down" & vbCrLf & "Arrow Up or CTRL" & vbCrLf & vbCrLf & "F4 or ESC" & vbCrLf & "F4" & vbCrLf & "F2" & vbCrLf & vbCrLf & "F3"
End Sub

