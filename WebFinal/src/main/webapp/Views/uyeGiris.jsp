<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Uye Giris</title>

    <link rel="stylesheet" href="../css/Home.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
</head>
<style>
  @import url('https://fonts.googleapis.com/css2?family=Pacifico&display=swap');
  .link:hover {
      color: black !important;
    }
</style>
<body style="background-color: #f2f2f2">

        <div class="container bg-success p-5 mt-5 w-50 h-50" style = "border-radius: 50px;background-color: rgb(25,130,67); font-family: 'Pacifico', cursive;">

            <div>
                <div class="mb-5 order-bottom text-center">
                    <a href="Home.jsp"><img src="../img/logo.png" style = "border-radius: 40px; height: 1%;" class = "text-center" alt=""></a>

                </div>
                
                 <div class="container  py-3 mb-4" style="border-radius: 20px ;background-color: rgb(245,242,235); max-width: 96%;">
            <h1 class="text-center mb-4 text-black-50">Üye Girişi</h1>
          </div>
               
                	<%
                		 String oturum = (String)session.getAttribute("session");
 						 if(oturum=="false"){
 							
 							
 							%>
 							<div class="alert alert-danger mx-4	"  role="alert">
 	      					Kullanici Adi veya Parola Yanlis
 	    				</div>
 						<% }
					%>

                	

                <div style="" class="p-4 ">
                
                
                    <form class="needs-validation" action="girisControl.jsp"  novalidate >


                        <div class="md mt-1">

                            <div class="input-group">
                                
                                <input type="text" class="form-control p-4" id="validationCustomUsername" aria-describedby="inputGroupPrepend" name="kullaniciAdi" placeholder="Kullanici Adi" required>
                                <div class="invalid-feedback">
                                    Kullanici Adinizi Giriniz
                                </div>
                            </div>
                            <div class="input-group mt-4">
                                
                                <input type="password" class="form-control p-4" aria-describedby="inputGroupPrepend" name="sifre" placeholder="sifre" required>
                                <div class="invalid-feedback">
                                    Sifrenizi Giriniz 
                                </div>
                            </div>

                        </div>

                          <div class="d-flex justify-content-between">
              <button class="btn px-5 py-3 mt-4 link text-white" type = "submit"  style="background: gold;">Giriş</button>
              <button class="btn px-5 py-3 mt-4" style="background: gold;"> <a href="uyeKayit.jsp" class="text-white text-decoration-none link">Hesabınız Yok mu?</a></button>
            </div>
                    </form>


                </div>

            </div>
        </div>
    




    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

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