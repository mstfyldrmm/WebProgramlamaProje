<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <style>
      .carousel-item {
        right: -30%;
        margin-top: 20%;	
      }
      
      .buton{ 
       padding: 22px !important;
       
      }
    </style>
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
      crossorigin="anonymous"
    />
    <script
      src="https://kit.fontawesome.com/6055288dcc.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="container-fluid">
      <div class="container position-relative" style="background-image: url('../img/home-slider-bg.jpg'); margin: 0px auto; padding: 0px; max-height: 584px; height: 584px; overflow: visible;">
        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
          <div class="carousel-inner text-center ">
            <div class="carousel-item active">
              <img src="../img/11peynirler (1).png" class="d-block w-25 m-auto">
            </div>
            <div class="carousel-item">
              <img src="../img/kahvalti-gorsel (1).png" class="d-block w-25 m-auto">
            </div>
          </div>
        </div>
          <button class="carousel-control-prev " type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next"><span class="carousel-control-prev-icon btn-success  rounded-circle buton" aria-hidden="true"></span></button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next"><span class="carousel-control-next-icon btn-success rounded-circle buton" aria-hidden="true"></span></button>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  </body>
</html>

