<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Recipe.aspx.vb" Inherits="detail" MasterPageFile="~/MasterPage.master"%>
<asp:Content ID="head" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!DOCTYPE html>
    
    
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
    <div>
        <div class="content">
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"
            HeaderText="Recipe Detail"
            CssClass="cssdetailsview"
            HeaderStyle-CssClass="header"
            FieldHeaderStyle-CssClass="fieldheader"
            CommandRowStyle-CssClass="command" Width="460px"
            
            >
<CommandRowStyle CssClass="command"></CommandRowStyle>

<FieldHeaderStyle CssClass="fieldheader"></FieldHeaderStyle>
            <Fields>
                <asp:BoundField DataField="name" HeaderText="Recipe Name" SortExpression="name" />
                <asp:BoundField DataField="submit" HeaderText="Submitted By" SortExpression="submit" />
                <asp:BoundField DataField="one" HeaderText="First Ingredient" SortExpression="one" />
                <asp:BoundField DataField="two" HeaderText="Second Ingredient" SortExpression="two" />
                <asp:BoundField DataField="three" HeaderText="Third Ingredient" SortExpression="three" />
                <asp:BoundField DataField="four" HeaderText="Fourth Ingredient" SortExpression="four" />
                <asp:BoundField DataField="five" HeaderText="Fifth Ingredient" SortExpression="five" />
                <asp:BoundField DataField="preparation" HeaderText="Preparation" SortExpression="preparation" />
                <asp:BoundField DataField="note" HeaderText="Notes" SortExpression="note" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>

<HeaderStyle CssClass="header"></HeaderStyle>
        </asp:DetailsView>
        </div>
    </div>
</asp:Content>
