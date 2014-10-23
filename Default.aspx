<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [weijli_recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [weijli_recipe] ([name], [submit], [one], [two], [three], [four], [five], [preparation], [note]) VALUES (@name, @submit, @one, @two, @three, @four, @five, @preparation, @note)" SelectCommand="SELECT * FROM [weijli_recipe]" UpdateCommand="UPDATE [weijli_recipe] SET [name] = @name, [submit] = @submit, [one] = @one, [two] = @two, [three] = @three, [four] = @four, [five] = @five, [preparation] = @preparation, [note] = @note WHERE [ID] = @ID">
            <DeleteParameters>
                <asp:Parameter Name="ID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submit" Type="String" />
                <asp:Parameter Name="one" Type="String" />
                <asp:Parameter Name="two" Type="String" />
                <asp:Parameter Name="three" Type="String" />
                <asp:Parameter Name="four" Type="String" />
                <asp:Parameter Name="five" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="note" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="submit" Type="String" />
                <asp:Parameter Name="one" Type="String" />
                <asp:Parameter Name="two" Type="String" />
                <asp:Parameter Name="three" Type="String" />
                <asp:Parameter Name="four" Type="String" />
                <asp:Parameter Name="five" Type="String" />
                <asp:Parameter Name="preparation" Type="String" />
                <asp:Parameter Name="note" Type="String" />
                <asp:Parameter Name="ID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="submit" HeaderText="submit" SortExpression="submit" />
                <asp:HyperLinkField DataNavigateUrlFields="ID" DataNavigateUrlFormatString="Recipe.aspx?ID={0}" Text="Select" />
            </Columns>
        </asp:GridView>
    
    </div>

</asp:Content>