<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Agency - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link rel="stylesheet"  href="${pageContext.request.contextPath}/resources/css/styles.css">

    </head>
    <body id="page-top">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark fixed-top" id="mainNav">
            <div class="container">
               
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    Menu
                    <i class="fas fa-bars ml-1"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                 <ul class="navbar-nav text-uppercase ml-auto">
                 <c:if test="${logout=='Y'}">
                 <li class="nav-item"><a href="/login">login</a></li>
      	
      </c:if>
         <c:if test="${logout!='Y'}">
      	 <li class="nav-item"><a href="/login">login</a></li>
      	
      </c:if>
                  
                  <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/login">�α���</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/Signup">ȸ������</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/myInfo">����������</a></li>
                        </ul>
                        
                    <ul class="navbar-nav text-uppercase ml-auto">
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/Aboutus">About us</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/paint">�׸�</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">����</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">����</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#portfolio">����</a></li>
                        <li class="nav-item"><a class="nav-link js-scroll-trigger" href="http://localhost:8080/project/board?pageNum=1">�Խ���</a></li>
                      
               
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Masthead-->
        <header class="masthead">
            <div class="container">
                <div class="masthead-subheading">�츮���� ����ȸ </div>
                <div class="masthead-heading text-uppercase">�츮���� ����ȸ�� �°��� ȯ���մϴ�!</div>
                <a class="btn btn-primary btn-xl text-uppercase js-scroll-trigger" href="#portfolio">�����ϱ�</a>
            </div>
        </header>
        <!-- Services-->
        <div class="Area1">
            <div class="image-items">   </div>
            <div class="image-items">   </div>
            <div class="image-items">   </div>
            <div class="image-items">   </div>
        </div>
   
        <!-- Portfolio Grid-->
        
         
      
      
     
      
        <section class="page-section bg-light" id="portfolio">
        
            <div class="container">
                <div class="text-center">
                    <h2 class="section-heading text-uppercase">�̹��� ����Ʈ ��ǰ</h2>
                    
                </div>
                
            </div>
            <c:forEach var="dto" items="${dtos}">
            <div class="items-image">
            <div class="images">  </div>
            
            </div>
             <div class="item-area">
    			<div class="title"><a href="content_view?bId=${dto.bId}">${dto.bTitle}����</a></div>
    			<div class="writer">${dto.bName}�۰�</div>
    			<div class="hit">${dto.bHit}��ȸ��</div>
        	</div>
        	</c:forEach>
        	
   
        </section>
       
       
        
       
       
        <!-- Bootstrap core JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Third party plugin JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
        <!-- Contact form JS-->
        <script src="assets/mail/jqBootstrapValidation.js"></script>
        <script src="assets/mail/contact_me.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/js/scripts.js"></script>
    </body>
</html>
