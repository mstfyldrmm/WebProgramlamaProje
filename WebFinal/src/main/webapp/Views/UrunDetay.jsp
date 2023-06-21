<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Urun detayi</title>

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
<body>

	<%@ include file="Navbar.jsp"%>

	<div class="row mx-auto p-3 mb-5"
		style="width: 80%; margin-top: 100px;">

		<div class="col-2 "></div>

		<div class="row bg-white p-5">
			<div class="col-5">
				<div id="carouselExampleControls" class="carousel slide my-2"
					data-ride="carousel" style="border: 1px solid grey">
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img src="magaza-2.jpg" class="d-block w-100"
								style="max-height: 200px;" alt="..." />
						</div>
						<div class="carousel-item">
							<img
								src="../img/trabzon-elma-sirkesi-250-gr-nar-eksisi-sirke-toprak-dogal-karadeniz-176-76-K.jpg"
								class="d-block w-100 h-50" alt="..." />
						</div>
						<div class="carousel-item">
							<img
								src="../img/artvin-hatila-vadisi-bali-1000-gr-bal-pekmez-toprak-dogal-karadeniz-140-61-K.jpg"
								class="d-block w-100 h-50" alt="..." />
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleControls"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleControls"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>
			</div>
			<div class="col-5">
				<div class="row mt- ms-4 text-dark fw-light fs-3 p-3">
					<b class="text-success text-capitalize">Urun Adi: <span
						class="text-dark fw-light fs-3">ad</span></b>
				</div>
				<div class="row mt- ms-4 text-dark fw-light fs-3 p-3">
					<b class="text-success text-capitalize">Urun Kodu: <span
						class="text-dark fw-light fs-3">kod</span></b>
				</div>

				<div class="row mt-2 p-3">
					<form>
						<div class="row text-success">
							<span
								class="border border-start-0 border-end-0 p-3 text-success ms-4 fs-1">3000
								<i class="fa-sharp fa-solid fa-turkish-lira-sign"></i>
							</span>
							<div class="row">
								<div class="ms-4 p-4 col-6">
									<select class="form-select" id="validationCustom04" required="">
										<option selected="" disabled="" value="">Adet</option>

										<option>1</option>

										<option>2</option>

										<option>3</option>

										<option>4</option>

										<option>5</option>

										<option>6</option>

										<option>7</option>

										<option>8</option>

										<option>9</option>

										<option>10</option>
									</select>
									<div class="invalid-feedback">Adet Seciniz</div>
								</div>

								<button class="btn btn-success float-right ms-5 p-3 mt-3"
									style="width: 180px;" type="submit">
									<i class="fa-sharp fa-solid fa-bag-shopping"></i><span
										class="fs-5 ms-1"> Sepete Ekle</span>
								</button>
							</div>
					</form>
				</div>
			</div>

			<div class="row text-dark fw-light fs-3 mt-3 ms-5 text-capitalize">
				<b> Urun Detayi </b>
			</div>
			<div class="row text-dark fw-lighter mt-2 p-3 ms-4">
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
					Dolor voluptates labore alias iste pariatur, omnis nulla reiciendis
					nihil accusantium quo nesciunt deserunt necessitatibus illo nemo,
					aliquid odio inventore id non tenetur laborum sequi, maxime
					explicabo dolore? Iure asperiores, nostrum velit labore repellendus
					quas ea ex, consectetur reprehenderit nam eum autem expedita nihil
					odio rerum fuga delectus doloribus! Recusandae nihil id, quod ex
					aliquam quo doloribus soluta! Iure beatae dolores voluptatem
					voluptate iusto, ipsum nostrum. Mollitia molestiae dignissimos
					fugit laudantium ducimus nisi, accusamus non quis ea laborum
					aliquid ipsum totam repellat ipsam! Temporibus nisi molestiae
					accusantium aperiam, molestias esse facilis minima.</p>
			</div>
		</div>
	</div>

	<div class="col-2 "></div>

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
</body>
</html>