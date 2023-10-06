<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_asignar_rol.aspx.cs" Inherits="ROLES.frm_retirar_rol" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
    <form runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-1">
                        <h3>Asignar Rol</h3>
                    </div>
                    <div class="shadow p-4">

                        <div class="mb-1">
                            <asp:TextBox ID="txt_usuario" placeholder="Usuario" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-1">
                            <asp:DropDownList ID="ddl_rol" placeholder="Asignar Rol" class="form-control" runat="server" DataTextField="Nombre" DataValueField="PKCodigo" DataSourceID="SqlDataSourceRol"></asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSourceRol" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" SelectCommand="SELECT [PKCodigo], [Nombre] FROM [tbl_roles]"></asp:SqlDataSource>
                        </div>

                        <div class="mb-1">
                            <asp:TextBox ID="txt_fecha" placeholder="Fecha Caducidad" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-1">
                            <asp:Button ID="btn_registrarrol" Text="Registrar Rol" class="btn btn-dark btn-md mr-2" runat="server" OnClick="btn_registrarrol_Click" />
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
