VERSION 5.00
Begin VB.Form form1 
   Caption         =   "Fast Food "
   ClientHeight    =   7618
   ClientLeft      =   104
   ClientTop       =   429
   ClientWidth     =   7241
   LinkTopic       =   "Form1"
   ScaleHeight     =   7618
   ScaleWidth      =   7241
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame fmRefrescos 
      BackColor       =   &H8000000D&
      Caption         =   "Refrescos"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   1768
      Left            =   0
      TabIndex        =   34
      Top             =   3744
      Width           =   7267
      Begin VB.TextBox txtCantidadRefrescoBotella 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   5
         Text            =   "0"
         Top             =   585
         Width           =   832
      End
      Begin VB.TextBox txtCantidadRefrescoNatural 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   6
         Text            =   "0"
         Top             =   1170
         Width           =   832
      End
      Begin VB.Image imgRefrescoBotella 
         Height          =   1066
         Left            =   5265
         Picture         =   "Form1.frx":0000
         Stretch         =   -1  'True
         Top             =   351
         Visible         =   0   'False
         Width           =   1183
      End
      Begin VB.Image imgRefrescoNatural 
         Height          =   949
         Left            =   5148
         Picture         =   "Form1.frx":E6ED
         Stretch         =   -1  'True
         Top             =   468
         Visible         =   0   'False
         Width           =   1534
      End
      Begin VB.Label lblBotella 
         BackColor       =   &H8000000D&
         Caption         =   "Botella"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   42
         Top             =   585
         Width           =   1066
      End
      Begin VB.Label lblNatural 
         BackColor       =   &H8000000D&
         Caption         =   "Natural"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   41
         Top             =   1170
         Width           =   1066
      End
      Begin VB.Label lblPrecioNatural 
         BackColor       =   &H8000000D&
         Caption         =   "20"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   40
         Top             =   585
         Width           =   715
      End
      Begin VB.Label lblPrecioBotella 
         BackColor       =   &H8000000D&
         Caption         =   "15"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   39
         Top             =   1170
         Width           =   598
      End
      Begin VB.Label Label16 
         BackColor       =   &H8000000D&
         Caption         =   "Pedido"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   2223
         TabIndex        =   38
         Top             =   234
         Width           =   949
      End
      Begin VB.Label txtSubtotalRefrescoBotella 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   37
         Top             =   585
         Width           =   715
      End
      Begin VB.Label txtSubtotalRefrescoNatural 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   36
         Top             =   1170
         Width           =   715
      End
      Begin VB.Label Label13 
         BackColor       =   &H8000000D&
         Caption         =   "SubTotal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   3510
         TabIndex        =   35
         Top             =   234
         Width           =   949
      End
   End
   Begin VB.Frame fmHamburguesas 
      BackColor       =   &H8000000D&
      Caption         =   "Hamburguesas"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   1768
      Left            =   0
      TabIndex        =   25
      Top             =   1872
      Width           =   7267
      Begin VB.TextBox txtCantidadHamburguesaNormal 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   3
         Text            =   "0"
         Top             =   585
         Width           =   832
      End
      Begin VB.TextBox txtCantidadHamburguesaEspecial 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   4
         Text            =   "0"
         Top             =   1170
         Width           =   832
      End
      Begin VB.Image imgHamburguesaEspecial 
         Height          =   1183
         Left            =   5031
         Picture         =   "Form1.frx":22BC0
         Stretch         =   -1  'True
         Top             =   351
         Visible         =   0   'False
         Width           =   1651
      End
      Begin VB.Image imgHamburguesaNormal 
         Height          =   1066
         Left            =   5148
         Picture         =   "Form1.frx":39C2A
         Stretch         =   -1  'True
         Top             =   468
         Visible         =   0   'False
         Width           =   1417
      End
      Begin VB.Label lblHamburguesaNormal 
         BackColor       =   &H8000000D&
         Caption         =   "Normal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   33
         Top             =   585
         Width           =   1066
      End
      Begin VB.Label lblHamburguesaEspecial 
         BackColor       =   &H8000000D&
         Caption         =   "Especial"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   32
         Top             =   1170
         Width           =   1183
      End
      Begin VB.Label lblPrecioHamburguesaNormal 
         BackColor       =   &H8000000D&
         Caption         =   "100"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   31
         Top             =   585
         Width           =   715
      End
      Begin VB.Label lblPrecioHamburguesaEspecial 
         BackColor       =   &H8000000D&
         Caption         =   "150"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   30
         Top             =   1170
         Width           =   598
      End
      Begin VB.Label Label7 
         BackColor       =   &H8000000D&
         Caption         =   "Pedido"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   2223
         TabIndex        =   29
         Top             =   234
         Width           =   949
      End
      Begin VB.Label lblSubtotalHamburguesaNormal 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   28
         Top             =   585
         Width           =   715
      End
      Begin VB.Label lblSubtotalHamburguesaEspecial 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   27
         Top             =   1170
         Width           =   715
      End
      Begin VB.Label Label4 
         BackColor       =   &H8000000D&
         Caption         =   "SubTotal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   3510
         TabIndex        =   26
         Top             =   234
         Width           =   949
      End
   End
   Begin VB.CommandButton cmdSalir 
      Caption         =   "Salir"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.83
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   715
      Left            =   585
      Picture         =   "Form1.frx":75678
      TabIndex        =   15
      TabStop         =   0   'False
      Top             =   6318
      Width           =   1885
   End
   Begin VB.CommandButton cmdCalcular 
      Caption         =   "CALCULAR"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.83
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   1755
      TabIndex        =   7
      Top             =   5850
      Width           =   1417
   End
   Begin VB.CommandButton cmdLimpiar 
      Caption         =   "LIMPIAR"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.83
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   364
      Left            =   234
      TabIndex        =   8
      Top             =   5850
      Width           =   1417
   End
   Begin VB.Frame FramePerroCaliente 
      BackColor       =   &H8000000D&
      Caption         =   "Perro Calientes"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H8000000E&
      Height          =   1768
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7267
      Begin VB.TextBox txtCantidadPerroEspecial 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   2
         Text            =   "0"
         Top             =   1170
         Width           =   832
      End
      Begin VB.TextBox txtCantidadPerroNormal 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   2223
         TabIndex        =   1
         Text            =   "0"
         Top             =   585
         Width           =   832
      End
      Begin VB.Image imgPerroCalienteNormal 
         Height          =   1066
         Left            =   4797
         Picture         =   "Form1.frx":A5D87
         Stretch         =   -1  'True
         Top             =   468
         Visible         =   0   'False
         Width           =   1768
      End
      Begin VB.Image imgPerroCalienteEspecial 
         Height          =   949
         Left            =   4914
         Picture         =   "Form1.frx":B3CB4
         Stretch         =   -1  'True
         Top             =   585
         Visible         =   0   'False
         Width           =   1885
      End
      Begin VB.Label Label9 
         BackColor       =   &H8000000D&
         Caption         =   "SubTotal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   3510
         TabIndex        =   24
         Top             =   234
         Width           =   949
      End
      Begin VB.Label lblSubtotalPerroEspecial 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   23
         Top             =   1170
         Width           =   715
      End
      Begin VB.Label lblSubtotalPerroNormal 
         Alignment       =   2  'Center
         BackColor       =   &H8000000E&
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   10.87
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   364
         Left            =   3510
         TabIndex        =   22
         Top             =   585
         Width           =   715
      End
      Begin VB.Label txtPedido 
         BackColor       =   &H8000000D&
         Caption         =   "Pedido"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   247
         Left            =   2223
         TabIndex        =   13
         Top             =   234
         Width           =   949
      End
      Begin VB.Label lblPrecioPerroEspecial 
         BackColor       =   &H8000000D&
         Caption         =   "90"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   12
         Top             =   1170
         Width           =   598
      End
      Begin VB.Label lblPrecioPerroNormal 
         BackColor       =   &H8000000D&
         Caption         =   "50"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   1404
         TabIndex        =   11
         Top             =   585
         Width           =   715
      End
      Begin VB.Label lblPerroEspecial 
         BackColor       =   &H8000000D&
         Caption         =   "Especial"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   10
         Top             =   1170
         Width           =   1417
      End
      Begin VB.Label lblPerroNormal 
         BackColor       =   &H8000000D&
         Caption         =   "Normal"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   12.23
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H8000000B&
         Height          =   364
         Left            =   234
         TabIndex        =   9
         Top             =   585
         Width           =   1417
      End
   End
   Begin VB.PictureBox Picture1 
      Height          =   1300
      Left            =   585
      ScaleHeight     =   1300
      ScaleWidth      =   13
      TabIndex        =   14
      Top             =   2223
      Width           =   13
   End
   Begin VB.Label lblIVA 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   4914
      TabIndex        =   21
      Top             =   6318
      Width           =   1937
   End
   Begin VB.Label lblSubtotal 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   4914
      TabIndex        =   20
      Top             =   5733
      Width           =   1937
   End
   Begin VB.Label lblTotal 
      Alignment       =   2  'Center
      BackColor       =   &H8000000E&
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12.23
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   4914
      TabIndex        =   19
      Top             =   6903
      Width           =   1937
   End
   Begin VB.Label Label3 
      Caption         =   "Total"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   10.87
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   3744
      TabIndex        =   18
      Top             =   6903
      Width           =   1001
   End
   Begin VB.Label Label2 
      Caption         =   "IVA"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   10.87
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   3744
      TabIndex        =   17
      Top             =   6318
      Width           =   1001
   End
   Begin VB.Label Label1 
      Caption         =   "SubTotal"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   10.87
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   481
      Left            =   3744
      TabIndex        =   16
      Top             =   5733
      Width           =   1001
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Const precioPerroNormal As Integer = 50
Const precioPerroEspecial As Integer = 90
Const precioHamburguesaNormal As Integer = 100
Const precioHamburguesaEspecial As Integer = 150



Private Sub cmdCalcular_Click()

'Perro Caliente Frame'

Dim cantidadPerroNormal As Integer
Dim cantidadPerroEspecial As Integer
Dim subtotalPerroNormal As Integer
Dim subtotalPerroEspecial As Integer

cantidadPerroNormal = CInt(txtCantidadPerroNormal.Text)
cantidadPerroEspecial = CInt(txtCantidadPerroEspecial.Text)

subtotalPerroNormal = cantidadPerroNormal * precioPerroNormal
subtotalPerroEspecial = cantidadPerroEspecial * precioPerroEspecial

lblSubtotalPerroNormal.Caption = subtotalPerroNormal
lblSubtotalPerroEspecial.Caption = subtotalPerroEspecial

'Hamburguesa Frame'

Dim cantidadHamburguesaNormal As Integer
Dim cantidadHamburguesaEspecial As Integer
Dim subtotalHamburguesaNormal As Integer
Dim subtotalHamburguesaEspecial As Integer

cantidadHamburguesaNormal = CInt(txtCantidadHamburguesaNormal.Text)
cantidadHamburguesaEspecial = CInt(txtCantidadHamburguesaEspecial.Text)

subtotalHamburguesaNormal = cantidadHamburguesaNormal * precioHamburguesaNormal
subtotalHamburguesaEspecial = cantidadHamburguesaEspecial * precioHamburguesaEspecial

lblSubtotalHamburguesaNormal.Caption = subtotalHamburguesaNormal
lblSubtotalHamburguesaEspecial.Caption = subtotalHamburguesaEspecial

'Calculo Final'
Dim subtotal As Integer

subtotal = subtotalPerroNormal + subtotalPerroEspecial + subtotalHamburguesaNormal + subtotalHamburguesaEspecial
lblSubtotal.Caption = subtotal

Dim ivaAPagar As Integer

ivaAPagar = (subtotal * 16) / 100
lblIVA.Caption = ivaAPagar

Dim total As Integer

total = ivaAPagar + subtotal
lblTotal.Caption = total

End Sub

Private Sub cmdLimpiar_Click()
    txtCantidadPerroNormal.Text = 0
    txtCantidadPerroEspecial.Text = 0
    txtCantidadHamburguesaNormal.Text = 0
    txtCantidadHamburguesaEspecial.Text = 0
    txtCantidadRefrescoNatural = 0
    txtCantidadRefrescoBotella = 0
    lblSubtotal.Caption = 0
    lblIVA.Caption = 0
    lblTotal = 0
    imgPerroCalienteNormal.Visible = False
    imgPerroCalienteEspecial.Visible = False
    imgHamburguesaNormal.Visible = False
    imgHamburguesaEspecial.Visible = False
    imgRefrescoNatural.Visible = False
    imgRefrescoBotella.Visible = False
    
    
End Sub

Private Sub cmdSalir_Click()
Unload Form1
End Sub

Private Sub lblBotella_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgRefrescoNatural.Visible = False
imgRefrescoBotella.Visible = True
End Sub

Private Sub lblHamburguesaEspecial_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgHamburguesaNormal.Visible = False
imgHamburguesaEspecial.Visible = True
End Sub

Private Sub lblHamburguesaNormal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgHamburguesaNormal.Visible = True
imgHamburguesaEspecial.Visible = False
End Sub


Private Sub lblNatural_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgRefrescoNatural.Visible = True
imgRefrescoBotella.Visible = False
End Sub

Private Sub lblPerroNormal_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgPerroCalienteNormal.Visible = True
imgPerroCalienteEspecial.Visible = False
End Sub

Private Sub lblPerroEspecial_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
imgPerroCalienteEspecial.Visible = True
imgPerroCalienteNormal.Visible = False

End Sub




