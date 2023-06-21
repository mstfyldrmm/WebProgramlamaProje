<%@page
	import="Controller.kategoriController,Model.kategoriModel,java.util.*"%>
<%
kategoriController dby = new kategoriController();
List<kategoriModel> kategorilerrr = dby.readingData();
%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<style>
.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: rgb(25,130,67);
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: white;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: gold;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

#main {
  transition: margin-left .5s;
  padding: 16px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<body>
<div id="YanMenu" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
  &times;</a>
<ul class="list-group p-3 list-unstyled">
			<%
			for (kategoriModel kategorii : kategorilerrr) {
			%>
			<li class="fs-4"
				style="height: 50px"><a
				href="Urunler.jsp?k=<%=kategorii.getKategoriId()%>" role="button"
				type="submit" style="width: 100%">
					<p class=" ml-2 float-left " style="font-size: 15px"><%=kategorii.getKategoriAdi()%></p>
			</a></li>
			<%
			}
			%>


		</ul>
</div>

<div id="main">
  <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776;</span>
</div>

<script>
function openNav() {
  document.getElementById("YanMenu").style.width = "250px";
  document.getElementById("main").style.marginLeft = "250px";
  document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
}

function closeNav() {
  document.getElementById("YanMenu").style.width = "0";
  document.getElementById("main").style.marginLeft= "0";
  document.body.style.backgroundColor = "white";
}
</script>
</body>
</html>