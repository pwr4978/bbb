<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=22405a10e9c37932fbd6aabb794109c1"></script>
   <style>
      
      
      #jido1{
         height : 500px;
         width : 500px;
         margin : auto;
      }
   </style>
</head>
<body>
   
   <div class="jido_main">
            <div class = "jido">
               <div>
                  <h1>오시는길</h1>
               </div>
               <hr>
               <div id="jido1">
                     
               </div>
            </div>
            <div class = juso>
                  
            </div>
            <div class = "reservebtn">
               <a href ="PensionInsert.jsp" class="rbtn">실시간 예약하기</a>
            </div>
         </div>
   
   
   
   <script>
      window.onload=function(){
         var joongang1 = new kakao.maps.LatLng(37.570946679228165, 126.9924750052291);
   
         var mapDesign1 = {zoom: 17,   
                       center: joongang1,
                       mapTypeId: kakao.maps.MapTypeId.ROADMAP 
                       };
         var map = new kakao.maps.Map(document.getElementById("jido1"),mapDesign1);
      
         var markerPosition = new kakao.maps.LatLng(37.570946679228165, 126.9924750052291);
         
         var marker = new kakao.maps.Marker({
            position:markerPosition
         });
         
         marker.setMap(map);
      }
   </script>
</body>
</html>