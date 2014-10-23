<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="detail" MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>
    <div>
    
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_stateFacts %>" DeleteCommand="DELETE FROM [weijli_recipe] WHERE [ID] = @ID" InsertCommand="INSERT INTO [weijli_recipe] ([name], [submit], [one], [two], [three], [four], [five], [preparation], [note]) VALUES (@name, @submit, @one, @two, @three, @four, @five, @preparation, @note)" SelectCommand="SELECT * FROM [weijli_recipe] WHERE ([ID] = @ID)" UpdateCommand="UPDATE [weijli_recipe] SET [name] = @name, [submit] = @submit, [one] = @one, [two] = @two, [three] = @three, [four] = @four, [five] = @five, [preparation] = @preparation, [note] = @note WHERE [ID] = @ID">
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
            <SelectParameters>
                <asp:QueryStringParameter Name="ID" QueryStringField="ID" Type="Int32" />
            </SelectParameters>
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
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="submit" HeaderText="submit" SortExpression="submit" />
                <asp:BoundField DataField="one" HeaderText="one" SortExpression="one" />
                <asp:BoundField DataField="two" HeaderText="two" SortExpression="two" />
                <asp:BoundField DataField="three" HeaderText="three" SortExpression="three" />
                <asp:BoundField DataField="four" HeaderText="four" SortExpression="four" />
                <asp:BoundField DataField="five" HeaderText="five" SortExpression="five" />
                <asp:BoundField DataField="preparation" HeaderText="preparation" SortExpression="preparation" />
                <asp:BoundField DataField="note" HeaderText="note" SortExpression="note" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        </div>
    </div>
</asp:Content>
