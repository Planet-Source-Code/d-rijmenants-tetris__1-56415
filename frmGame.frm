VERSION 5.00
Begin VB.Form frmGame 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Tetris"
   ClientHeight    =   5775
   ClientLeft      =   5295
   ClientTop       =   1860
   ClientWidth     =   3225
   Icon            =   "frmGame.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   385
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   215
   StartUpPosition =   2  'CenterScreen
   Begin VB.FileListBox flbMusicList 
      Height          =   1260
      Left            =   2400
      Pattern         =   "*.mid"
      TabIndex        =   14
      Top             =   1680
      Visible         =   0   'False
      Width           =   1215
   End
   Begin VB.PictureBox picPreviewBlocks 
      BackColor       =   &H00000000&
      Height          =   1455
      Left            =   2400
      ScaleHeight     =   1395
      ScaleWidth      =   675
      TabIndex        =   7
      Top             =   120
      Width           =   735
   End
   Begin VB.PictureBox picTetrisField 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      Height          =   5535
      Left            =   120
      ScaleHeight     =   365
      ScaleMode       =   3  'Pixel
      ScaleWidth      =   141
      TabIndex        =   0
      Top             =   120
      Width           =   2175
      Begin VB.TextBox txtEnterName 
         Alignment       =   2  'Center
         Appearance      =   0  'Flat
         BackColor       =   &H00000000&
         BorderStyle     =   0  'None
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   405
         Left            =   0
         TabIndex        =   10
         Top             =   2760
         Visible         =   0   'False
         Width           =   2100
      End
      Begin VB.Label lblPressF4 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "PRESS F4 TO CONTINUE"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   615
         Left            =   0
         TabIndex        =   13
         Top             =   2280
         Visible         =   0   'False
         Width           =   2100
      End
      Begin VB.Label lblPause 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BackStyle       =   0  'Transparent
         Caption         =   "PAUSED"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   615
         Left            =   0
         TabIndex        =   12
         Top             =   1800
         Visible         =   0   'False
         Width           =   2100
      End
      Begin VB.Label lblEnterName 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         Caption         =   "Enter Your Name"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   375
         Left            =   0
         TabIndex        =   11
         Top             =   2520
         Visible         =   0   'False
         Width           =   2100
      End
      Begin VB.Label lblNewGame 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         Caption         =   "PRESS F2 FOR NEW GAME"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   9.75
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   615
         Left            =   0
         TabIndex        =   9
         Top             =   2640
         Width           =   2100
      End
      Begin VB.Label lblGameOver 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         Caption         =   " GAME OVER"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   24
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H000000FF&
         Height          =   1215
         Left            =   0
         TabIndex        =   8
         Top             =   1440
         Visible         =   0   'False
         Width           =   2100
      End
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      Caption         =   "Level"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   6
      Top             =   4920
      Width           =   975
   End
   Begin VB.Label Label5 
      Alignment       =   2  'Center
      Caption         =   "Lines"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   5
      Top             =   4080
      Width           =   975
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      Caption         =   "Score"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   4
      Top             =   3240
      Width           =   975
   End
   Begin VB.Label LabelLevel 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   3
      Top             =   5280
      Width           =   975
   End
   Begin VB.Label LabelLines 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   2
      Top             =   4440
      Width           =   975
   End
   Begin VB.Label LabelScore 
      Alignment       =   2  'Center
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   2280
      TabIndex        =   1
      Top             =   3600
      Width           =   975
   End
   Begin VB.Menu Game 
      Caption         =   "&Game"
      Begin VB.Menu mnuStart 
         Caption         =   "&Start"
         Shortcut        =   {F2}
      End
      Begin VB.Menu mnuPause 
         Caption         =   "&Pause"
         Enabled         =   0   'False
         Shortcut        =   {F4}
      End
      Begin VB.Menu ln1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuHighScores 
         Caption         =   "&High Scores"
         Shortcut        =   {F3}
      End
      Begin VB.Menu mnuHelp 
         Caption         =   "&Help"
         Shortcut        =   {F1}
      End
      Begin VB.Menu ln2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuExit 
         Caption         =   "&Exit"
      End
   End
   Begin VB.Menu SoundM 
      Caption         =   "&Sound"
      Begin VB.Menu mnuMusic 
         Caption         =   "&Music"
         Checked         =   -1  'True
         Shortcut        =   ^M
      End
      Begin VB.Menu mnuEffects 
         Caption         =   "&Sound Effects"
         Checked         =   -1  'True
         Shortcut        =   ^S
      End
   End
End
Attribute VB_Name = "frmGame"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'Tetris
'Option Explicit

Private Declare Function BitBlt Lib "gdi32" (ByVal hDestDC As Long, ByVal X As Long, ByVal Y As Long, ByVal nWidth As Long, ByVal nHeight As Long, ByVal hSrcDC As Long, ByVal xSrc As Long, ByVal ySrc As Long, ByVal dwRop As Long) As Long
Private Declare Function SelectObject Lib "gdi32" (ByVal hdc As Long, ByVal hObject As Long) As Long
Private Declare Function CreateCompatibleDC Lib "gdi32" (ByVal hdc As Long) As Long
Private Declare Function DeleteDC Lib "gdi32" (ByVal hdc As Long) As Long
Private Declare Function LoadImage Lib "user32" Alias "LoadImageA" (ByVal hInst As Long, ByVal lpsz As String, ByVal un1 As Long, ByVal n1 As Long, ByVal n2 As Long, ByVal un2 As Long) As Long
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Private Declare Function GetTickCount Lib "kernel32" () As Long
Private Declare Function GetShortPathName Lib "kernel32" Alias "GetShortPathNameA" (ByVal lpszLongPath As String, ByVal lpszShortPath As String, ByVal lBuffer As Long) As Long

'Constants for the GenerateDC function
'**LoadImage Constants**
Const IMAGE_BITMAP As Long = 0
Const LR_LOADFROMFILE As Long = &H10
Const LR_CREATEDIBSECTION As Long = &H2000
Const LR_DEFAULTSIZE As Long = &H40
'****************************************


Dim LastTick As Long
Dim CurrentTick As Long
Dim TickDifference As Long

Dim bLoopRunning As Boolean

Dim Blocks As Long
Dim G1(40, 50) As Integer
Dim ShapeX(22, 4) As Integer, ShapeY(22, 4) As Integer
Dim Sx(4) As Integer, Sy(4) As Integer
Dim OSx(4) As Integer, OSy(4) As Integer
Dim Fulline(41) As Integer, EmptyLine(41) As Integer
Dim Flash(21, 19) As Integer, Over(22)
Dim NumOfBlks(22) As Integer, FL As Integer
Dim NextShape(4) As Integer, Death As Integer
Dim LS(5) As Integer, Nos As Integer
Dim Lvl As Integer, Speed As Integer
Dim Score As Long, TotLine As Integer
Dim Gx As Integer, Gy As Integer, SN As Integer
Dim OGx As Integer, OGy As Integer
Dim GetX(5) As Integer, GetY(5) As Integer
Dim F As Integer, Collide As Integer
Dim GameStarted As Boolean, Cntr As Integer
Dim Linger As Integer
Dim FF As Integer, EnteringName As Boolean
Dim BlocksPreview As Integer
Dim NewPos As Integer, ClickedStop As Boolean
Dim Paused As Boolean, pSN As Integer


'IN: FileName: The file name of the graphics
'OUT: The Generated DC
Public Function GenerateDC(FileName As String) As Long
Dim DC As Long
Dim hBitmap As Long
'Create a Device Context, compatible with the screen
DC = CreateCompatibleDC(0)
If DC < 1 Then
    GenerateDC = 0
    Exit Function
End If
'Load the image....BIG NOTE: This function is not supported under NT, there you can not
'specify the LR_LOADFROMFILE flag
hBitmap = LoadImage(0, FileName, IMAGE_BITMAP, 0, 0, LR_DEFAULTSIZE Or LR_LOADFROMFILE Or LR_CREATEDIBSECTION)
If hBitmap = 0 Then 'Failure in loading bitmap
    DeleteDC DC
    GenerateDC = 0
    Exit Function
End If
'Throw the Bitmap into the Device Context
SelectObject DC, hBitmap
'Return the device context
GenerateDC = DC
'Delte the bitmap handle object
DeleteObject hBitmap
End Function

'Deletes a generated DC
Private Function DeleteGeneratedDC(DC As Long) As Long
If DC > 0 Then
    DeleteGeneratedDC = DeleteDC(DC)
    Else
    DeleteGeneratedDC = 0
    End If
End Function

Private Sub mnuEffects_Click()
If EffectsOn Then
    EffectsOn = False
    Me.mnuEffects.Checked = False
Else
    EffectsOn = True
    Me.mnuEffects.Checked = True
End If
End Sub

Private Sub mnuExit_Click()
Unload Me
End Sub

Private Sub Form_Activate()
Me.picTetrisField.SetFocus
End Sub

Private Sub Form_Click()
Me.picTetrisField.SetFocus
End Sub

Private Sub Form_Load()
Dim tmp As String
Blocks = GenerateDC(App.Path & "\Tetris.bmp")
'get all mid music files
Me.flbMusicList.Path = App.Path
CurrSong = -1
Call GetNextSong
On Error GoTo SkipHigh
FF = FreeFile
Open App.Path & "\Scores.dat" For Input As #FF
a = -1
Do While Not EOF(FF)
a = a + 1
Input #FF, Scores(a, 0)
Input #FF, Scores(a, 1)
Input #FF, Scores(a, 2)
Loop
Close #FF
SkipHigh:
For a = 0 To 9
frmHighScores.Label1(a) = Scores(a, 0)
frmHighScores.Label2(a) = Scores(a, 1)
frmHighScores.Label3(a) = Scores(a, 2)
Next a
MusicOn = True
EffectsOn = True
End Sub


Private Sub Form_Unload(Cancel As Integer)
StopMIDI song
DeleteGeneratedDC Blocks
Unload Me
Set frmMemoryDC = Nothing
End
End Sub


'********** DRAW BLOCK **********
Private Sub DrawBlock(X, Y, Colr, Box, Pix)
If Pix = 0 Then Pix = 14
If Colr > 8 Then Colr = 8
If Box = 1 Then
    BitBlt Me.picTetrisField.hdc, X * Pix, Y * Pix, 14, 14, Blocks, Colr * 14, 0, vbSrcCopy
End If
If Box = 2 Then
    BitBlt Me.picPreviewBlocks.hdc, X * 7, Y * 7, 7, 7, Blocks, Colr * 7, 14, vbSrcCopy
End If
End Sub


'******************** Tetris ********************
Private Sub StartGame()
If GameStarted Then
    Death = 2
    ClickedStop = True
    Exit Sub
End If

Playwav 6 ' start sound
Me.mnuStart.Caption = "Stop"
Me.mnuPause.Enabled = True
Me.mnuHighScores.Enabled = False
Me.mnuHelp.Enabled = False
Erase G1, Fulline, EmptyLine, Flash

GameStarted = True
ClickedStop = False
Paused = False


Me.lblGameOver.Visible = False
Me.lblNewGame.Visible = False
Me.LabelScore.Caption = 0
Me.LabelLines.Caption = 0
Me.LabelLevel.Caption = 0

CurrSong = -1
Call GetNextSong
PlayMIDI song

Randomize Timer: Nos = 7: Lvl = 0
Speed = 0: Score = 0
TotLine = 0: Lvl = 0
Death = 0
TickDifference = 25
BlocksPreview = 4
Me.picTetrisField.Cls

LS(1) = 40
LS(2) = 100
LS(3) = 300
LS(4) = 1200
LS(5) = 2400
Over(1) = 3
Over(2) = 2
Over(3) = 2
Over(4) = 2
Over(5) = 2
Over(6) = 3
Over(7) = 2
For a = 8 To 22
Over(a) = 3
Next a

For a = 1 To 7: NumOfBlks(a) = 3: Next a
For a = 7 To 22: NumOfBlks(a) = 4: Next a
For a = 0 To 36
G1(9, a) = 16: G1(20, a) = 16
Next a
For a = 10 To 19
G1(a, 36) = 16
Next a
'***** ENTERING DATA *****
'********** Data for 7 4-block shapes **********
FourBlockShapes = ".0/010/001111001/1/1/010/01011/0/101/01001"
c = 0
For a = 1 To 7
For b = 1 To 3
c = c + 1
ShapeX(a, b) = Asc(Mid$(FourBlockShapes, c, 1)) - 48
c = c + 1
ShapeY(a, b) = Asc(Mid$(FourBlockShapes, c, 1)) - 48
Next b: Next a
'********** Data for 15 5-block shapes **********
FiveBlockShapes = ".0/010201101/0.0/1011020/10110111101/0/101//0/1//00/1020.0/00/10///010201/10/0.00//01//1/1/00/1//01/10011001/0//0.0/1020"
c = 0
For a = 8 To 22
For b = 1 To 4
c = c + 1
ShapeX(a, b) = Asc(Mid$(FiveBlockShapes, c, 1)) - 48
c = c + 1
ShapeY(a, b) = Asc(Mid$(FiveBlockShapes, c, 1)) - 48
Next b: Next a

'********** PICK RANDOM PIECES **********
For a = 1 To 4
NextShape(a) = Int(Rnd * Nos) + 1
Next a

Call PickRandom

Gx = 12 + Over(SN): Gy = 10

DrawPiece

picTetrisField.SetFocus

bLoopRunning = True
RunGameLoop
Dead
If Not EnteringName Then
    Me.mnuStart.Enabled = True
    Me.mnuHighScores.Enabled = True
    Me.mnuHelp.Enabled = True
End If

End Sub



'********** MAIN LOOP **********
Private Sub RunGameLoop()

Do

    CurrentTick = GetTickCount()
    
    If Paused Then GoTo Blah

    If CurrentTick - LastTick > TickDifference Then
        
        If Linger > 0 Then
            Linger = Linger + 1
            If Linger > 5 Then Linger = 0
        Else
            Falling
        End If
        
        LastTick = GetTickCount()

    Else

        'Don't do anything

    End If

Blah:

    DoEvents
    
    If Death = 2 Then bLoopRunning = False
                
Loop While bLoopRunning

End Sub


'********** PICK RANDOM PIECE **********
Sub PickRandom()
SN = NextShape(4)
For a = 3 To 1 Step -1
NextShape(a + 1) = NextShape(a)
Next a
NextShape(1) = Int(Rnd * Nos) + 1
For a = 1 To NumOfBlks(SN)
Sx(a) = ShapeX(SN, a)
Sy(a) = ShapeY(SN, a)
Next a
Me.picPreviewBlocks.Cls
For a = (4 - (BlocksPreview - 1)) To 4: For b = 0 To 4
Ns = NextShape(a)
PX = ShapeX(Ns, b): PY = ShapeY(Ns, b)
DrawBlock Over(Ns) + PX, (4 - a) * 3 + PY + 1, Ns, 2, 0
Next b: Next a
End Sub


'********** DRAW PIECE ON SCREEN **********
Sub DrawPiece()
For a = 0 To NumOfBlks(SN)
drawx = (Gx + Sx(a) - 10) * 14
drawy = (Gy + Sy(a) - 11) * 14 + F
GetX(a) = drawx
GetY(a) = drawy
DrawBlock drawx, drawy, SN, 1, 1
Next a
Me.picTetrisField.Refresh
If Death = 1 Then Death = 2
End Sub


Private Sub mnuHighScores_Click()
For a = 0 To 9
frmHighScores.Label1(a) = Scores(a, 0)
frmHighScores.Label2(a) = Scores(a, 1)
frmHighScores.Label3(a) = Scores(a, 2)
Next a
frmHighScores.Show
End Sub

Private Sub mnuHelp_Click()
frmHelp.Show vbModal
End Sub

Private Sub mnuMusic_Click()
If MusicOn Then
    MusicOn = False
    Me.mnuMusic.Checked = False
    StopMIDI song
Else
    MusicOn = True
    Me.mnuMusic.Checked = True
    If GameStarted Then PlayMIDI song
End If
End Sub


Private Sub mnuPause_Click()
If ClickedStop = True Then Exit Sub
If Not Paused Then
    Me.mnuPause.Caption = "Unpause"
    Me.lblPause.Visible = True
    Me.lblPressF4.Visible = True
    Me.picTetrisField.Cls
    Me.picTetrisField.Refresh
    StopMIDI song
    Playwav 4
    Paused = True
Else
    Me.mnuPause.Caption = "Pause"
    Me.lblPause.Visible = False
    Me.lblPressF4.Visible = False
    DrawAllBlocks
    PlayMIDI song
    Playwav 6
    Paused = False
End If
End Sub

'MOVING THE PIECE
Private Sub picTetrisField_KeyDown(KeyCode As Integer, Shift As Integer)
If Not GameStarted And KeyCode <> vbKeyEscape Then Exit Sub
If Paused Then Exit Sub

OGx = Gx: OGy = Gy

Select Case KeyCode

Case vbKeyLeft
    Gx = Gx - 1
    Call Checking
    Call CanMove
    
Case vbKeyRight
    Gx = Gx + 1
    Call Checking
    Call CanMove
    
Case vbKeyUp, vbKeyControl
    Call RotateCW
    Call CanMoveRot
    
Case vbKeyInsert
    Call RotateCCW
    Call CanMoveRot

Case vbKeyDown
    If Linger = 0 Then
        Gy = Gy + 1
        Call Checking
        Call CanMoveDown
    End If
    
Case vbKeyEscape
    Call mnuPause_Click

End Select

End Sub

'FALLING
Sub Falling()
OGx = Gx: OGy = Gy
If F <> 14 Then Cntr = 0
F = F + 1
If F > 14 Then
    F = 1
    Gy = Gy + 1
    Call Checking
Else
    Call PutCommand
    DrawPiece
    Exit Sub
End If

If Collide = 1 Then
    F = 14
    Gy = OGy
    Cntr = Cntr + 1
Else
    F = 1
    Call PutCommand
    Call DrawPiece
    Exit Sub
End If

If Cntr = 12 Then
    Cntr = 0
    Call CanMoveDown
End If

End Sub

Sub Checking()
Collide = 0
For a = 0 To NumOfBlks(SN)
If G1(Gx + Sx(a), Gy + Sy(a)) <> 0 Then Collide = 1
If Collide = 0 And G1(Gx + Sx(a), (Gy - 1) + Sy(a)) <> 0 Then
    If F < 7 Then
        Collide = 1
    Else
        F = 14
    End If
End If
Next a
End Sub


'CAN MOVE?
Sub CanMove()
If Collide = 1 Then
    Gx = OGx
    Gy = OGy
    Exit Sub
End If
Call PutCommand
Call DrawPiece
End Sub


'CAN ROTATE?
Sub CanMoveRot()
If Collide = 0 Then
    Call PutCommand
    Call DrawPiece
Else
   'try to goto right
    Gx = Gx + 1
    Call Checking
    Call CanMove
    If Collide = 0 Then Exit Sub
    Gx = Gx + 2
    Call Checking
    Call CanMove
    If Collide = 0 Then Exit Sub
    'try to goto left
    Gx = Gx - 1
    Call Checking
    Call CanMove
    If Collide = 0 Then Exit Sub
    Gx = Gx - 2
    Call Checking
    Call CanMove
    If Collide = 0 Then Exit Sub
    'rotation impossible
    For a = 1 To NumOfBlks(SN)
    Sx(a) = OSx(a)
    Sy(a) = OSy(a)
    Next a
End If
End Sub


'PUT COMMAND FOR PIECES
Sub PutCommand()
For a = 0 To NumOfBlks(SN)
DrawBlock GetX(a), GetY(a), 0, 1, 1
Next a
End Sub


'ROTATE CLOCKWISE
Sub RotateCW()
For a = 1 To NumOfBlks(SN)
OSx(a) = Sx(a)
OSy(a) = Sy(a)
Sx(a) = -OSy(a)
Sy(a) = OSx(a)
Next a
If SN <> 6 Then
    Call Checking
    Exit Sub
End If

If Sx(1) = -1 And Sy(1) = 0 Then Gx = Gx + 1
If Sx(1) = 0 And Sy(1) = -1 Then Gy = Gy + 1
If Sx(1) = 1 And Sy(1) = 0 Then Gx = Gx - 1
If Sx(1) = 0 And Sy(1) = 1 Then Gy = Gy - 1
Call Checking

End Sub


'ROTATE COUNTERCLOCKWISE
Sub RotateCCW()
For a = 1 To NumOfBlks(SN)
OSx(a) = Sx(a)
OSy(a) = Sy(a)
Sx(a) = OSy(a)
Sy(a) = -OSx(a)
Next a
If SN <> 6 Then
    Call Checking
    Exit Sub
End If

If Sx(1) = -1 And Sy(1) = 0 Then Gy = Gy - 1
If Sx(1) = 0 And Sy(1) = -1 Then Gx = Gx + 1
If Sx(1) = 1 And Sy(1) = 0 Then Gy = Gy + 1
If Sx(1) = 0 And Sy(1) = 1 Then Gx = Gx - 1
Call Checking

End Sub

'CAN MOVE DOWN?
Sub CanMoveDown()
If Collide <> 1 Then
    Call CanMove
    Exit Sub
End If
Gx = OGx
Gy = OGy
If SN < 8 Then b = 3 Else b = 4
For a = 0 To b
G1(Gx + Sx(a), Gy + Sy(a)) = SN
Fulline(Gy + Sy(a)) = Fulline(Gy + Sy(a)) + 1
Next a
Call PutCommand
F = 14
Call DrawPiece
Call CheckLines
End Sub

Sub CheckLines()
For a = 10 To 35
If Fulline(a) = 10 Then
    Fulline(a) = 0
    EmptyLine(a) = 1
    FL = FL + 1
    Flash(FL, 0) = a
    TotLine = TotLine + 1
    For b = 10 To 19
    Flash(FL, b) = G1(b, a)
    If Flash(FL, b) > 8 Then Flash(FL, b) = 8
    G1(b, a) = 0
    Next b
End If
Next a

If FL > 0 Then
    If EffectsOn Then Playwav 2
    For rep = 1 To 5
    For addcol = 1 To 8
    For a = 1 To FL
    For b = 0 To 9
    drawx = b * 14
    drawy = (Flash(a, 0) - 10) * 14
    DrawBlock drawx, drawy, addcol, 1, 1
    Next b
    Next a
    q = GetTickCount()
    Do
    Loop While Abs(GetTickCount - q) < 1
    picTetrisField.Refresh
    Next addcol
    Next rep

    Score = Score + (Lvl + 1) * LS(FL)
    Me.LabelScore.Caption = Score
    Me.LabelLines.Caption = TotLine
    If TotLine >= (Lvl + 1) * 10 Then
        Lvl = Lvl + 1
        Me.LabelLevel.Caption = Lvl
        ' set game speed
        Select Case Lvl
        Case 1, 2
            TickDifference = TickDifference - 2
        Case 3, 4, 5, 6, 7, 8, 10, 12, 14, 16, 18, 20, 24, 28, 32, 34, 38, 43, 48, 53
            TickDifference = TickDifference - 1
        End Select
        If TickDifference < 2 Then TickDifference = 2
        ' higher level = less previews
        If Lvl = 10 Then BlocksPreview = 3
        If Lvl = 20 Then BlocksPreview = 2
        If Lvl = 30 Then BlocksPreview = 1
        ' get next song
        StopMIDI song
        Call GetNextSong
        PlayMIDI song
    End If
Else
    Call PickRandom
    Gx = 12 + Over(SN): Gy = 10
    Call DrawPiece
    Call CheckIfDead
    If EffectsOn Then Playwav 1
    Linger = 1
    Exit Sub
End If

MoveLinesDown
End Sub


'********** MOVING LINES DOWN **********
Sub MoveLinesDown()
For a = 10 To 35
If EmptyLine(a) = 1 Then
    EmptyLine(a) = 0
    For b = a To 10 Step -1
    For c = 10 To 19
    G1(c, b) = G1(c, b - 1)
    Fulline(b) = Fulline(b - 1)
    Next c
    Next b
    FL = FL - 1
End If
Next a

picTetrisField.Cls

Call DrawAllBlocks
Call PickRandom
Gx = 12 + Over(SN): Gy = 10
Call DrawPiece
Call CheckIfDead
If EffectsOn Then Playwav 1 'tick
Linger = 1
End Sub

Sub DrawAllBlocks()
For d = 35 To 10 Step -1
For e = 10 To 19
pSN = G1(e, d)
If G1(e, d) <> 0 Then
    drawx = (e - 10) * 14
    drawy = (d - 10) * 14
    DrawBlock drawx, drawy, pSN, 1, 1
End If
Next e
Next d
picTetrisField.Refresh
End Sub


Sub CheckIfDead()
For a = 0 To NumOfBlks(SN)
    If G1(Gx + Sx(a), Gy + Sy(a)) > 0 And Death = 0 Then Death = 1
    Next a
End Sub

Sub Dead()
Playwav 3
Me.mnuStart.Caption = "Start"
Me.mnuPause.Enabled = False
Me.lblPause.Visible = False
Me.lblPressF4.Visible = False
Me.lblGameOver.Visible = True
Me.lblNewGame.Visible = True
StopMIDI song
GameStarted = False
If Score > 0 And Not ClickedStop Then EnterName
End Sub

Private Sub picTetrisField_LostFocus()
If GameStarted = True Then Me.picTetrisField.SetFocus
End Sub

Private Sub mnuStart_Click()
Call StartGame
End Sub

Sub EnterName()
Me.mnuStart.Enabled = False
For a = 0 To 9
If Score > Val(Scores(a, 1)) Then
    NewPos = a
    For b = 8 To a Step -1
        Scores(b + 1, 0) = Scores(b, 0)
        Scores(b + 1, 1) = Scores(b, 1)
        Scores(b + 1, 2) = Scores(b, 2)
    Next b
    lblEnterName.Visible = True
    Me.txtEnterName.Text = ""
    Me.txtEnterName.Visible = True
    Me.txtEnterName.Enabled = True
    Me.txtEnterName.SetFocus
    EnteringName = True
    Exit For
End If
Next a
    
End Sub


Private Sub txtEnterName_KeyPress(KeyAscii As Integer)

If KeyAscii = 13 Then
    KeyAscii = 0
    lblEnterName.Visible = False
    Me.txtEnterName.Visible = False
    Me.txtEnterName.Enabled = False
    If Me.txtEnterName.Text = "" Then Me.txtEnterName.Text = "Unknown"
    Scores(NewPos, 0) = Me.txtEnterName.Text
    Scores(NewPos, 1) = Str(Score)
    Scores(NewPos, 2) = Str(TotLine)
    FF = FreeFile
    Open App.Path & "\Scores.dat" For Output As FF
    For a = 0 To 9
    frmHighScores.Label1(a).Caption = Scores(a, 0)
    frmHighScores.Label2(a).Caption = Scores(a, 1)
    frmHighScores.Label3(a).Caption = Scores(a, 2)
    Print #FF, Scores(a, 0)
    Print #FF, Scores(a, 1)
    Print #FF, Scores(a, 2)
    Next a
    Close #FF
    Me.picTetrisField.SetFocus
    frmHighScores.Show vbModal
    
    EnteringName = False
    Me.mnuStart.Enabled = True
    Me.mnuHighScores.Enabled = True
    Me.mnuHelp.Enabled = True
End If

End Sub

Public Function GetShortPath(strFileName As String) As String
    Dim lngRes As Long, strPath As String
    'Create a buffer
    strPath = String$(165, 0)
    'retrieve the short pathname
    lngRes = GetShortPathName(strFileName, strPath, 164)
    'remove all unnecessary chr$(0)'s
    GetShortPath = Left$(strPath, lngRes)
End Function

Public Sub GetNextSong()
If Me.flbMusicList.ListCount = 0 Then song = "": Exit Sub
CurrSong = CurrSong + 1
If CurrSong > frmGame.flbMusicList.ListCount - 1 Then CurrSong = 0
song = GetShortPath(App.Path) & "\" & Me.flbMusicList.List(CurrSong)
End Sub


