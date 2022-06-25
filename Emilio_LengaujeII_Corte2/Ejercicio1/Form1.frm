VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7111
   ClientLeft      =   104
   ClientTop       =   429
   ClientWidth     =   6331
   LinkTopic       =   "Form1"
   ScaleHeight     =   7111
   ScaleWidth      =   6331
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame2 
      Caption         =   "Trabajadores Registrados"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   10.87
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4108
      Left            =   117
      TabIndex        =   1
      Top             =   2808
      Width           =   5980
      Begin VB.TextBox txtConsulta 
         Height          =   481
         Left            =   702
         TabIndex        =   9
         Top             =   3510
         Width           =   2002
      End
      Begin VB.CommandButton btnConsulta 
         Caption         =   "Consulta de Datos"
         Height          =   481
         Left            =   2925
         MaskColor       =   &H0000C000&
         TabIndex        =   7
         Top             =   3510
         Width           =   2704
      End
      Begin VB.Label lblConsultaInformacion 
         Alignment       =   2  'Center
         Caption         =   "Ingrese ID del Trabajador para conocer la hora"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.83
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   819
         TabIndex        =   11
         Top             =   3159
         Width           =   4459
      End
      Begin VB.Label lblInformacion 
         Caption         =   "ID y Cedula del Trabajador"
         Height          =   247
         Left            =   351
         TabIndex        =   10
         Top             =   351
         Width           =   2587
      End
      Begin VB.Label lblTrabajadores 
         BackColor       =   &H80000014&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   2470
         Left            =   351
         TabIndex        =   8
         Top             =   585
         Width           =   5278
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Registro de Trabajadores"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   10.87
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2353
      Left            =   117
      TabIndex        =   0
      Top             =   117
      Width           =   6097
      Begin VB.CommandButton btnRegistrar 
         BackColor       =   &H80000018&
         Caption         =   "Registrar"
         Height          =   364
         Left            =   4329
         MaskColor       =   &H80000000&
         TabIndex        =   6
         Top             =   1755
         Width           =   1534
      End
      Begin VB.TextBox txtHoras 
         Height          =   481
         Left            =   2574
         TabIndex        =   5
         Top             =   1287
         Width           =   1534
      End
      Begin VB.TextBox txtCedula 
         Height          =   481
         Left            =   2574
         TabIndex        =   4
         Top             =   468
         Width           =   1534
      End
      Begin VB.Label lblHorasTrabajadas 
         Alignment       =   2  'Center
         Caption         =   "Horas trabajadas por Semana"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   832
         Left            =   351
         TabIndex        =   3
         Top             =   1170
         Width           =   2002
      End
      Begin VB.Label lblCedula 
         Caption         =   "Cedula"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   481
         Left            =   702
         TabIndex        =   2
         Top             =   585
         Width           =   1651
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim cedulaTrabajador(1 To 20) As String
Dim horasTrabajador(1 To 20) As Integer
Dim semanaTrabajador(1 To 20) As Integer
Dim totalTrabajador(1 To 20) As Integer
Dim gID As Integer

Private Sub btnConsulta_Click()
    Dim numeroConsulta As Integer
     numeroConsulta = CInt(txtConsulta.Text)
     MsgBox ("ID del Trabajador " & numeroConsulta & vbNewLine & "Cedula del Trabajador " & cedulaTrabajador(numeroConsulta) & vbNewLine & "Horas Trabajadas: " & horasTrabajador(numeroConsulta) & vbNewLine & "Dinero a Pagar por la Semana " & semanaTrabajador(numeroConsulta))
End Sub

Private Sub btnRegistrar_Click()
    gID = gID + 1
    
    'registra la cedula'
    cedulaTrabajador(gID) = CStr(txtCedula.Text)
    horasTrabajador(gID) = CInt(txtHoras.Text)
    
    'Condicion de Horas'
    If horasTrabajador(gID) < 48 Then
       semanaTrabajador(gID) = horasTrabajador(gID) * 10
    ElseIf horasTrabajador(gID) >= 48 Then
        Dim horasAdicionales As Integer
        horasAdicionales = horasTrabajador(gID) - 48
        semanaTrabajador(gID) = (horasAdicionales * 13) + 480
        End If
        
    lblTrabajadores.Caption = lblTrabajadores.Caption & vbCrLf & gID & " - " & cedulaTrabajador(gID)
    
    txtCedula.Text = ""
    txtHoras.Text = ""
    
End Sub


