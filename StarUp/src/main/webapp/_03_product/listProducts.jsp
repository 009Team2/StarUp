
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="/fragment/header.jsp" />
<c:set var="funcName" value="REG" scope="session" />
  
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Products</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" rel="stylesheet">  
    <link href="https://stackpath.bootstrapcdn.com/bootswatch/4.1.3/sketchy/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
    <link href="../homepage/index_main.css" rel="stylesheet">
</head>
<body>

    <!-- 商品輪播 -->
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" style="height:250px; margin: 0px">
                <div class="carousel-inner" style="overflow:hidden; height:250px; margin:0px;">
                  <div class="carousel-item active" >
                    <img class="d-block w-100" src="../images/sew.jpg" alt="First slide" style="width:100%;">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="../images/wps.jpg" alt="Second slide">
                  </div>
                  <div class="carousel-item">
                    <img class="d-block w-100" src="../images/gos.jpg" alt="Third slide">
                  </div>
                </div>
                <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="sr-only">Next</span>
                </a>
              </div>
        <!-- -------------------------navgation end----------------------------- -->
        <div class="content container-fluid" style="display: flex; padding: 0px;">
            <!-- 側邊欄 -->
            <div class="section col-lg-2" style="width:100px; padding: 20px 0px;">
                <nav class="nav flex-column nav-tabs">
                    <a class="nav-link active" href="#">分類商品</a>
                    <a class="nav-link" href="#">原創桌遊</a>
                    <a class="nav-link" href="#">文創周邊小物</a>
                    
                </nav>
                <nav class="nav flex-column nav-tabs">
                        <a class="nav-link active" href="#">人氣商品推薦</a>
                        <a class="nav-link" href="#">每週新品</a>
                        <a class="nav-link" href="#">熱銷推薦</a>
                        <a class="nav-link" href="#">高冷系列</a>
                        <a class="nav-link" href="#">厭世系列</a>
                        <a class="nav-link" href="#">簡約系列</a>
                        <a class="nav-link" href="#">丹寧系列</a>
                        <a class="nav-link" href="#">個性系列</a>
                        
                </nav>
                <nav class="nav flex-column nav-tabs">
                        <a class="nav-link" href="#"><i class="fas fa-shopping-cart fa-lg"></i></a>
                        <a class="nav-link" href="#">購物清單</a>
                        <a class="nav-link" href="#">我的訂單</a>
                        
                </nav>
            </div>
            <!-- 商品列表 -->
            <div class="container col-lg-10" style=" display: flex; justify-content: space-around; flex-wrap: wrap;">
                
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_60228_image_big.jpg" style="width: 120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">老派的生活日曆</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By uDesign‧報時光</p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">一份收藏時代心意、陪你用心生活的日曆</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/螢幕快照 2018-10-10 下午8.13.14.png" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">臥佛先生．搪膠公仔</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By 神邏輯 San's Logic </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;"></p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_27412_image_big.jpg" style="width: 120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">組字印章</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By 來字哪裡</p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">六個組字印章，蓋出所有中文字！</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_51877_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">Poly 幾何素體</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By AX2  </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">最美的紓壓好夥伴</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖。</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖。</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖。</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖。</p>
                        </div>
                </div>
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 350px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src="../images/asset_29668_image_big.jpg" style="width: 120%; height:120%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">台灣鐵路環島旅行帆布地圖</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By TRC台灣鐵道故事館 </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;">2018年最值得珍藏的一面臺灣地圖。</p>
                        </div>
                </div>
                <!-- 頁數 -->
                <div style="display: flex; width: 100%; justify-content: center; ">
                        <ul class="pagination">
                        <li class="page-item disabled">
                            <a class="page-link" href="#">&laquo;</a>
                        </li>
                        <li class="page-item active">
                            <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">3</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">4</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">5</a>
                        </li>
                        <li class="page-item">
                            <a class="page-link" href="#">&raquo;</a>
                        </li>
                        </ul>
                </div>
            </div>
        </div>
        
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>          
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>