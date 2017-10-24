<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
			</nav>
		</div>
		
		<div class="row">
			 <div class="col-md-4">
                 <div class="awrapper">
			
               <div class="form-group">
				<label >User Name:</label>&nbsp;
                  <table>
                    <tr>
                      <td>
                        <asp:TextBox ID="TextBoxName" runat="server" class="form-control"  placeholder="Enter Student Name" Width="330px"></asp:TextBox>
                      </td>
                      <td>
			            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxName" ErrorMessage="Name is required" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                    </tr>
                 </table>
			  </div>
             <div class="form-group">
				<label >Email:</label>&nbsp;
                  <table>
                    <tr>
                      <td>
                        <asp:TextBox ID="TextBoxEmail" runat="server" class="form-control"  placeholder="Enter Email" Width="330px"></asp:TextBox>
                      </td>
                      <td>
			            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Email is required" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBoxEmail" ErrorMessage="Invalid E-mail ID" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                      </td>
                    </tr>
                 </table>
			  </div>
              <div class="form-group">
				<label >Password:</label>&nbsp;
                  <table>
                    <tr>
                      <td>
                        <asp:TextBox ID="TextBoxPass" runat="server" class="form-control"  placeholder="Enter Password" Width="330px"></asp:TextBox>
                      </td>
                      <td>
			            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBoxPass" ErrorMessage="Password is required" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                    </tr>
                 </table>
			  </div>
             <div class="form-group">
				<label >Phone Number:</label>&nbsp;
                  <table>
                    <tr>
                      <td>
                        <asp:TextBox ID="TextBoxPhone" runat="server" class="form-control"  placeholder="Enter Phone number" Width="330px"></asp:TextBox>
                      </td>
                      <td>
			            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBoxPhone" ErrorMessage="Phone required" ForeColor="Red"></asp:RequiredFieldValidator>
                      </td>
                    </tr>
                 </table>
			  </div>
             <div class="form-group">
				 &nbsp;
                  </div>	
			 <asp:Button ID="ButtonAdd" class="btn btn-primary" runat="server" OnClick="Button_add_Click" Text="Submit" /> &nbsp &nbsp &nbsp &nbsp
             <asp:Button ID="ButtonReset" class="btn btn-primary" runat="server" OnClick="Button_reset_Click" Text="Reset" /> &nbsp &nbsp &nbsp &nbsp
            
             <asp:Label ID="Label1" runat="server" Text=""></asp:Label></br>
			</div>
		
			
			</div>
					
		</div>
		
	</div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://code.jquery.com/jquery.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  
			
</form>
		</body>
</html>

