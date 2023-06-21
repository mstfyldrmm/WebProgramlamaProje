<%@ page language="java"
	import="Model.urunModel,java.util.*,Controller.urunController"
	contentType="text/html; charset= UTF-8" pageEncoding="UTF-8"%>
<%@page import="Controller.kategoriController,Model.kategoriModel"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>urunler</title>
<link rel="stylesheet" href="../css/Home.css">
<link rel="stylesheet" href="../css/Urunler.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.4.1/css/all.css"
	integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz"
	crossorigin="anonymous">
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Satisfy&display=swap');
</style>

<body class=".bg-light">

	<%@ include file="Navbar.jsp"%>


	<%		
 						
 						String uk=request.getParameter("urunKodu");
		 				String urunFotograf=request.getParameter("urunFotograf");
		 				String urunAd=request.getParameter("urunAdi");
		 				String uf=request.getParameter("urunFiyati");
						
		 				if((uk!=null) && (urunFotograf!=null) && (urunAd!=null) && (uf!=null)){
		 					
		 					int urunKodu=Integer.valueOf(uk);
			 				int urunFiyati=Integer.valueOf(uf);
	 						List<urunModel> sepetim= (List<urunModel>)session.getAttribute("sepet");
	 						if(sepetim==null){
	 							
	 							sepetim=new ArrayList<>();
	 							
	 						}
	 						
	 						urunModel sepetUrun=new urunModel(urunKodu,urunFotograf,urunAd,urunFiyati);
		 					sepetim.add(sepetUrun);
		 					session.setAttribute("sepet",sepetim);
		 				}
 				%>


	<div class="row" style="margin-top: 200px">

		<div class="col-3"></div>
		<div class="col-7 ">
			<div class="row">

				<%
    		String veri=request.getParameter("k");
    		if(veri!=null){
    			
    			int kategoriKodu=Integer.valueOf(veri);
        		urunController kategori=new urunController();	
        		List<urunModel> urunler= kategori.readingData();
        		
        		
        		for(urunModel urun:urunler){
					
        			
        			if(urun.getKategoriKodu()==kategoriKodu){
        				
        				
        				%>
				<div class="col p-5" style="font-family: 'Satisfy', cursive;">
					<div class="card p-4 m-3" style="width: 436px; height: 640px;">
						<img src="../img/<%=urun.getFotograf()%>" class="card-img-top"
							alt="...">
						<div class="card-body">
							<h5 class="card-title text-center mb-3"><%=urun.getUrunDetay()%></h5>
							<div class="container"
								style="border: 1px solid rgb(123, 123, 123);">
								<div class="row p-4">
									<div class="col-6 rounded-3" style="background-color: gold;">
										<p class="card-text text-center p-3 fs-4 fw-bold"><%=urun.getUrunFiyat()%>
											<i class="fa-solid fa-turkish-lira-sign"></i>
									</div>
									<div class="col-6">
										<a
											href="homeUrun.jsp?urunKodu=<%=urun.getUrunKodu()%>&urunFotograf=<%=urun.getFotograf()%>&urunAdi=<%=urun.getUrunAdi()%>&urunFiyati=<%=urun.getUrunFiyat()%>"
											class="btn  btn-success p-3"><i
											class="fa-sharp fa-solid fa-bag-shopping"></i> Sepete Ekle</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<%
        			}
        		}
        		
        		
    		}
    		else if(veri==null){
    		%>

				<div class="alert alert-success" role="alert">Urun
					Bulunmamaktadir</div>

				<%}
    		
    	%>







				<div class="col-2 "></div>

			</div>
		</div>

	</div>




	<%-- 			<%@ include file="Footer.jsp" %>  --%>

	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>

</body>
</html>