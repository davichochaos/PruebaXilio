<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="EmpleadosView.aspx.cs" Inherits="TestXilio.EmpleadosView" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Cabezera" runat="server">
    <h1 class="text-center">Empleados</h1>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Menu" runat="server">
    <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">Empleados
        </a>
        <div class="btn-group">
            <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                Maquinaria
            </button>
            <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="https://localhost:44396/MaquinariaView.aspx">Asignacion</a></li>
                <li><a class="dropdown-item" href="#">Resumen</a></li>
            </ul>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Cuerpo" runat="server">
    <form runat="server">
        <asp:HiddenField ID="HdUsuarioId" runat="server" Value="0" />
        <div runat="server" id="WlblMsm"></div>
        <div class="row">
            <div class="col-md">
                <asp:TextBox ID="TxtNombre" runat="server" ClientIDMode="Static" CssClass="form-control form-control-sm" placeholder="Nombre"></asp:TextBox>
            </div>
            <div class="col-md">
                <asp:TextBox ID="TxtCargo" runat="server" ClientIDMode="Static" CssClass="form-control form-control-sm" placeholder="Cargo"></asp:TextBox>
            </div>
            <div class="col-md">
                <input id="TxtCedula" runat="server" clientidmode="Static" class="form-control form-control-sm" maxlength="10" placeholder="Cedula" />
            </div>
            <div class="col-md">
                <asp:TextBox ID="TxtArea" runat="server" ClientIDMode="Static" CssClass="form-control form-control-sm" placeholder="Area"></asp:TextBox>
            </div>
            <div class="col-md">
                <asp:Button ID="BtnGuardarEmpleado" runat="server" Text="Guardar" ClientIDMode="Static" OnClick="BtnGuardarEmpleado_Click" />
            </div>
        </div>
        <br />
        <div class="row">
            <div class="col-md">
                <div class="table-responsive">
                    <asp:GridView ID="ListaEmpleados" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" Width="100%" CssClass="table table-border table-hover table-sm">
                        <Columns>
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" HeaderStyle-Width="15%" />
                            <asp:BoundField HeaderText="Cargo" DataField="Cargo" HeaderStyle-Width="8%" />
                            <asp:BoundField HeaderText="Cedula" DataField="Cedula" HeaderStyle-Width="8%" />
                            <asp:BoundField HeaderText="Area" DataField="Area" HeaderStyle-Width="8%" />
                        </Columns>
                        <EmptyDataTemplate>
                            <p class="text-center">No existen registros</p>
                        </EmptyDataTemplate>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </form>
</asp:Content>
