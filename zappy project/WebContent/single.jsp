
<!DOCTYPE HTML>
<html>
<head>
<title>Zappy</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $(".dropdown img.flag").addClass("flagvisibility");

            $(".dropdown dt a").click(function() {
                $(".dropdown dd ul").toggle();
            });
                        
            $(".dropdown dd ul li a").click(function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html("Selected value is: " + getSelectedValue("sample"));
            });
                        
            function getSelectedValue(id) {
                return $("#" + id).find("dt a span.value").html();
            }

            $(document).bind('click', function(e) {
                var $clicked = $(e.target);
                if (! $clicked.parents().hasClass("dropdown"))
                    $(".dropdown dd ul").hide();
            });


            $("#flagSwitcher").click(function() {
                $(".dropdown img.flag").toggleClass("flagvisibility");
            });
        });
     </script>
     <!----details-product-slider--->
				<!-- Include the Etalage files -->
					<link rel="stylesheet" href="css/etalage.css">
					<script src="js/jquery.etalage.min.js"></script>
				<!-- Include the Etalage files -->
				<script>
						jQuery(document).ready(function($){
			
							$('#etalage').etalage({
								thumb_image_width: 300,
								thumb_image_height: 400,
								
								show_hint: true,
								click_callback: function(image_anchor, instance_id){
									alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
								}
							});
							// This is for the dropdown list example:
							$('.dropdownlist').change(function(){
								etalage_show( $(this).find('option:selected').attr('class') );
							});

					});
				</script>
				<!----//details-product-slider--->	
</head>
<% 
HttpSession session1 =request.getSession();
String Name=(String)session.getAttribute("FirstName");
%>
<body>
	<div class="header">
		<div class="container">
			<div class="row">
			  <div class="col-md-12">
				 <div class="header-left">
					 <div class="logo">
						<a href="index.jsp"><img src="images/logo.png" alt=""/></a>
					 </div>
					 <div class="menu">
						  <a class="toggleMenu" href="#"><img src="images/nav.png" alt="" /></a>
						    <ul class="nav" id="nav">
						    	<li><a href="ShowProduct">Store</a></li>
						    	
								<li><a href="contact.jsp">Contact</a></li>
								<li><a href="cart.jsp">Cart</a></li>
								
								<% 
								if(Name !=null){
									%>
									<li><a href="InvalidateJava">Logout</a></li>
									<li><h3><font color="white">Welcome <% out.print(Name); %></font></h3></li>
									<%
								}else{   %>

																<li><a href="login.jsp">Login</a></li>
												      			<li><a href="admin.jsp">Admin</a></li>
								<% 
								}
								%>								
								<div class="clear"></div>
							</ul>
							<script type="text/javascript" src="js/responsive-nav.js"></script>
				    </div>							
	    		    <div class="clear"></div>
	    	    </div>
	            
	      </div>
		 </div>
	    </div>
	  </div>
	   <%@page import="java.util.ArrayList,bean.addproductbean" %>
	<% ArrayList<addproductbean> list=(ArrayList<addproductbean>)request.getAttribute("data");
	 
    for(addproductbean x:list)
    {  	

		    %>
     <div class="main">
      <div class="shop_top">
		<div class="container">
			<div class="row">
				<div class="col-md-9 single_left">
				   <div class="single_image">
					     <ul id="etalage">
							<li>
								
									<img class="etalage_thumb_image" src="imagesap/<%=x.getImage()%>" height="150" width="150" />
									
							</li>
						</ul>
					    </div>
				        <!-- end product_slider -->
				        <div class="single_right">
				        	<h1 style="font-weight: bold" /><%=x.getProductname()%> </h1>
				        	<p class="m_10"><h4>   <%=x.getDescription()%>   </h4></br>
				        	<img  src="imagesap/<%=x.getImage()%>" height="150" width="450" />
							
							
							
				        </div>
				        <div class="clear"> </div>
				</div>
				<div class="col-md-3">
				  <div class="box-info-product">
					<p class="price2"><%=x.getProductprice()%></p>
					      <input type="number" name="quantity" value="1" min="1" required/>
							</form>
			
						<center>
							<form action="AddToCart" method="post">
								</br><center><input type="submit" class="btn btn-primary" value="Add to cart" name="submit" onClick="return confirm('Really you want to add product cart')" /><br/></center>									
							</form>
						</center>
				   </div>
			   </div>
			</div>		
<%
    }
    %>	
			</div>	
	     </div>
	   </div>
	  </div>
	 
</body>	
</html>