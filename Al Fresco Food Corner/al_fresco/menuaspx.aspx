<%@ Page Language="C#" AutoEventWireup="true" CodeFile="menuaspx.aspx.cs" Inherits="menuaspx" %>

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
						  <li><a href="index.aspx">Home</a></li>
						  <li><a href="menuaspx.aspx">Menu</a></li>
						 
						  
                          <li><a href="login.aspx">Login</a></li>
                          <li><a href="registration.aspx">Sign Up</a></li>
                            <li><a href="AdminLogin.aspx">Admin Login</a></li>
                             <li><a href="SalesLogin.aspx">Stuff Login</a></li>
                             <li><a href="info.aspx">About</a></li>
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
