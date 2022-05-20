<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListaBandas.aspx.cs" Inherits="CadBandas.ListaBandas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <asp:GridView ID="gvdAnimais" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="gvdAlunos_RowCancelingEdit" OnRowDeleting="gvdAlunos_RowDeleting" OnRowEditing="gvdAlunos_RowEditing" OnRowUpdating="gvdAlunos_RowUpdating" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" OnSelectedIndexChanged="gvdAlunos_SelectedIndexChanged" Width="745px" GridLines="Horizontal">
         <AlternatingRowStyle BackColor="#F7F7F7" />
        <Columns>
                <asp:TemplateField HeaderText="Código">
                    <EditItemTemplate>
                        <asp:Label ID="lblCodigo" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("codigo") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Nome">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtNome" runat="server" Text='<%# Bind("nome") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("nome") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Raça">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtRaca" runat="server" Text='<%# Bind("raca") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label3" runat="server" Text='<%# Bind("raca") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Cor">
                    <EditItemTemplate>
                        <asp:TextBox ID="txtCor" runat="server" Text='<%# Bind("cor") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Bind("cor") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" CommandName="Update"></asp:Button>
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CommandName="Cancel"></asp:Button>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btnEditar" runat="server" Text="Editar" CommandName="Edit"></asp:Button>
                        <asp:Button ID="btnExcluir" runat="server" Text="Excluir" CommandName="Delete"></asp:Button>
                    </ItemTemplate>
                </asp:TemplateField>

            </Columns>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle ForeColor="#4A3C8C" HorizontalAlign="Right" BackColor="#E7E7FF" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <SortedAscendingCellStyle BackColor="#F4F4FD" />
            <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
            <SortedDescendingCellStyle BackColor="#D8D8F0" />
            <SortedDescendingHeaderStyle BackColor="#3E3277" />
        </asp:GridView>         
        
        <table>
            <tr>
                <td><asp:Label ID="Label8" Text="Nome" runat="server"></asp:Label>&nbsp;da Banda</td>
                <td>Cidade</td>
                <td>UF</td>
                <td></td>
            </tr>
            <tr>
                <td><asp:TextBox ID="txtNome_Add" Width="273px" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="txtCidade_Add" Width="60" runat="server"></asp:TextBox></td>
                <td><asp:TextBox ID="txtUf_Add" Width="100" runat="server"></asp:TextBox></td>
                <td><asp:Button ID="btnAdicionar" runat="server" Text="Adicionar Banda" OnClick="btnAdicionar_Click"/></td>
            </tr>
            <tr>
                <td colspan="6"><asp:Label ID="lblRetornoOperacao" text="" Font-Bold="true" runat="server"></asp:Label></td>
            </tr>
        </table>
    </form>
</body>
</html>
