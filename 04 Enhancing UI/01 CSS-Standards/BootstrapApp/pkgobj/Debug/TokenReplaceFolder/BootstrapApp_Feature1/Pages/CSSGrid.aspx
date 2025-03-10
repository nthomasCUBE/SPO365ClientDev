﻿<%@ Page language="C#" MasterPageFile="~masterurl/default.master" Inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="Utilities" Namespace="Microsoft.SharePoint.Utilities" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register Tagprefix="SharePoint" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>

<asp:Content ContentPlaceHolderId="PlaceHolderAdditionalPageHead" runat="server">
    <SharePoint:ScriptLink name="sp.js" runat="server" OnDemand="true" LoadAfterUI="true" Localizable="false" />
</asp:Content>

<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
    <WebPartPages:WebPartZone runat="server" FrameType="TitleBarOnly" ID="full" Title="loc:full" />
    <div class="wrapper">
        <div>
            Lorem ipsum dolor sit.
        </div>
        <div>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quisquam libero excepturi cupiditate quasi sit. Iure totam a magni, veritatis, voluptatem voluptates tempora praesentium et nisi eligendi. A saepe eaque aliquam, earum nihil quia? Nemo delectus possimus, explicabo repudiandae recusandae. Mollitia!
        </div>
        <div class="nested">
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
            <div>Lorem</div>
        </div>
        <div>
            Lorem ipsum dolor sit.
        </div>
        <div>
            Lorem ipsum dolor sit.
        </div>
        <div>
            Lorem ipsum dolor sit.
        </div>
        <div>
            Lorem ipsum dolor sit.
        </div>
    </div>
</asp:Content>
