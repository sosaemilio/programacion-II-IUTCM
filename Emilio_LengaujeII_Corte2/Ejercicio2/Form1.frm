VERSION 5.00
Begin VB.Form Form1 
   Caption         =   ""
   ClientHeight    =   8177
   ClientLeft      =   104
   ClientTop       =   429
   ClientWidth     =   6994
   LinkTopic       =   "Form1"
   ScaleHeight     =   8177
   ScaleWidth      =   6994
   StartUpPosition =   3  'Windows Default
   Begin VB.Frame Frame3 
      BackColor       =   &H80000016&
      Caption         =   "Ventas "
      Height          =   3523
      Left            =   234
      TabIndex        =   17
      Top             =   4563
      Width           =   6565
      Begin VB.CommandButton Command2 
         Caption         =   "Cerrar Venta"
         Height          =   598
         Left            =   3861
         TabIndex        =   25
         Top             =   2691
         Width           =   2353
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Ingresar al Carrito"
         Height          =   364
         Left            =   468
         TabIndex        =   24
         Top             =   1872
         Width           =   2236
      End
      Begin VB.TextBox txtCantidadVenta 
         Height          =   364
         Left            =   1053
         TabIndex        =   19
         Top             =   1170
         Width           =   2002
      End
      Begin VB.TextBox txtIDVenta 
         Height          =   364
         Left            =   1053
         TabIndex        =   18
         Top             =   585
         Width           =   2002
      End
      Begin VB.Label Label6 
         Caption         =   "Cantidad"
         Height          =   247
         Left            =   117
         TabIndex        =   23
         Top             =   1287
         Width           =   832
      End
      Begin VB.Label Label5 
         Caption         =   "Codigo de Producto"
         Height          =   364
         Left            =   117
         TabIndex        =   22
         Top             =   585
         Width           =   832
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
         Height          =   364
         Left            =   4797
         TabIndex        =   21
         Top             =   585
         Width           =   1417
      End
      Begin VB.Label Label3 
         Caption         =   "TOTAL"
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
         Left            =   3627
         TabIndex        =   20
         Top             =   585
         Width           =   2002
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Consultas"
      Height          =   1300
      Left            =   234
      TabIndex        =   12
      Top             =   3042
      Width           =   6565
      Begin VB.CommandButton btnListaProducto 
         Caption         =   "Ver Lista Completa de Productos"
         Height          =   715
         Left            =   4797
         TabIndex        =   16
         Top             =   351
         Width           =   1300
      End
      Begin VB.CommandButton btnConsulta 
         Caption         =   "Consulta"
         Height          =   364
         Left            =   1872
         TabIndex        =   14
         Top             =   585
         Width           =   1300
      End
      Begin VB.TextBox txtConsulta 
         Height          =   364
         Left            =   234
         TabIndex        =   13
         Top             =   585
         Width           =   1534
      End
      Begin VB.Label lblConsulta 
         Alignment       =   2  'Center
         Caption         =   "Consulta de Producto"
         Height          =   247
         Left            =   351
         TabIndex        =   15
         Top             =   351
         Width           =   2587
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Registro de Productos"
      Height          =   2587
      Left            =   234
      TabIndex        =   0
      Top             =   234
      Width           =   6565
      Begin VB.CommandButton btnRegistrar 
         Caption         =   "Registrar"
         Height          =   364
         Left            =   4212
         TabIndex        =   11
         Top             =   1989
         Width           =   1768
      End
      Begin VB.TextBox txtProveedor 
         Height          =   247
         Left            =   1638
         TabIndex        =   10
         Top             =   1755
         Width           =   1417
      End
      Begin VB.TextBox txtPrecio 
         Height          =   247
         Left            =   1638
         TabIndex        =   8
         Top             =   1404
         Width           =   1417
      End
      Begin VB.TextBox txtCantidad 
         Height          =   247
         Left            =   1638
         TabIndex        =   5
         Top             =   1053
         Width           =   1417
      End
      Begin VB.TextBox txtNombre 
         Height          =   247
         Left            =   1638
         TabIndex        =   4
         Top             =   702
         Width           =   1417
      End
      Begin VB.TextBox txtCodigo 
         Height          =   247
         Left            =   1638
         TabIndex        =   2
         Top             =   351
         Width           =   1417
      End
      Begin VB.Label lblProveedor 
         Caption         =   "Proveedor"
         Height          =   247
         Left            =   117
         TabIndex        =   9
         Top             =   1755
         Width           =   1300
      End
      Begin VB.Label lblPrecio 
         Caption         =   "Precio"
         Height          =   247
         Left            =   117
         TabIndex        =   7
         Top             =   1404
         Width           =   1300
      End
      Begin VB.Label lblCantidad 
         Caption         =   "Cantidad"
         Height          =   247
         Left            =   117
         TabIndex        =   6
         Top             =   1053
         Width           =   1300
      End
      Begin VB.Label Label2 
         Caption         =   "Nombre"
         Height          =   247
         Left            =   117
         TabIndex        =   3
         Top             =   702
         Width           =   1300
      End
      Begin VB.Label Label1 
         Caption         =   "SKU o Codigo"
         Height          =   247
         Left            =   117
         TabIndex        =   1
         Top             =   351
         Width           =   1534
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim ID As Integer
Dim oProducto(20) As producto
Dim ventasRegistro(20) As Integer
Dim numeroVenta As Integer
Function buscar(codigo As Integer) As Integer

Dim I As Integer

For I = 0 To 20
    If oProducto(I).codigo = codigo Then
    buscar = I
    Exit Function
    End If
 Next
 
End Function
Private Sub btnConsulta_Click()

'Temporal
Dim codigo As Integer

'registro de variable temporal para consulta

codigo = CInt(txtConsulta.Text)
codigo = buscar(codigo)

'mensaje a mostrar
MsgBox (" SKU o Codigo: " & oProducto(codigo).codigo & vbNewLine & _
" NOMBRE: " & oProducto(codigo).nombre & vbNewLine & _
" CANTIDAD ACTUAL: " & oProducto(codigo).cantidad & vbNewLine & _
" PRECIO: " & oProducto(codigo).precio & vbNewLine & _
" PROVEEDOR: " & oProducto(codigo).proveedor)
End Sub

Private Sub btnListaProducto_Click()
    Dim I As Integer
    Dim lista As String
    
    lista = "Nombre | Codigo"
    
    For I = 1 To ID
        lista = lista & vbNewLine _
        & oProducto(I).nombre & "          " & oProducto(I).codigo
    Next
        
    MsgBox ("Lista de Productos: " & vbNewLine & lista)
End Sub

Private Sub btnRegistrar_Click()
    ID = ID + 1
    
    'Registro de datos'
    oProducto(ID).codigo = CInt(txtCodigo.Text)
    oProducto(ID).nombre = CStr(txtNombre.Text)
    oProducto(ID).cantidad = CInt(txtCantidad.Text)
    oProducto(ID).precio = CInt(txtPrecio.Text)
    oProducto(ID).proveedor = CStr(txtProveedor.Text)
    
    'Limpiar producto registrado'
    txtCodigo.Text = ""
    txtNombre.Text = ""
    txtCantidad.Text = ""
    txtPrecio.Text = ""
    txtProveedor.Text = ""
    
End Sub

Private Sub Command1_Click()

'Variables temporales para Ventas
Dim cantidad As Integer
Dim codigo As Integer

'Registra y gaurda datos'
cantidad = CInt(txtCantidadVenta.Text)

codigo = CInt(txtIDVenta.Text)
codigo = buscar(codigo)

'Reduce inventario'
oProducto(codigo).cantidad = oProducto(codigo).cantidad - cantidad

'Pantalla'
lblTotal.Caption = lblTotal.Caption + (oProducto(codigo).precio * cantidad)

End Sub

Private Sub Command2_Click()

'Variable temporal de verificacion
Dim totalGuardar As Integer

'Guarda variable temporal
totalGuardar = CInt(lblTotal.Caption)

'Condicion de Guardado
If totalGuardar <= 0 Then
    'Ventana de operacion Incorrecta
    MsgBox ("No puedes registrar una venta de numero 0")
    Else
    'Guarda en vector la venta
    ventasRegistro(numeroVenta) = totalGuardar
    numeroVenta = numeroVenta + 1
    lblTotal.Caption = 0
    End If
    
End Sub
