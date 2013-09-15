
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dbo.DatabaseAgent,java.util.List,java.util.ListIterator" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome to Music Zone- Online CD Store</title>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css"  >

</head>

<body>
<div class="page-header">
 <div class="img">
  <a href="index.jsp">
  <img src="images/Logo.jpg" align="left" ></a>
<h2> <b>WELCOME To MUSIC ZONE </b></h2>
<h4> -Online CD Store</h4>

 </div>
</div>

<div id="menu">
		<ul>
   			<li><a href='index.html'><span>Home</span></a></li>
   			<li><a href='#'><span>About</span></a></li>
   			<li class='has-sub'><a href='#'><span>Categories</span></a>
      			<ul>
					<%
						DatabaseAgent dba = new DatabaseAgent();
						List<String> categories = dba
								.getResultSet("select distinct category from cd");
						ListIterator<String> iterator = categories.listIterator();

						while (iterator.hasNext()) {
					%>
					<li class='has-sub'><a href='#'><span><%=iterator.next()%></span></a>
         			</li>
					<%
						;
						}
					%>
				</ul>
			</li>
   			<li class='has-sub'><a href='#'><span>FM Streaming</span></a>
   				<ul>
   			    	<li class='has-sub'><a href='#'><span>CHUO</span></a></li>
         			<li class='has-sub'><a href='#'><span>Radio Canada</span></a></li>
         			<li class='has-sub'><a href='#'><span>JACK FM</span></a></li>
         		</ul>
         	</li>
   			<li class='last'><a href='#'><span>Contact</span></a></li>
		</ul>
	</div>
</body>
</html>





















