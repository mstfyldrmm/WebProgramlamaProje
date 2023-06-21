
<%@page import ="Controller.urunController,Model.urunModel,java.util.*"%>
<%	
		urunController ozelUrun=new urunController();
		urunController randomUrun = new urunController();
%>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<style>
  @import url('https://fonts.googleapis.com/css2?family=Satisfy&display=swap');
</style>
<script
      src="https://kit.fontawesome.com/6055288dcc.js"
      crossorigin="anonymous"
    ></script>

<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
/>


    <div data-spy="scroll" data-target="#list-example" data-offset="0" class="scrollspy-example mt-3">
        <div class="container p-4 rounded-3 bg-success">
      <h2 class="text-center text-white" id = "newProduct" style="font-family: 'Pacifico', cursive;">Yeni Urunler</h2>
      <div class="container text-center text-white p-3">
        <i class="fa-sharp fa-solid fa-seedling fs-2"></i>
      </div>
    </div>
        
        <div class="container mt-5 mb-5">
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
        
        List<urunModel> rndmUrunler = randomUrun.readingData(); 
        Random r=new Random(); //random sınıfı
        int a=r.nextInt(rndmUrunler.size());
        int boyut = rndmUrunler.size();
        
        List<urunModel> yeniUrunler = new ArrayList();
        
        for(int i = 0; i < 6; i++) {
        	yeniUrunler.add(rndmUrunler.get(boyut - 1));
        	boyut--;
        }
      
        for(urunModel urun: yeniUrunler) {
        	%>
       <div class="col" style = "font-family: 'Satisfy', cursive;">
          <div class="card p-3 mb-5 mt-5">
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
        
        
        <div div class="container p-3 rounded-3 text-white" style="background-color: gold;">
      <h2 class="text-center" style="font-family: 'Pacifico', cursive;"  id = "sell">Indirimdekiler</h2>
      <div class="container text-center p-3">
        <i class="fa-solid fa-percent fs-2"></i>
      </div>
    </div>

        
         <div class="container mt-5 mb-5" style = "font-family: 'Satisfy', cursive;">
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
        List<urunModel> rndmUrunler2 = randomUrun.readingData(); 
        Random r2=new Random(); //random sınıfı
        int a2=r.nextInt(rndmUrunler.size());
        int boyut2 = rndmUrunler.size();
        
        List<urunModel> indirimliUrunler = new ArrayList();
        
        for(int i = 0; i < 3; i++) {
        	indirimliUrunler.add(rndmUrunler.get(a2 - 1));
        	a2=r.nextInt(rndmUrunler.size());
        }
        
        for(urunModel urun: indirimliUrunler) {
        	 Random r5=new Random(); //random sınıfı
        	 
             int a5=r5.nextInt(10);
             
        	%>
       <div class="col" style = "font-family: 'Satisfy', cursive;" id="satis">
          <div class="card p-3 mb-5 mt-5">
            <img src="../img/<%=urun.getFotograf()%>" class="card-img-top" alt="...">
            <div class="card-body">
              <h5 class="card-title text-center mb-3"><%=urun.getUrunDetay()%></h5>
              <div class="container" style="border: 1px solid rgb(123, 123, 123);">
                <div class="row p-4">
                  <div class="col-6 rounded-3" style="background-color: gold;">
                    <p class="card-text text-center p-3 fs-4 fw-bold"><%=urun.getUrunFiyat()%><i class="fa-solid fa-turkish-lira-sign"></i>
                    
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



      

        <div div class="container p-3 rounded-3 "  style="background-color: rgb(245,242,235);">
      <h2 class="text-center" style="font-family: 'Pacifico', cursive;">Cok Satanlar</h2>
      <div class="container text-center p-3">
        <i class="fa-solid fa-percent fs-2"></i>
      </div>
    </div>



       <div class="container mt-5 mb-5" style = "font-family: 'Satisfy', cursive;">
      <div class="row row-cols-1 row-cols-md-3 g-4">
        <%
        List<urunModel> rndmUrunler3 = randomUrun.readingData(); 
        Random r3=new Random(); //random sınıfı
        int a3=r.nextInt(rndmUrunler.size());
        int boyut3 = rndmUrunler.size();
        
        List<urunModel> cokSatanUrunler = new ArrayList();
        
        for(int i = 0; i < 3; i++) {
        	cokSatanUrunler.add(rndmUrunler.get(a3 - 1));
        	a3=r.nextInt(rndmUrunler.size());
        }
        
        for(urunModel urun: cokSatanUrunler) {
        	%>
       <div class="col" style = "font-family: 'Satisfy', cursive;">
          <div class="card p-3 mb-5 mt-5"  id= "satis">
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



        <%@ include file="Hikayemiz.jsp"%>


