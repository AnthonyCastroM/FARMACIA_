<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="Sucursales.aspx.cs" Inherits="FARMACIA_.VISTAS.Sucursales" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>SUCURSALES</h1>
        <div class="col-6 m-auto">
            <asp:GridView ID="GridViewSucursales" runat="server" class="table table-bordered border-primary">
            </asp:GridView>
        </div>

    </div>
    <div class="accordion col-6 m-auto" id="accordionExample">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    AGREGAR
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">ID SUCURSAL:</span>
                        <asp:TextBox ID="TID" runat="server" type="number" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">NOMBRE SUCURSAL:</span>
                        <asp:TextBox ID="TNOMBRE" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">TELEFONO:</span>
                        <asp:TextBox ID="TTELEFONO" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">CORREO:</span>
                        <asp:TextBox ID="TCORREO" runat="server" type="email" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="input-group mb-3">
                        <span class="input-group-text" id="basic-addon1">UBICACION:</span>
                        <asp:TextBox ID="TUBICACION" runat="server" type="text" class="form-control" placeholder="" aria-label="Username" aria-describedby="basic-addon1"></asp:TextBox>
                    </div>
                    <div class="d-grid gap-2">
                        <asp:Button ID="BAGREGAR" runat="server" type="button" class="btn btn-primary" Text="AGREGAR" OnClick="BAGREGAR_Click" />
                    </div>
                    <div class="d-grid gap-2 my-1">
                        <asp:Button ID="BELIMINAR" runat="server" type="button" class="btn btn-danger mb-1" Text="ELIMINAR" OnClick="BELIMINAR_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
