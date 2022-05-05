<!--A Design by CU LY
Author: Mr.Ly
-->
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html lang="en">
   <head>
       <meta charset="UTF-8">
       <meta name="description" content="Ogani Template">
       <meta name="keywords" content="Ogani, unica, creative, html">
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
       <meta http-equiv="X-UA-Compatible" content="ie=edge">
       <title>Ogani | Template</title>
       <!-- Google Font -->
       <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">
       <!-- Css Styles -->
       <link rel="stylesheet" href="${contextPath}/resources/css/bootstrap.min.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/font-awesome.min.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/elegant-icons.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/nice-select.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui.min.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/owl.carousel.min.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/slicknav.min.css" type="text/css">
       <link rel="stylesheet" href="${contextPath}/resources/css/style.css" type="text/css">
   </head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    <!-- Header Section Begin -->
    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="./index.html">TRANG CHỦ</a></li>
                            <li><a href="./shoping-cart.html">ĐƠN ĐÃ ĐẶT</a>
                            <li><a href="./checkout.html">GIAO HÀNG</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-lg-3">
                    <div class="header__cart">
                        <ul>
                            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                        </ul>
                        <div class="header__cart__price">item: <span>$150.00</span></div>
                    </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>Danh Mục</span>
                        </div>
                        <ul>
                            <li><a onclick="showAll()" style="cursor: pointer;">Tất Cả</a></li>
                            <c:forEach var = "category" items = "${lstCategory}">
                                <li><a href="#">${category.categoryName}</a></li>
                            </c:forEach>
                            <!-- 
                            <li><a onclick="showJuice()" style="cursor: pointer;">Nước Ép</a></li>
                            <li><a onclick="showFreshFruit()" style="cursor: pointer;">Sinh Tố</a></li>
                            <li><a href="#">Nước Mía</a></li>
                            <li><a href="#">Sữa Chua</a></li>
                            <li><a href="#">Trà</a></li>
                            <li><a href="#">Nước Dừa</a></li>
                            <li><a href="#">Trái Cây Tô</a></li>
                            <li><a href="#">Nước Giải Khát</a></li> -->
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="#">
                                <div class="hero__search__categories">
                                    All Categories
                                    <span class="arrow_carrot-down"></span>
                                </div>
                                <input type="text" placeholder="What do yo u need?">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                    <div class="hero__item set-bg" data-setbg="${contextPath}/resources/img/hero/banner.jpg">
                        <div class="hero__text">
                            <span>NƯỚC ÉP - SINH TÔ</span>
                            <h2>Trái Cây <br/> 100% <br />Nguyên Chất </h2>
                            <p>Free Pickup and Delivery Available</p>
                            <a href="#" class="primary-btn">SHOP NOW</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- juice Section Begin -->
    <section class="featured spad juice" style="padding: 0;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Nước Ép</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">Tất Cả</li>
                            <li data-filter=".oranges">Cam</li>
                            <li data-filter=".lemons">Chanh</li>
                            <li data-filter=".apples">Táo</li>
                            <li data-filter=".pineapples">Dứa Thơm</li>
                            <li data-filter=".carrots">Cà Rốt</li>
                            <li data-filter=".pennywort">Rau Má</li>
                            <li data-filter=".other">Khác</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
                <c:forEach var = "juice" items = "${lstJuice}">
                    <div class="col-lg-3 col-md-4 col-sm-6 mix
                        <c:choose>
                            <c:when test="${juice.type eq 'O'}">
                              oranges
                            </c:when>
                            <c:when test="${juice.type eq 'L'}">
                              lemons
                            </c:when>
                            <c:when test="${juice.type eq 'A'}">
                              apples
                            </c:when>
                            <c:when test="${juice.type eq 'P'}">
                              pineapples
                            </c:when>
                            <c:when test="${juice.type eq 'C'}">
                              carrots
                            </c:when>
                            <c:when test="${juice.type eq 'R'}">
                              pennywort
                            </c:when>
                            <c:otherwise>
                              other
                            </c:otherwise>
                        </c:choose>
                    ">
                      <div class="featured__item">
                          <div class="featured__item__pic set-bg" data-setbg="${contextPath}/resources/img/juice/${juice.imgName}"></div>
                          <div class="featured__item__text">
                              <button onclick="minus()" type="button" class="btn btn-danger">
                                  <span>-</span>
                              </button>
                              <input type="number" min = "0" id = "" value="0" style="border: none; width: 20%">
                              <button onclick="plus()" type="button" class="btn btn-primary" >
                                  <span>+</span>
                              </button>
                              <h5><a>${juice.productName}</a></h5>
                              <h6>${juice.getPriceFormat()} VND</h6>
                          </div>
                      </div>
                  </div>
                </c:forEach>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->
    
    <!-- Banner Begin -->
    <div class="banner">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/img/banner/banner-1.jpg" alt="">
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-sm-6">
                    <div class="banner__pic">
                        <img src="${contextPath}/resources/img/banner/banner-2.jpg" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner End -->

    <!-- Fresh Fruit Product Section Begin -->
    <section class="latest-product spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6 fresh-fruit">
                    <div class="latest-product__text">
                        <h4>Sinh Tố</h4>
                        <div class="latest-product__slider owl-carousel">
                            <c:forEach var = "i" begin = "0" end = "${freFruCol - 1}">
                                <div class="latest-prdouct__slider__item">
                                    <c:forEach var = "fresh" items = "${listLstFres.get(i)}">
                                        <a class="latest-product__item">
                                            <div class="latest-product__item__pic">
                                                <img src="${contextPath}/resources/img/fresh-fruit/${fresh.getImgName()}" alt="">
                                            </div>
                                            <div class="latest-product__item__text">
                                                <button onclick="minus()" type="button" class="btn btn-danger">
                                                    <span>-</span>
                                                </button>
                                                <input type="number" id = "" value="0" style="border: none; width: 20%">
                                                <button onclick="plus()" type="button" class="btn btn-primary" >
                                                    <span>+</span>
                                                </button>
                                                <span>${fresh.getProductName()}</span>
                                                <h6>${fresh.getPriceFormat()} VND</h6>
                                            </div>
                                        </a>
                                    </c:forEach>
                                </div>
                            </c:forEach>
                            <%-- 
                            <div class="latest-prdouct__slider__item">
                                <a class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/fresh-fruit/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                         --%>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Nước Mía</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Sữa Chua</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr/>
            <div class="row">
                <div class="col-lg-4 col-md-6 fresh-fruit">
                    <div class="latest-product__text">
                        <h4>Trà</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 20%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Nước Dừa</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <button onclick="minus()" type="button" class="btn btn-danger">
                                            <span>-</span>
                                        </button>
                                        <input type="number" id = "" value="0" style="border: none; width: 25%">
                                        <button onclick="plus()" type="button" class="btn btn-primary" >
                                            <span>+</span>
                                        </button>
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="latest-product__text">
                        <h4>Trái Cây Tô</h4>
                        <div class="latest-product__slider owl-carousel">
                            <div class="latest-prdouct__slider__item">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-1.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-2.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${contextPath}/resources/img/latest-product/lp-3.jpg" alt="">
                                    </div>
                                    <div class="latest-product__item__text">
                                        <h6>Crab Pool Security</h6>
                                        <span>$30.00</span>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Latest Product Section End -->

    <!-- Footer Section Begin -->
    <footer class="footer spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.html"><img src="${contextPath}/resources/img/logo.png" alt=""></a>
                        </div>
                        <ul>
                            <li>Address: 60-49 Road 11378 New York</li>
                            <li>Phone: +65 11.188.888</li>
                            <li>Email: hello@colorlib.com</li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                    <div class="footer__widget">
                        <h6>Useful Links</h6>
                        <ul>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">About Our Shop</a></li>
                            <li><a href="#">Secure Shopping</a></li>
                            <li><a href="#">Delivery infomation</a></li>
                            <li><a href="#">Privacy Policy</a></li>
                            <li><a href="#">Our Sitemap</a></li>
                        </ul>
                        <ul>
                            <li><a href="#">Who We Are</a></li>
                            <li><a href="#">Our Services</a></li>
                            <li><a href="#">Projects</a></li>
                            <li><a href="#">Contact</a></li>
                            <li><a href="#">Innovation</a></li>
                            <li><a href="#">Testimonials</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12">
                    <div class="footer__widget">
                        <h6>Join Our Newsletter Now</h6>
                        <p>Get E-mail updates about our latest shop and special offers.</p>
                        <form action="#">
                            <input type="text" placeholder="Enter your mail">
                            <button type="submit" class="site-btn">Subscribe</button>
                        </form>
                        <div class="footer__widget__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-instagram"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-pinterest"></i></a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <div class="footer__copyright">
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                        <div class="footer__copyright__payment"><img src="${contextPath}/resources/img/payment-item.png" alt=""></div>
                    </div>
                </div>
            </div>
        </div>
        
    </footer>
    <!-- Footer Section End -->
      <div class="container" style="position: relative;">
            <button onclick="shoping-cart()" type="button" class="btn btn-danger" style="position: fixed; bottom: 1%; right:20%; z-index: 10;"> Giao Hàng
                <span class="badge badge-light">99</span>
            </button>
        </div>

    <!-- Js Plugins -->
    <script src="${contextPath}/resources/js/jquery-3.3.1.min.js"></script>
    <script src="${contextPath}/resources/js/bootstrap.min.js"></script>
    <script src="${contextPath}/resources/js/jquery.nice-select.min.js"></script>
    <script src="${contextPath}/resources/js/jquery-ui.min.js"></script>
    <script src="${contextPath}/resources/js/jquery.slicknav.js"></script>
    <script src="${contextPath}/resources/js/mixitup.min.js"></script>
    <script src="${contextPath}/resources/js/owl.carousel.min.js"></script>
    <script src="${contextPath}/resources/js/main.js"></script>

</body>

</html>