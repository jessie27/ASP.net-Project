<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %> 

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
			</nav>
		</div>
		
		<div class="row">
			<div class="col-md-3">
				
					<div class="society_news_box">
						<h4></h4>
						
			            <a href="news.aspx?field=<%=id1%>"> <asp:Label ID="Label1" runat="server" Text=""></asp:Label></a>
                        <br></br>
                        <a href="news.aspx?field=<%=id2%>"> <asp:Label ID="Label2" runat="server" Text=""></asp:Label></a>
                        <br></br>
                         <a href="news.aspx?field=<%=id3%>"><asp:Label ID="Label3" runat="server" Text=""></asp:Label></a>
                        <br></br>
                        <a href="news.aspx?field=<%=id4%>">  <asp:Label ID="Label4" runat="server" Text=""></asp:Label></a>
                        <br></br>
                        <a href="news.aspx?field=<%=id5%>">  <asp:Label ID="Label5" runat="server" Text=""></asp:Label></a>
					</div>
			
			</div>
		
		
		
			<div class="col-md-9">
				
					<div><h2>Welcome!!!</h2>
					<p><span style="color: rgb(102, 81, 53); font-family: proxima-nova; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 22.4px; orphans: auto; text-align: start; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; background-color: rgb(255, 255, 255);"><span style="color: rgb(102, 81, 53); font-family: droid-serif, helvetica, arial, sans-serif; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21.12px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; ">Welcome to our website!!Dear User, here you can order any kind of food of our restaurant. But please login first. If you are not a registered user then please sign up first. With over 2 years of experience, Al Fresco showcases traditional Italian cooking all using freshly sourced ingredients alongside some of the country’s finest wines. We 
                        provide an extensive choice of food from pizza, pasta, meat and fresh fish specialities for all the family and for every occasion. Al Fresco ensures a great experience, with a great choice at the best price along with a friendly and lively Italian ambience</span><span style="color: rgb(102, 81, 53); font-family: droid-serif, helvetica, arial, sans-serif; font-size: 13.2px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: 21.12px; orphans: auto; text-align: center; text-indent: 0px; text-transform: none; white-space: normal; widows: 1; word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline !important; float: none; ">.</span>At Al&nbsp;Fresco Restaurant, food is more than nutrition for&nbsp;the body, it is all about nutrition for mind and soul. At Al fresco restaurant, food is about far more than just a recipe it is about exploring and considering old cultures and new flavor combinations.Al Fresco&nbsp;specializes in&nbsp;authentic, simple&nbsp;Italian and Mediterranean Cuisine serving classic to modern dishes. </span></p>
					</div>
					
					<div id="slide">
	   
			           <marquee > 
			            <img src="Images/slide/1.jpg" height=250 width=500> </img>
			            <img src="Images/slide/2.jpg" height=250 width=500> </img>
			            <img src="Images/slide/3.jpg" height=250 width=500></img>
                        <img src="Images/slide/4.jpg" height=250 width=500></img>
			           </marquee>
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
