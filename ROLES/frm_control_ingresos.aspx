<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_control_ingresos.aspx.cs" Inherits="ROLES.frm_control_ingresos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
     <form runat="server">
        <div class="container mt-4">
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="mb-2">
                        <h3>Registrar Usuarios</h3>
                    </div>
                    <div class="shadow p-4">
                        <div class="mb-2">
                            <asp:TextBox ID="txt_id" placeholder="Identificación" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-2">
                            <asp:TextBox ID="txt_nombre" placeholder="Nombre" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-2">
                            <asp:TextBox ID="txt_contacto" placeholder="Contacto" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-2">
                            <asp:TextBox ID="txt_correo" placeholder="Correo" class="form-control" runat="server"></asp:TextBox>
                        </div>

                        <div class="mb-2">
                            <asp:DropDownList ID="ddl_sexo" placeholder="Ingreso" class="form-control"  runat="server" DataTextField="Nomenclatura" DataValueField="PKCodigo" DataSourceID="SqlDataSourceSexo"></asp:DropDownList>
                            <asp:SqlDataSource ID="sqlDataSourceSexo" runat="server" ConnectionString="<%$ ConnectionStrings:dbs_rolesConnectionString %>" SelectCommand="SELECT [PKCodigo], [Nomenclatura] FROM [tbl_sexo]" ProviderName="<%$ ConnectionStrings:dbs_rolesConnectionString.ProviderName %>"></asp:SqlDataSource>
                        </div>

            
                        <div class="mb-2">
                            <asp:Button ID="btn_guardar" Text="Guardar" class="btn btn-dark btn-md mr-2" runat="server" />
                            <asp:Button ID="btn_nuevo" runat="server" Text="Nuevo" class="btn btn-dark btn-md mr-2" />
                        </div>



                        <div class="form-outline mb-2">
                            <asp:Label ID="lbl_mensaje" runat="server" Text="" class="form-control form-control-sm"></asp:Label>
                        </div>

                        <hr>

                        <p class="text-center mb-0">Este proyecto estará bajo licencia y derechos de autor propiedad de FontalvoJ</p>

                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
