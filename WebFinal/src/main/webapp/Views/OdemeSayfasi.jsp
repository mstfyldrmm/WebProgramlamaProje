<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Odeme Sayfasi</title>

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
<body style="background-color: rgb(247, 247, 247 ">
	<%@ include file="Navbar.jsp"%>

	<div class="row m-5 p-5	fs-4" style="font-family: 'Satisfy', cursive;">

		<div class="col-2 "></div>

		<div class="col-6 bg-white mt-2 p-4	">
			<div class="row text-secondary m-3 p-3">
				<b class="m-3">Odeme Secenekleri</b>
				<hr>
			</div>
			<div class="p-5 text-center">
				<ul class="nav nav-tabs" id="myTab" role="tablist">
					<li class="nav-item"><a class="nav-link " id="home-tab"
						data-toggle="tab" href="#home" role="tab" aria-controls="home"
						aria-selected="true">
							<div class="col-3">
								<p class="px-4 ms-2 mt-2 text-secondary">
									<img src="../img/1338-512.png" style="width: 60px" alt=""><br>Kapida
									Odeme
								</p>
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link" id="profile-tab"
						data-toggle="tab" href="#profile" role="tab"
						aria-controls="profile" aria-selected="false">
							<div class="col-3">
								<p class="px-4 ms-2 mt-2 text-secondary">
									<img src="../img/credit-512.png" style="width: 60px;" alt=""><br>Kredi
									Karti
								</p>
							</div>
					</a></li>
					<li class="nav-item"><a class="nav-link " id="contact-tab"
						data-toggle="tab" href="#contact" role="tab"
						aria-controls="contact" aria-selected="false">
							<div class="col-3">
								<p class="px-4 ms-2 mt-2 text-secondary">
									<img src="../img/Donate_Dollar-512.png" style="width: 85px"
										alt=""><br>Havale
								</p>
							</div>
					</a></li>
				</ul>
			</div>
			<div class="tab-content p-3" id="myTabContent">
				<div class="tab-pane fade show p-3	" id="home" role="tabpanel"
					aria-labelledby="home-tab">
					<a href="odemecontrol.jsp?tip=kapidaOdeme">
						<button class="btn btn-success pos stic p-3"
							onclick="setTimeout(sayfaYonlendir, 5000)"
							style="width: 190px; margin-top: 80px; margin-left: 132px;">
							<i class="fa-solid fa-check me-3"></i> Siparisi Tamamla
						</button>
					</a>
				</div>
				<div class="tab-pane fade" id="profile" role="tabpanel"
					aria-labelledby="profile-tab">

					<a href="odemecontrol.jsp?tip=krediKarti">
						<button class="btn btn-success pos stic p-3"
							onclick="sayfaYonlendir()"
							style="width: 190px; margin-top: 80px; margin-left: 132px;">
							<i class="fa-solid fa-check me-3"></i>Siparisi Tamamla
						</button>
					</a>
				</div>
				<div class="tab-pane fade show" id="contact" role="tabpanel"
					aria-labelledby="contact-tab">

					<a href="odemecontrol.jsp?tip=havale&">
						<button class="btn btn-success pos stic p-3"
							onclick="sayfaYonlendir()"
							style="width: 190px; margin-top: 80px; margin-left: 132px;">
							<i class="fa-solid fa-check me-3 "></i>Siparisi Tamamla
						</button>
					</a>

				</div>
			</div>

		</div>






		<div class="col-4 p-5" style="border-radius: 20px;">
			<div class=" bg-white mt-3 p-5 text-secondary mb-5"
				style="width: 400px; height: 350px; border-radius: 20px;">


				<%
				String onay=(String)session.getAttribute("onay");
				if(onay=="true"){
			%>

				<div class="alert alert-success" onclick="sayfaYonlendir()"
					role="alert">Siparisiniz Alindi</div>

				<%	}
			%>

				<b>Siparis Ozeti</b>
				<hr>
				<p>
					Sepet Toplami <span class="ms-5 "><%=session.getAttribute("sayac")%>
						<i class="fa-solid fa-turkish-lira-sign"></i></span>
				</p>
				<p class="text-dark">
					Genel Toplam <span class="ms-5 mb-5"><%=session.getAttribute("sayac")%>
						<i class="fa-solid fa-turkish-lira-sign"></i></span>
				</p>

			</div>

		</div>
	</div>
	<%@ include file="Footer.jsp"%>



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

	<script>
    function sayfaYonlendir() {
        setTimeout(function() {
            window.location.href = "Home.jsp";
        }, 5000); // 5000 milisaniye (5 saniye) sonra yönlendirme gerçekleşecek
    }
    
        // Example starter JavaScript for disabling form submissions if there are invalid fields
        (function() {
            'use strict';
            window.addEventListener('load', function() {
                // Fetch all the forms we want to apply custom Bootstrap validation styles to
                var forms = document.getElementsByClassName('needs-validation');
                // Loop over them and prevent submission
                var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                        if (form.checkValidity() === false) {
                            event.preventDefault();
                            event.stopPropagation();
                        }
                        form.classList.add('was-validated');
                    }, false);
                });
            }, false);
        })();

    </script>
</body>
</html>