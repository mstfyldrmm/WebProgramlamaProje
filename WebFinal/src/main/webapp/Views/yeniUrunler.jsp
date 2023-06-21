
<%@page import ="Controller.urunController,Model.urunModel,java.util.*"%>
<%	
		urunController ozelUrun=new urunController();
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<head>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Satisfy&display=swap');
</style>
    
<div class="container mt-5 mb-5" style="font-family: 'Satisfy', cursive;">
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
        List<urunModel> urunler=ozelUrun.ozelKategori(1);
        
        for(urunModel urun: urunler) {
        	%>
       <div class="col">
          <div class="card p-3">
            <img src="../img/<%=urun.getFotograf()%>" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title text-center mb-3"><%=urun.getUrunDetay()%></h5>
              <div class="container" style="border: 1px solid rgb(123, 123, 123);">
                <div class="row p-4">
                  <div class="col-6 rounded-3" style="background-color: gold;">
                    <p class="card-text text-center p-3 fs-4 fw-bold"><%=urun.getUrunFiyat()%> <i class="fa-solid fa-turkish-lira-sign"></i>
                  </div>
                  <div class="col-6">
                    <a href="homeUrun.jsp?urunKodu=<%=urun.getUrunKodu()%>&urunFotograf=<%=urun.getFotograf()%>&urunAdi=<%=urun.getUrunAdi()%>&urunFiyati=<%=urun.getUrunFiyat()%>" class="btn  btn-success p-3"><i class="fa-sharp fa-solid fa-bag-shopping"></i>  Sepete Ekle</a>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <%}
        %> 
      </div>
    </div>