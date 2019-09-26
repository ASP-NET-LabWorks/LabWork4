<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="LabWork4._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<script>
    function IsPrime(source, args) {
        const n = args.Value
        const boundary = Math.floor(Math.sqrt(n))
        for (let i = 2; i <= boundary; i++) {
            if (n % i === 0) {
                args.IsValid = false
                return
            }
        }
        args.IsValid = n > 1
    }
</script>

<div class="jumbotron">
    <h1>Элементы управления с валидацией ввода</h1>
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelName" runat="server" Text="Имя" AssociatedControlID="TextBoxName"></asp:Label>
        <asp:TextBox ID="TextBoxName" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorName" ControlToValidate="TextBoxName" ValidationGroup="g1" runat="server" ErrorMessage="Не указано имя">
            <p class="text-danger">Не указано имя</p>
        </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelFaculty" runat="server" Text="Факультет" AssociatedControlID="DropDownListFaculty"></asp:Label>
        <asp:DropDownList ID="DropDownListFaculty" CssClass="form-control" runat="server">
            <asp:ListItem Value="" Selected="True" Text="Не указан"></asp:ListItem>
            <asp:ListItem Value="ИТ"></asp:ListItem>
            <asp:ListItem Value="ЛХ"></asp:ListItem>
            <asp:ListItem Value="ТОВ"></asp:ListItem>
            <asp:ListItem Value="ТТЛП"></asp:ListItem>
            <asp:ListItem Value="ХТиТ"></asp:ListItem>
            <asp:ListItem Value="ПиМ"></asp:ListItem>
            <asp:ListItem Value="ИЭ"></asp:ListItem>
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorFaculty" ControlToValidate="DropDownListFaculty" ValidationGroup="g1" runat="server" ErrorMessage="Не указан факультет">
            <p class="text-danger">Не указан факультет</p>
        </asp:RequiredFieldValidator>
    </div>
    <asp:Button ID="ButtonCheck1" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g1" />
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelNumber" runat="server" Text="Число" AssociatedControlID="TextBoxNumber"></asp:Label>
        <asp:TextBox ID="TextBoxNumber" CssClass="form-control" runat="server" TextMode="Number"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumber" ControlToValidate="TextBoxNumber" ValidationGroup="g2" runat="server" ErrorMessage="Не указано число">
            <p class="text-danger">Не указано число</p>
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorNumber" Type="Integer" MinimumValue="100" MaximumValue="200" runat="server" ErrorMessage="Указано недопустимое число" ControlToValidate="TextBoxNumber" ValidationGroup="g2">
            <p class="text-danger">Указано недопустимое число</p>
        </asp:RangeValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelDate" runat="server" Text="Дата от 01.01.2011 до 31.12.2011" AssociatedControlID="TextBoxDate"></asp:Label>
        <asp:TextBox ID="TextBoxDate" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" ControlToValidate="TextBoxDate" ValidationGroup="g2" runat="server" ErrorMessage="Не указана дата">
            <p class="text-danger">Не указана дата</p>
        </asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidatorDate" Type="Date" MinimumValue="01.01.2011" MaximumValue="31.12.2011" runat="server" ErrorMessage="Указана недопустимая дата" ControlToValidate="TextBoxDate" ValidationGroup="g2">
            <p class="text-danger">Указана недопустимая дата</p>
        </asp:RangeValidator>
    </div>
    <asp:Button ID="ButtonCheck2" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g2" />
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelDate1" runat="server" Text="Дата 1" AssociatedControlID="TextBoxDate1"></asp:Label>
        <asp:TextBox ID="TextBoxDate1" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate1" ControlToValidate="TextBoxDate1" ValidationGroup="g3" runat="server" ErrorMessage="Не указана первая дата">
            <p class="text-danger">Не указана первая дата</p>
        </asp:RequiredFieldValidator>
    </div>
    <div class="form-group">
        <asp:Label ID="LabelDate2" runat="server" Text="Дата 2" AssociatedControlID="TextBoxDate2"></asp:Label>
        <asp:TextBox ID="TextBoxDate2" CssClass="form-control" runat="server" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="TextBoxDate2" ValidationGroup="g3" runat="server" ErrorMessage="Не указана вторая дата">
            <p class="text-danger">Не указана вторая дата</p>
        </asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidatorDates" Type="Date" ControlToValidate="TextBoxDate1" Operator="GreaterThan" ControlToCompare="TextBoxDate2" runat="server" ErrorMessage="CompareValidator">
            <p class="text-danger">Указана недопустимая пара дат</p>
        </asp:CompareValidator>
    </div>
    <asp:Button ID="ButtonCheck3" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g3" />
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelEmail" runat="server" Text="e-mail" AssociatedControlID="TextBoxEmail"></asp:Label>
        <asp:TextBox ID="TextBoxEmail" CssClass="form-control" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" ControlToValidate="TextBoxEmail" ValidationGroup="g4" runat="server" ErrorMessage="Не указан e-mail">
            <p class="text-danger">Не указан e-mail</p>
        </asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" ControlToValidate="TextBoxEmail" ValidationExpression=".*@.{2,}\..{2,}" ValidationGroup="g4" runat="server" ErrorMessage="Указан недопустимый e-mail">
            <p class="text-danger">Указан недопустимый e-mail</p>
        </asp:RegularExpressionValidator>
    </div>
    <asp:Button ID="ButtonCheck4" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g4" />
    <hr />
    <div class="form-group">
        <asp:Label ID="LabelPrime" runat="server" Text="Простое число" AssociatedControlID="TextBoxPrime"></asp:Label>
        <asp:TextBox ID="TextBoxPrime" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPrime" ControlToValidate="TextBoxPrime" ValidationGroup="g5" runat="server" ErrorMessage="Не указано число">
            <p class="text-danger">Не указано число</p>
        </asp:RequiredFieldValidator>
        <asp:CustomValidator ID="CustomValidatorPrime" ControlToValidate="TextBoxPrime" OnServerValidate="CustomValidatorPrime_ServerValidate" EnableClientScript="true" ClientValidationFunction="IsPrime" ValidationGroup="g5" runat="server" ErrorMessage="Указано недопустимое число">
            <p class="text-danger">Указано недопустимое число</p>
        </asp:CustomValidator>
    </div>
    <asp:Button ID="ButtonCheck5" CssClass="btn btn-primary" runat="server" Text="Проверить" ValidationGroup="g5" />
</div>

</asp:Content>
