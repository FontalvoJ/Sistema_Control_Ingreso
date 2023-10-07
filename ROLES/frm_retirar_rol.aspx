<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_retirar_rol.aspx.cs" Inherits="ROLES.frm_retirar_rol1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form runat="server">

         <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">IngresoControlPro</a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="frm_control_ingresos.aspx">Registrar Usuario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="frm_asignar_rol.aspx">Asignar Rol</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="frm_retirar_rol.aspx">Retirar Rol</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-1">
                        <h3>Retirar Rol</h3>
                    </div>
                    <div class="shadow p-4">

                        <div class="mb-1">
                            <asp:TextBox ID="txt_usuario" placeholder="Usuario" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-1">
                            <asp:DropDownList ID="ddl_rol" placeholder="Rol a Retirar" class="form-control" runat="server" DataTextField="Nombre" DataValueField="PKCodigo" DataSourceID="SqlDataSourceRol"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceRol" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" SelectCommand="SELECT [PKCodigo], [Nombre] FROM [tbl_roles]"></asp:SqlDataSource>
                        </div>

                        <div class="mb-1">
                            <asp:Button ID="btn_retirarrrol" Text="Retirar Rol" class="btn btn-dark btn-md mr-2" runat="server" OnClick="btn_retirarrrol_Click" />
                            <asp:Button ID="btn_nuevo" runat="server" Text="Nuevo" class="btn btn-dark btn-md mr-2" OnClick="btn_nuevo_Click" />
                        </div>

                        <div class="form-outline mb-1">
                            <asp:Label ID="lbl_mensaje" runat="server" Text="" class="form-control form-control-sm"></asp:Label>
                        </div>

                        <hr>

                        <p class="text-center mb-0">COPYRIGHT @FontalvoJ</p>
                    </div>
                </div>
            </div>
        </div>
    </form>

</body>
</html>
