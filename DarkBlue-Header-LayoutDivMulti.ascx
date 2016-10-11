<%@ Control language="vb" AutoEventWireup="false" Explicit="True" Inherits="DotNetNuke.UI.Skins.Skin" %>
<%@ Register TagPrefix="dnn" TagName="LANGUAGE" Src="~/Admin/Skins/Language.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGO" Src="~/Admin/Skins/Logo.ascx" %>
<%@ Register TagPrefix="dnn" TagName="SEARCH" Src="~/Admin/Skins/Search.ascx" %>
<%@ Register TagPrefix="dnn" TagName="CURRENTDATE" Src="~/Admin/Skins/CurrentDate.ascx" %>
<%@ Register TagPrefix="dnn" TagName="USER" Src="~/Admin/Skins/User.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LOGIN" Src="~/Admin/Skins/Login.ascx" %>
<%@ Register TagPrefix="dnn" TagName="BREADCRUMB" Src="~/Admin/Skins/BreadCrumb.ascx" %>
<%@ Register TagPrefix="dnn" TagName="LINKS" Src="~/Admin/Skins/Links.ascx" %>
<%@ Register TagPrefix="dnn" TagName="PRIVACY" Src="~/Admin/Skins/Privacy.ascx" %>
<%@ Register TagPrefix="dnn" TagName="TERMS" Src="~/Admin/Skins/Terms.ascx" %>
<%@ Register TagPrefix="dnn" TagName="COPYRIGHT" Src="~/Admin/Skins/Copyright.ascx" %>
<%@ Register TagPrefix="ddr" TagName="MENU" Src="~/DesktopModules/DDRMenu/Menu.ascx" %>

<meta name="viewport" content="initial-scale=1">
<link rel="stylesheet" type="text/css" href="/AISD/Portals/_default/Skins/HC Responsive/darkblueskin.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">

<div class="siteWrapper">
	<div class="siteHead">
		<div class="fullWidth">
			<div class="leftWidth"></div>
			<div class="boxTop"></div>
			<div class="rightWidth"></div>
		</div>
		<div class="fullWidth menuWrapper">
			<div class="leftWidth"></div>
			<div class="outerNav">
				<h1 class=logoDiv><img src="http://www.aisd.net/images/logo_txt.png"  alt="<%=PortalSettings.PortalName%>" height="60px"></h1>
				<div class="nav">
				<ddr:MENU MenuStyle="Superfish" runat="server" />
				</div>
				</div>
			<div class="rightWidth"></div>
		</div>
		<div class="fullWidth bannerlineTop"></div>
		<div class="fullWidth headerWrapper">
			<div class="leftWidth blueBannerSide"></div>
			<div class="headerInnerWrapper"><div class="headerpane" id="HeaderPane" runat="server"></div></div>
			<div class="rightWidth blueBannerSide"></div>
		</div>
		<div class="fullWidth bannerlineBottom"></div> 	
	</div>
	<div class="siteBody">
		<div class="fullWidth">
			<div class="leftWidth"></div>
			<div class="breadcrumbsearchWrapper">
				<div class="breadcrumbDiv"><span style="font-weight:bold; color:#333333">You are here: </span> &nbsp;<dnn:BREADCRUMB runat="server" id="dnnBREADCRUMB" Separator="&nbsp;&raquo;&nbsp;" cssclass="Breadcrumb" RootLevel="0" UseTitle="True"  />
				</div>
				<div class="dateDiv"><dnn:CURRENTDATE runat="server" id="dnnCURRENTDATE" cssclass="Date" />
				</div>
                				<div class="search"><dnn:SEARCH runat="server" id="dnnSEARCH" Submit="<span style='font-family: FontAwesome; font-size:14px;'>&#xf002</span>" />
				</div>
				</div>
			<div class="contentWidth">
				<div id="TopPane" class="TopPane" runat="server"></div>
				<div class="maincontentDiv">
					<div class="innerContentPane">
						<div id="ContentPane" class="ContentPane" runat="server"></div>
					</div>
					<div id="LeftPane" class="LeftPane left" runat="server"></div>
					<div id="RightPane" class="RightPane right" runat="server"></div>
									<div class="twocolumnPane">
						<div id="twoLeftPane" class="twoLeftPane" runat="server"></div>
						<div id="twoRightPane" class="twoRightPane" runat="server"></div>
					</div>
				</div>
				<div id="BottomPane" class="BottomPane" runat="server"></div>
				<div id="siteFooter">
					<div class="links"><dnn:LINKS runat="server" id="dnnLINKS" Separator="&nbsp;&nbsp;|&nbsp;&nbsp;" Alignment="Horizontal" Level="Root" CssClass="Footer" />
					</div>				
					<div class="CopyPrivacyTerms"><dnn:COPYRIGHT runat="server" id="dnnCOPYRIGHT" cssclass="Footer" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:PRIVACY runat="server" id="dnnPRIVACY" cssclass="Footer" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:TERMS runat="server" id="dnnTERMS" cssclass="Footer" />&nbsp;&nbsp;|&nbsp;&nbsp;<dnn:USER runat="server" id="dnnUSER" cssclass="User" />&nbsp;&nbsp;<dnn:LOGIN runat="server" id="dnnLOGIN" cssclass="Login" /></div>
					</div>
				</div>
			</div>
			<div class="rightWidth"></div>
		</div>	
	</div>
</div>

