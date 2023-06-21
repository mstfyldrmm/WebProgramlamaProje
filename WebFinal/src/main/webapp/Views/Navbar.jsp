<%@page
	import="Controller.kategoriController,Model.kategoriModel,java.util.*"%>
<%
kategoriController dby = new kategoriController();
List<kategoriModel> kategorilerrr = dby.readingData();
%>

<%@page import="Model.urunModel,java.util.*" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/header.css" />
    <script
      src="https://kit.fontawesome.com/6055288dcc.js"
      crossorigin="anonymous"
    ></script>
  </head>
    <style>
    @import url('https://fonts.googleapis.com/css2?family=Mali:wght@400;700&display=swap');

    .link:hover {
      color: gold !important;
    }
    
  </style>
  <body>
    <section class="arama">
      <nav class="navbar navbar-expand-lg navbar-light bg-light p-3">
        <div class="container-fluid">
          <a href="Home.jsp"><img src="../img/logo.png" class="logo ms-3"></a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="container-fluid px-5">
            <div class="collapse navbar-collapse container-fluid px-5" id="navbarSupportedContent">
            <form class="d-flex ms-5">
              <input class="form-control me-2 form-control-lg px-5" type="search" placeholder="Ne Aramistiniz" aria-label="Search">
              <button class="btn btn-outline-success" type="submit">Ara</button>
            </form>
          </div>
          </div>
          
          <%
				
				String cookieName = "username";
				Cookie cookies [] = request.getCookies();
				Cookie myCookie = null;
				if (cookies != null){
					
					for (int i = 0; i < cookies.length; i++){
						
						if (cookies [i].getName().equals(cookieName)){
								
							myCookie = cookies[i];
							break;
						}
					}
				}
				
				

			%>
			
			
            <ul class="nav justify-content-end mt-3 mr-5 " style="margin-left: 150px; font-family: 'Pacifico', cursive; ">
            
            
            <% 
			
            	if(myCookie!=null){
            		
            		
            		if(myCookie.getValue().equals("false")) {
    					
            			%>
            	            <li class="nav-item hover1 ">
                                <a class="nav-link text-black-50" href="uyeGiris.jsp"><i class="fa-solid fa-user fs-2 text-success"></i><br>Hesabim</a>
                            </li>
            			<%		
            				}else{
            			%>
            				<li class="nav-item hover1 ">
                                <a class="nav-link text-black-50 " href="KisiselBilgilerim.jsp"><i class="fa-solid fa-user fs-2 text-success"></i><br>Hesabim</a>
                            </li>
            			<%	}

            		
            	}else{
            		
            		%>
    	            <li class="nav-item hover1 ">
                        <a class="nav-link text-black-50 " href="uyeGiris.jsp"><i class="fa-solid fa-user fs-2 text-success"></i><br>Hesabim</a>
                    </li>
    			<%	
            		
            		
            	}
            
			%>
			
			<%
				int urunSayisi;
				List<urunModel> urunlerim=(List<urunModel>)session.getAttribute("sepet");
				if(urunlerim!=null){
					
					urunSayisi=urunlerim.size();
				}
				else{
					urunSayisi=0;
				}
			%>
			<li class="nav-item hover1  me-3">
					<a href="Sepetim.jsp" class="fs-2 me-2"><i class="fa-solid fa-cart-shopping text-success"></i></a><%=urunSayisi %></span><br> Sepetim</a>
                   
                </li>
      </nav>
    </section>


    <section class="main">
      <nav class="navbar navbar-expand-lg navbar-light" style= "font-family: 'Pacifico', cursive;">
        <div class="container-fluid">
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>	
          <div class="collapse navbar-collapse justify-content-center" id="navbarNavAltMarkup">
            <div class="navbar-nav">
            <span style="font-size:30px;cursor:pointer; color: white;" onclick="openNav()">&#9776;</span>
              <a class="nav-link active text-white fs-5 mx-4" aria-current="page" href="">Tum Kategoriler</a>
              <a class="nav-link text-white fs-5 mx-4" href="#newProduct">Yeni Urunler</a>
              <a class="nav-link text-white fs-5 mx-4" href="#sell">Indirimdekiler</a>
              <a class="nav-link text-white fs-5 mx-4" href="#satis">Cok Satanlar</a>
              <a class="nav-link text-white fs-5 mx-4" href="#hikaye">Hikayemiz</a>
              <a class="nav-link text-white fs-5 mx-4" href="#iletisim">Iletisim</a>
            </div>
          </div>
        </div>
      </nav>
    </section>
    
    <div id="YanMenu" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">
  &times;</a>
<ul class="list-group p-3 list-unstyled">
			<%
			for (kategoriModel kategorii : kategorilerrr) {
			%>
			<li class="fs-4"
				style="height: 80px"><a
				href="Urunler.jsp?k=<%=kategorii.getKategoriId()%>" role="button"
				type="submit" style="width: 100%">
					<p class="float-left fs-5 p-3 m-3" style = "font-family: 'Pacifico', cursive;"><i class="fa-sharp fa-solid fa-link" style = "color:gold;"></i>  <%=kategorii.getKategoriAdi()%></p>
			</a></li>
			<%
			}
			%>


		</ul>
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