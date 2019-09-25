<%@ Page Title="Summary" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="LabWork4.Summary" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<div class="jumbotron">
    <h1>ValidationSummary</h1>
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelName" runat="server" Text="Ф.И.О." AssociatedControlID="TextBoxName"></asp:Label>
        <asp:TextBox ID="TextBoxName" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ControlToValidate="TextBoxName" ValidationGroup="g" runat="server" ErrorMessage="Не указано Ф.И.О.">
            <p class="text-danger">Не указано Ф.И.О.</p>
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" ControlToValidate="TextBoxName" ValidationExpression="^[а-яА-Я-]+ [а-яА-Я-]+ [а-яА-Я-]+$" ValidationGroup="g" runat="server" ErrorMessage="Указано недопустимое Ф.И.О.">
            <p class="text-danger">Указано недопустимое Ф.И.О.</p>
        </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelDateOfBirth" runat="server" Text="Дата рождения" AssociatedControlID="TextBoxDateOfBirth"></asp:Label>
        <asp:TextBox ID="TextBoxDateOfBirth" TextMode="Date" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:Label ID="LabelCurrentDate" runat="server" Text="Текущая дата" AssociatedControlID="TextBoxCurrentDate"></asp:Label>
        <asp:TextBox ID="TextBoxCurrentDate" TextMode="Date" CssClass="form-control" runat="server" Enabled="false"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDateOfBirth" ControlToValidate="TextBoxDateOfBirth" ValidationGroup="g" runat="server" ErrorMessage="Не указана дата рождения">
            <p class="text-danger">Не указана дата рождения</p>
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorDateOfBirth" ControlToValidate="TextBoxDateOfBirth" Operator="LessThan" ControlToCompare="TextBoxCurrentDate" runat="server" ValidationGroup="g" ErrorMessage="Указана недопустимая дата рождения">
            <p class="text-danger">Указана недопустимая дата рождения</p>
        </asp:CompareValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelEmail" runat="server" Text="e-mail" AssociatedControlID="TextBoxEmail"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="TextBoxEmail" ValidationGroup="g" runat="server" ErrorMessage="Не указан e-mail">
            <p class="text-danger">Не указан e-mail</p>
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="TextBoxEmail" ValidationExpression=".*@.{2,}\..{2,}" ValidationGroup="g" runat="server" ErrorMessage="Указан недопустимый e-mail">
            <p class="text-danger">Указан недопустимый e-mail</p>
        </asp:RegularExpressionValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelAmount" runat="server" Text="Сумма" AssociatedControlID="TextBoxAmount"></asp:Label>
        <asp:TextBox ID="TextBoxAmount" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorAmount" ControlToValidate="TextBoxAmount" ValidationGroup="g" runat="server" ErrorMessage="Не указана сумма">
            <p class="text-danger">Не указана сумма</p>
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorAmount" Type="Integer" MinimumValue="1000" MaximumValue="2000" runat="server" ErrorMessage="Указана недопустимая сумма" ControlToValidate="TextBoxAmount" ValidationGroup="g">
            <p class="text-danger">Указана недопустимая сумма</p>
        </asp:RangeValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelPassword" runat="server" Text="Пароль" AssociatedControlID="TextBoxPassword"></asp:Label>
        <asp:TextBox ID="TextBoxPassword" CssClass="form-control" TextMode="Password" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPassword" ControlToValidate="TextBoxPassword" ValidationGroup="g" runat="server" ErrorMessage="Не указан пароль">
            <p class="text-danger">Не указан пароль</p>
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorPassword" ControlToValidate="TextBoxPassword" ValidationExpression="^(?:([A-Za-z])(?!.*\1)){7,}$" ValidationGroup="g" runat="server" ErrorMessage="Указан недопустимый пароль">
            <p class="text-danger">Указан недопустимый пароль</p>
        </asp:RegularExpressionValidator>
    </div>
    <asp:Button ID="ButtonCheck" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g" />
    <hr />
    <asp:ValidationSummary ID="ValidationSummary" CssClass="text-danger" ValidationGroup="g" runat="server" />
</div>

</asp:Content>
