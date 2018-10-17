<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>   
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"  %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"  %>

<jsp:include page="/fragment/header.jsp" />
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
                    <a class="nav-link active" href="<c:url value='/_03_listProducts/DisplayPageProducts'/>">分類商品</a>
                    <a class="nav-link" href="<c:url value='/_03_listProducts/DisplayPageProducts?prod_type=文創周邊'/>" style="color:#dfc2ef; font-weight:400;">文創周邊</a>
                    		
                    			<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=暖心'/>">暖心小物</a>
    							<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=城市'/>">城市紋理</a>
    							<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=質感'/>">質感選物</a>
    						
                    <a class="nav-link" href="<c:url value='/_03_listProducts/DisplayPageProducts?prod_type=原創桌遊'/>" style="color:#dfc2ef; font-weight:400;">原創桌遊</a>
                    		
                    			<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=1~3人'/>">建議遊玩：1 ~ 3人</a>
    							<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=3~5人'/>">建議遊玩：3 ~ 5人</a>
    							<a class="dropdown-item" href="<c:url value='/_03_listProducts/DisplayPageProducts?page=1&category=5~10人'/>">建議遊玩：5 ~ 10人</a>
    						
                </nav>
                <nav class="nav flex-column nav-tabs">
                        <a class="nav-link active">人氣商品推薦</a>
                        <a class="nav-link" href="#" style="color:#dfc2ef; font-weight:400;">每週新品</a>
                        <a class="nav-link" href="#" style="color:#dfc2ef; font-weight:400;">熱銷推薦</a>
                </nav>
                <nav class="nav flex-column nav-tabs">
                        <a class="nav-link active">購物專區</a>
                        <a class="nav-link" href="#" style="color:#dfc2ef; font-weight:400;">結帳</a>
                        <a class="nav-link" href="#" style="color:#dfc2ef; font-weight:400;">訂單查詢</a>
                               </nav>
            </div>
            <!-- 商品列表 -->
            <div class="container col-lg-10" style=" display: flex; justify-content: space-between; flex-wrap: wrap;">
            <!-- -------------------------------------------------------------- -->
  			   <c:forEach varStatus="stVar"  var="ProductBean"  items="${products_DPP}" >
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 390px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src='${pageContext.servletContext.contextPath}/Util/getImage?id=${ProductBean.prod_id}&type=PRODUCT' style="width: 100%; height:100%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">${ProductBean.prodName}</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By ${ProductBean.prodCompany} </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;  width:260px; height:30px;">${ProductBean.prodIntro}</p>
                           <p style="margin-left:190px; align:right; color: rgb(34, 9, 68);">$ ${ProductBean.prodPrice} <span style="font-size:20px; align-items: right;color:rgb(44, 48, 86)"><i class="fa fa-cart-plus"  aria-hidden="true"></i></span></p>
                        </div>
                </div>   
               </c:forEach>
            <!-- -------------------------------------------------------------- -->
                <c:forEach varStatus="stVar"  var="prodCategory"  items="${products_cate}" >
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 390px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src='${pageContext.servletContext.contextPath}/Util/getImage?id=${prodCategory.prod_id}&type=PRODUCT' style="width: 100%; height:100%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">${prodCategory.prodName}</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By ${prodCategory.prodCompany} </p>
                             <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;  width:260px; height:30px;">${prodCategory.prodIntro}</p>
                           <p style="margin-left:190px; align:right; color: rgb(34, 9, 68);">$ ${prodCategory.prodPrice} <span style="font-size:20px; align-items: right;color:rgb(44, 48, 86)"><i class="fa fa-cart-plus"  aria-hidden="true"></i></span></p>
                        </div>
                </div>   
               </c:forEach>
         	<!-- -------------------------------------------------------------- -->	
         		<c:forEach varStatus="stVar"  var="prodType"  items="${products_type}" >
                <div class="box" style="background-color:rgba(255, 255, 255, 0.5); height: 390px; width: 300px; padding: 10px 25px; border-radius: 5px; box-shadow: 3px 3px 3px rgb(2, 14, 53); margin: 20px 0px;">
                        <div class="imgFrame" style="height: 250px; width: 250px; overflow: hidden; display: flex; justify-content: center; margin: 5px 0px; box-shadow: 1px 1px 1px rgb(2, 14, 53);">
                            <img src='${pageContext.servletContext.contextPath}/Util/getImage?id=${prodType.prod_id}&type=PRODUCT' style="width: 100%; height:100%;">
                        </div> 
                        <div class="textFrame" style="height: 100px; width: 300px;">
                            <p class="prodName" style="margin:0px; font-weight: 600; font-size: 17px; ">${prodType.prodName}</p>
                            <p class="company" style="margin:0px; font-weight: 100; ">By ${prodType.prodCompany} </p>
                            <p class="intro" style="margin:0px; font-weight: 400; font-size: 14px;  width:260px; height:30px;">${prodType.prodIntro}</p>
                           <p style="margin-left:190px; align:right; color: rgb(34, 9, 68);">$ ${prodType.prodPrice} <span style="font-size:20px; align-items: right;color:rgb(44, 48, 86)"><i class="fa fa-cart-plus"  aria-hidden="true"></i></span></p>
                        </div>
                </div>   
               </c:forEach>
                <!-- 頁數 -->
                <div style="display: flex; width: 100%; justify-content: center; ">
                        <ul class="pagination">
                      		<li class="page-item">
                           			 <a class="page-link" href="#">&laquo;</a>
                       		 </li>
                      	<c:forEach var="i" begin="1" end="${totalPages}" step="1">
	                         <li class="page-item">
	                          		  <a class="page-link" href="<c:url value='DisplayPageProducts?pageNo=${i}' />">${i}</a>
	                         </li>
                      	</c:forEach>
                        <li class="page-item">
                            <a class="page-link" href="#">&raquo;</a>
                        </li>
                        </ul>
                </div>
            </div>
        </div>
     <jsp:include page="/fragment/footer.jsp" />   