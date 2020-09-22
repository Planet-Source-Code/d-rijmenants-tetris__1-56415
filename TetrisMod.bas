Attribute VB_Name = "TetrisMod"
Option Explicit

Public Declare Function sndPlaySound Lib "WINMM.DLL" Alias "sndPlaySoundA" (ByVal lpszSoundName As String, ByVal uFlags As Long) As Long
Public Declare Function mciSendString Lib "WINMM.DLL" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Long, ByVal hwndCallback As Long) As Long

Global SoundBuffer As String
Global Scores(10, 2) As String
Global CurrSong As Integer
Global song As String
Public MusicOn As Boolean
Public EffectsOn As Boolean

Global Const SND_ASYNC = &H1
Global Const SND_NODEFAULT = &H2
Global Const SND_MEMORY = &H4 ' lpszSoundName points to a memory file

Public Sub PlayMIDI(MIDIFile As String)
    Dim SafeFile As String
    If MusicOn = False Or MIDIFile = "" Then Exit Sub
    SafeFile$ = Dir(MIDIFile$)
    If SafeFile$ <> "" Then
        Call mciSendString("play " & MIDIFile$, 0&, 0, 0)
    End If
End Sub

Public Sub StopMIDI(MIDIFile As String)
    Dim SafeFile As String
    If MIDIFile = "" Then Exit Sub
    SafeFile$ = Dir(MIDIFile$)
    If SafeFile$ <> "" Then
        Call mciSendString("stop " & MIDIFile$, 0&, 0, 0)
    End If
End Sub

Public Sub Playwav(ResourceId As Integer)
    Dim ret
    If EffectsOn = False Then Exit Sub
    '1 "tick.WAV"
    '2 "row.WAV"
    '3 "dead.WAV"
    '4 "stop.WAV"
    '5 "level.WAV"
    '6 "start.WAV"
    SoundBuffer = StrConv(LoadResData(ResourceId, "sounds"), vbUnicode)
    ret = sndPlaySound(SoundBuffer, SND_ASYNC Or SND_NODEFAULT Or SND_MEMORY)
End Sub

