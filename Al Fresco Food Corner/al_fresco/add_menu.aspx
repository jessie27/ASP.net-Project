<%@ Page Language="C#" AutoEventWireup="true" CodeFile="add_menu.aspx.cs" Inherits="add_menu" %>


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
						  <li><a href="add_menu.aspx">Home</a></li>
						  <li><a href="add_menu_home.aspx">Menu</a></li>
						  <
                          <li><asp:Button ID="Button1" class="btn btn-primary" runat="server" OnClick="Button_logout_Click" Text="Logout" /></li>

						</ul>
						
					</div><!-- /.navbar-collapse -->
			</nav>
		</div>
		
		<div class="row">
			
		
			<div class="col-md-6">
				<h1> ADD/EDIT FOOD ITEMS:</h1></br>
                 <div id="news">
                 <p>
				<h1>Give the id of the food to add/edit/delete: </h1>
                     <p>
				         </br>

				     <p>

				<asp:TextBox id="TextBox_id" rows="1"  columns="10" TextMode="multiline" runat="server" /></br></br>
				<asp:Button ID="Button3" class="btn btn-primary" runat="server" OnClick="Button_show_Click" Text="show" />&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button4" class="btn btn-primary" runat="server" OnClick="Button_delete_Click"  OnClientClick="return confirm('Do you want to delete this?')" Text="delete" />&nbsp&nbsp&nbsp&nbsp
                <asp:Button ID="Button2" class="btn btn-primary" runat="server" OnClick="Button_clear_Click" Text="clear all" />
                &nbsp&nbsp&nbsp<asp:Label ID="Label_message" runat="server" Text=""></asp:Label></br>
                
                <h3>FOOD<bold> DETAIL:</bold></h3> </br>
              <!--  <label>&nbsp;&nbsp;&nbsp;date &nbsp( &nbsp day-month-year &nbsp )</label></br></br>
                <asp:TextBox id="TextBox_date" rows="1"  columns="10" TextMode="multiline" runat="server" />              
				</p></br> -->

                     <p>
                         <h3>Food Name</h3>
                <asp:TextBox id="TextBox_heading" rows="2"  columns="50" TextMode="multiline" runat="server" />             
                </p></br>
				
				<p>
                <h3>Food Description</h3>
                    <asp:TextBox id="TextBox_body" rows="5"  columns="50" TextMode="multiline" runat="server" />              
                </p></br>
				
				
				<p>
				<asp:Button ID="Button5" class="btn btn-primary" runat="server" OnClick="Button_add_Click" Text="Add Menu" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    <asp:Button ID="Button6" class="btn btn-primary" runat="server" OnClick="Button_edit_Click" Text="Edit Menu" />     	
                </p>

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

