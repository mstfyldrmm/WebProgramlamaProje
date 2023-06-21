<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sifre Degisikligi</title>

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
@import
	url('https://fonts.googleapis.com/css2?family=Mali:wght@400;700&display=swap')
	;
</style>
<body>
	<%@ include file="Navbar.jsp"%>


	<div class="row"
		style="background-image: url('../img/koy.jpg'); font-family: 'Pacifico', cursive;">
		<%@ include file="HesapAyarlari.jsp"%>
		<div class="col-5 m-5 p-5">
			<form class="needs-validation " novalidate>
				<div class="form-group md mt-5 ml-5">
					<input type="password" class="form-control p-4"
						aria-describedby="inputGroupPrepend" placeholder="Eski Sifre"
						required>
					<div class="invalid-feedback">Eski Sifrenizi Giriniz</div>
				</div>

				<div class="form-group md mt-5 ml-5">
					<input type="password" class="form-control p-4"
						aria-describedby="inputGroupPrepend" placeholder="Yeni Sifre"
						required>
					<div class="invalid-feedback">Yeni Sifrenizi Giriniz</div>
				</div>

				<div class="form-group md mt-5 ml-5">
					<input type="password" class="form-control p-4"
						aria-describedby="inputGroupPrepend"
						placeholder="Yeni Sifre Tekrar" required>
					<div class="invalid-feedback">Yeni Sifrenizi Tekrar Giriniz</div>
				</div>

				<button class="btn  btn-lg btn-block mt-5 ml-5 mb-4" type="submit"
					style="background-color: rgb(248, 199, 76)">Değiştir</button>
			</form>
		</div>
	</div>


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