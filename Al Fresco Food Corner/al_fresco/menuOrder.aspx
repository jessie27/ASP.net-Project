﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuOrder.aspx.cs" Inherits="menuOrder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Al Fresco</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="Content/custom.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
    <div class="container" >
		<div class="row" >
            <img src="Images/logo.jpeg"  width="100%"/>
		</div>
		
		<div class="row">
		
			<nav class="navbar navbar-inverse" role="navigation">
			
					  <!-- Brand and toggle get grouped for better mobile display -->
					  <div class="navbar-header">
						<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						  <span class="sr-only"></span>
						  <span class="icon-bar"></span>
						  <span class="icon-bar"></span>
						  <span class="icon-bar"></span>
						</button>
					  </div>

					  <!-- Collect the nav links, forms, and other content for toggling -->
					  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
						    <li><a href="food_Order.aspx">Home</a></li>
						  <li><a href="menuOrder.aspx">Menu</a></li>
						  <li><asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button_logout_Click" Text="Logout" /></li>
						</ul>
						
					</div><!-- /.navbar-collapse -->
                <h1>MENU</h1>
        <br />
        <br />
        <asp:Label ID="lbl_test" runat="server" ></asp:Label>&nbsp &nbsp &nbsp &nbsp
        <asp:Label ID="lbl_test1" runat="server" ></asp:Label>&nbsp &nbsp &nbsp &nbsp
         <asp:Label ID="lbl_test2" runat="server" ></asp:Label>&nbsp &nbsp &nbsp &nbsp
        
			</nav>
		</div>
        
        </div>
        <div>
            
        </div>
        </form>
    
    
    </form>
</body>
</html>

