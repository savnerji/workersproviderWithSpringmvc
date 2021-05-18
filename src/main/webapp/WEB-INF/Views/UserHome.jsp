


<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">


<meta content="" name="description">
<meta content="" name="keywords">





<%@include file="./CommonHeaderLinks.jsp"%>
<link rel="stylesheet" href=' <c:url value="/component/css/myCss.css" />' type="text/css">




</head>

<body>


	<!-- ====modal for notification bell====== -->

	<!-- Modal -->
	<div class="modal fade" id="sentRequestNotifications" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header  " style="background: linear-gradient(45deg, #212062, #0037ff61);">
					<div class="container text-center">
						<h5 class="modal-title text-white">Hey ${worker.w_Name} you got some Work..</h5>
					</div>

					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body" style="background: aliceblue">
					<div class="container text-center">


						<c:forEach items="${sentRequests }" var="request">

							<a href="${pageContext.servletContext.contextPath}/Worker/WorkDetails/${request.workData_Id}">
								<div class="container-fluid">
									<h4>Work from ${request.customer_Name}</h4>
								</div>
							</a>


						</c:forEach>




					</div>

					<div class="container text-center">

						<div class=" text-center">
							<!-- <a href="#" class="modelBtn" id="upload-button">More</a> -->
							<a href="${pageContext.servletContext.contextPath}/Worker/all_requests" id="notifybtn" class="btn " role="button" aria-disabled="true"
								style="border: 2px solid #0b1f58; border-radius: 50px; color: #0b1f58; background: transparent; transition: all 0.3s ease-in-out;">Show
								More </a>
						</div>


					</div>

				</div>
				<div class="modal-footer"></div>
			</div>
		</div>
	</div>

	<!-- <!-- ====modal for notification bell====== -->



	<!-- ======= Header ======= -->
	<header id="header">
		<div class="container d-flex">

			<div class=" mr-auto">

				<h5 class=" mt-2 ml-1 name">${usr.name }</h5>

				<%-- <img class="img-fluid mt-2" alt="logo" src='<c:url value="/component/img/logo/logo.png"></c:url>' style="height: 28px; width: 291px;"> --%>
 
			</div>

			<nav class="nav-menu d-none d-lg-block">
				<ul>
					<li class="active"><a href="${pageContext.servletContext.contextPath}/User/UserHome">Home</a></li>

					<li><a href="${pageContext.servletContext.contextPath}/about">About</a></li>

					<li class="drop-down"><a href="#">Services</a>

						<ul>
							<li><a href="${pageContext.servletContext.contextPath}/service/MECHANIC">MECHANIC</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/service/ELECTRICIAN">ELECTRICIAN</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/service/PLUMBING">PLUMBING</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/service/COOKING">COOKING</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/service/CARPENTER">CARPENTER</a></li>
							<li><a href="${pageContext.servletContext.contextPath}/service/TUTOR">TUTOR</a></li>
						</ul></li>

					<li><a href="${pageContext.servletContext.contextPath}/logout">Log Out</a></li>
					<li><a href="${pageContext.servletContext.contextPath}/contact">Contact</a></li>
					<li><a href="#" class="  waves-effect waves-light " data-toggle="dropdown" id="navbarDropdownMenuLink-5" aria-haspopup="true"
						aria-expanded="true"><i class="fa fa-bell bellIcon  " style="font-size: 23px"><span class="ml-1 notificationbellCount text-white">${sentRequestsCounts }</span></i>
					</a>

						<div class="dropdown-menu dropdown-menu-lg-right dropdown-secondary " id="dropy-div" aria-labelledby="navbarDropdownMenuLink-5"
							style="height: 300px">

							<c:forEach items="${sentRequests }" var="request">

								<%-- 	<a href="#">

									<div class="d-flex flex-row mt-2">
										<div class="p-2">
											<span class="mr-1" style="font-size: 11px;">sent to </span>${request.worker.w_Name}</div>

										<div class="p-2">
										<button class="completeBtn" onclick="updateWorkStatus(${request.workData_Id})" type="button" style="padding: 2px; border: 1px solid #e6573f;">Complete</button>
									</div>


									</div>
								</a>
 --%>




								<a href="${pageContext.servletContext.contextPath}/User/sent_request/${request.workData_Id}" class="notifyLink mt-2">

									<div class=" userNotifyCard" style="">
										<div class="card-body">

											<div class="d-flex flex-row mt-2">
												<div class="p-2">
													<span class="mr-1" style="font-size: 11px;">sent to </span>${request.worker.w_Name}</div>

												<div class="p-2"></div>
											</div>

										</div>
									</div>
								</a>
								<%-- 	<a class="dropdown-item waves-effect waves-light" href="#">${request.worker.w_Name} <span class="badge badge-danger ml-2">4</span></a> --%>


							</c:forEach>



						</div></li>


				</ul>
			</nav>
			<!-- .nav-menu -->

		</div>
	</header>
	<!-- End Header -->

	<!-- ======= Hero Section ======= -->
	<section id="hero">
		<div class="hero-container">
			<div id="heroCarousel" class="carousel slide carousel-fade" data-ride="carousel">

				<ol class="carousel-indicators" id="hero-carousel-indicators"></ol>

				<div class="carousel-inner" role="listbox">

					<!-- Slide 1 -->
					<div class="carousel-item active"
						style="background: url(<c:url value="/component/img/slide/slide-4.jpg" />); background-repeat: no-repeat; background-position: center; background-size: cover;">
						<div class="carousel-container">
							<div class="carousel-content">
								<h2 class="animate__animated animate__fadeInDown">
									Welcome to <span>Workers Provider</span>
								</h2>
								<p class="animate__animated animate__fadeInUp" style="font-size: 1em">We Are available for your emergency household works like
									plumbing,carpentry and so on..</p>

							</div>
						</div>
					</div>

					<!-- Slide 2 -->
					<div class="carousel-item" style="background: url(<c:url value="/component/img/slide/slide-2.jpg" />);">
						<div class="carousel-container">
							<div class="carousel-content">
								<h2 class="animate__animated fanimate__adeInDown">
									What <span>we provide..</span>
								</h2>
								<p class="animate__animated animate__fadeInUp" style="font-size: 1em">We provide carpenters,plumbers,electrician and etc..So don't wait..</p>

							</div>
						</div>
					</div>

					<!-- Slide 3 -->
					<div class="carousel-item"
						style="background: url(<c:url value="/component/img/slide/slide-4.jpg"/>); background-repeat: no-repeat; background-position: center; background-size: cover;">
						<div class="carousel-container">
							<div class="carousel-content">
								<h2 class="animate__animated animate__fadeInDown">
									You just <span>choose us.. </span>
								</h2>
								<p class="animate__animated animate__fadeInUp">We are best in providing services.. So why are you waiting you just choose us..</p>

							</div>
						</div>
					</div>

				</div>

				<a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon icofont-rounded-left" aria-hidden="true"></span> <span class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next"> <span
					class="carousel-control-next-icon icofont-rounded-right" aria-hidden="true"></span> <span class="sr-only">Next</span>
				</a>

			</div>
		</div>
	</section>
	<!-- End Hero -->

	<main id="main">

		<!-- ======= Featured Section ======= -->
		<section id="featured" class="featured">
			<div class="container">
				<div class="section-title" data-aos="fade-up">
					<h2>Our Best Services</h2>
				</div>
				<div class="row">

					<div class="col-lg-4">
						<div class="icon-box" style="height: 190px">
							<!-- <i class="icofont-computer"></i> -->
							<h3 class="text-center">
								<a href="">COOKING</a>
							</h3>
							<p>We Are best in providing Cookers at home.</p>
						</div>
					</div>
					<div class="col-lg-4 mt-4 mt-lg-0">
						<div class="icon-box" style="height: 190px">
							<!-- <i class="icofont-image"></i> -->

							<div class="container text-center">
								<h3>
									<a href="">CARPENTERY </a>
								</h3>
							</div>


							<p class="text-break">We Are best in providing Carpenters at home.</p>
						</div>
					</div>
					<div class="col-lg-4 mt-4 mt-lg-0">
						<div class="icon-box" style="height: 190px">
							<!-- <i class="icofont-tasks-alt"></i> -->

							<div class="container text-center">
								<h3>
									<a href="">ELECTRICIAN</a>
								</h3>
							</div>


							<p>We Are best in providing Electrician at home.</p>
						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- End Featured Section -->
		<!-- ======= About Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="row">
					<div class="col-lg-6">
						<img src='<c:url value="/component/img/home2.jpeg"></c:url>' class="img-fluid" alt="" style="height: auto;">
					</div>
					<div class="col-lg-6 pt-4 pt-lg-0 content">
						<h3>We have solution for your all household Problems..</h3>
						<p class="font-italic">
							<em>WE HAVE COMPLETE MAINTENANCE AND REPAIRING SOLUTIONS..</em>
						</p>
						<ul>
							<li>
								<!-- <i class="icofont-check-circled"></i> -->Service Provider is a platform to provide solution to all maintainance and servicing works at
								your homes and offices quickly, proffesionally and conveniently. We commit you not to bring any sort of unproffesionalism. We promise you to
								provide good service and trust to your doorsteps. We deliever your work by verified and qualified proffesionals only. We provide services of
								Plumber, Electrician, Painter, Carpenter,.................


							</li>


						</ul>
						<p>We pride ourselves on understanding our clients concerns and supplying the friendliest, most approachable and most conscientious service
							in Indore.</p>
					</div>
				</div>

			</div>
		</section>
		<!-- End About Section -->


		<!-- ======= why as Section ======= -->
		<section id="about" class="about">
			<div class="container">

				<div class="row">

					<div class="col-lg-6 pt-4 pt-lg-0 content">
						<h3>Why Choose us...</h3>
						<p class="text-break">Customer satisfaction is our paramount goal. We always meet and exceed customers satisfaction by providing the highest
							quality service and products, coupled with continuous communication to each of our customers. We are determined on satisfying and retaining our
							Clients who understand and value the element of time saving which has positive effect on repeat business with them. We strongly believe that
							good services can only be delivered with the qualified manpower, right attitude and teamwork.</p>


						<p class="font-italic">The Mission is to build on our reputation for integrity, excellence, experience and leadership as the nation's finest
							Construction, Maintenance and Repairing Solution organization by:
						<p>
						<ul>
							<li><i class="icofont-check-circled"></i> Professional and Experience Staffs Giving Proper Estimate.</li>
							<li><i class="icofont-check-circled"></i> On-Time Work Finish Transparency In Billing.</li>
							<li><i class="icofont-check-circled"></i> Background Verified All Our workers Maintaining our dedication.</li>
							<li><i class="icofont-check-circled"></i> Constantly striving to exceed expectations.</li>
							<li><i class="icofont-check-circled"></i> Constantly improving the quality of our work</li>
						</ul>
					</div>
					<div class="col-lg-6">
						<div class="container text-center">
							<img src='<c:url value="/component/img/about.jpg" ></c:url>' class="img-fluid" alt="" style="height: 550px;">
						</div>
					</div>
				</div>

			</div>
		</section>
		<!-- End why us Section -->



		<!-- ======= Services Section ======= -->
		<section id="services" class="services">
			<div class="container">

				<div class="section-title" data-aos="fade-up">
					<h2>Our Services</h2>
				</div>

				<div class="row">
					<div class="col-lg-4 col-md-6 d-flex align-items-stretch">

						<div class="icon-box" onmouseenter="move(1)" onmouseleave="nomove(1)">
							<div class="text-center mb-4">
								<img class="" alt="" src=" <c:url value="/component/img/services/carpenter.png" />"
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>

							<!-- 	<div class="icon">
								<i class="bx bxl-dribbble"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/CARPENTER">Carpentry </a>
							</h4>
							<p id="p1" style="font-size: 1em">We provide carpentry service at your home. So don't wait..</p>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-md-0">
						<div class="icon-box" onmouseenter="move(2)" onmouseleave="nomove(2)">

							<div class="text-center mb-4">
								<img class="" alt="" src=" <c:url value="/component/img/services/chef.png" />"
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>
							<!-- <div class="icon">
								<i class="bx bx-file"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/COOKING">Cooking</a>
							</h4>
							<p id="p2">We provide cooking service at your home. So don't wait..</p>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4 mt-lg-0">
						<div class="icon-box" onmouseenter="move(3)" onmouseleave="nomove(3)">

							<div class="text-center mb-4">
								<img class="" alt="" src=" <c:url value="/component/img/services/electrician.png" />  "
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>
							<!-- 	<div class="icon">
								<i class="bx bx-tachometer"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/ELECTRICIAN">Electrician</a>
							</h4>
							<p id="p3">We provide Electricians at your home. So don't wait..</p>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
						<div class="icon-box" onmouseenter="move(4)" onmouseleave="nomove(4)">

							<div class="text-center mb-4">
								<img class="" alt="" src="<c:url value="/component/img/services/mechanic.png" />  "
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>
							<!-- <div class="icon">
								<i class="bx bx-world"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/MECHANIC">Mechanic</a>
							</h4>
							<p id="p4">We provide mechanic service at your home. So don't wait..</p>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
						<div class="icon-box" onmouseenter="move(5)" onmouseleave="nomove(5)">

							<div class="text-center mb-4">
								<img class="" alt="" src="  <c:url value="/component/img/services/tutor.png" />  "
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>
							<!-- 	<div class="icon">
								<i class="bx bx-slideshow"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/TUTOR">Personal Tutor</a>
							</h4>
							<p id="p5">We provide personal tutor at your home. So don't wait..</p>
						</div>
					</div>

					<div class="col-lg-4 col-md-6 d-flex align-items-stretch mt-4">
						<div class="icon-box" onmouseenter="move(6)" onmouseleave="nomove(6)">

							<div class="text-center mb-4">
								<img class="" alt="" src=" <c:url value="/component/img/services/plumber.png" /> "
									style="height: 160px; width: 160px; border-radius: 50%; top: 10px;">
							</div>
							<!-- <div class="icon">
								<i class="bx bx-arch"></i>
							</div> -->
							<h4>
								<a class="anchr" href="${pageContext.servletContext.contextPath}/service/PLUMBING">Plumbing</a>
							</h4>
							<p id="p6">We provide plumbers at your home. So don't wait..</p>
						</div>
					</div>

				</div>

			</div>
		</section>
		<!-- End Services Section -->



		<!-- ======= Clients Section ======= -->
		<!--  <section id="clients" class="clients">
        <div class="container">

          <div class="section-title">
            <h2>Clients</h2>
            <p>Magnam dolores commodi suscipit. Necessitatibus eius consequatur ex aliquid fuga eum quidem. Sit sint consectetur velit. Quisquam quos quisquam cupiditate. Et nemo qui impedit suscipit alias ea. Quia fugiat sit in iste officiis commodi quidem hic quas.</p>
          </div>

          <div class="owl-carousel clients-carousel">
            <img src="assets/img/clients/client-1.png" alt="">
            <img src="assets/img/clients/client-2.png" alt="">
            <img src="assets/img/clients/client-3.png" alt="">
            <img src="assets/img/clients/client-4.png" alt="">
            <img src="assets/img/clients/client-5.png" alt="">
            <img src="assets/img/clients/client-6.png" alt="">
            <img src="assets/img/clients/client-7.png" alt="">
            <img src="assets/img/clients/client-8.png" alt="">
          </div>

        </div>
      </section> -->
		<!-- End Clients Section -->

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer">

		<!--     <div class="footer-newsletter">
      <div class="container">
        <div class="row">
          <div class="col-lg-6">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna</p>
          </div>
          <div class="col-lg-6">
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>
        </div>
      </div>
    </div> -->

		<div class="footer-top">
			<div class="container">
				<div class="row">

					<div class="col footer-links">
						<h4>Useful Links</h4>
						<ul>

							<c:choose>
								<c:when test="${Role == 'ROLE_USER'}">
									<li><i class="bx bx-chevron-right"></i><a href="${pageContext.servletContext.contextPath}/User/UserHome">Home</a></li>
								</c:when>

								<c:otherwise>

									<c:choose>
										<c:when test="${Role == 'ROLE_WORKER'}">
											<li><i class="bx bx-chevron-right"></i><a href="${pageContext.servletContext.contextPath}/Worker/workerHomePage">Home</a></li>

										</c:when>

										<c:otherwise>
											<li><i class="bx bx-chevron-right"></i><a href="${pageContext.servletContext.contextPath}/home">Home</a></li>
										</c:otherwise>

									</c:choose>


									<%-- <a href="${pageContext.servletContext.contextPath}/Worker/workerHomePage">Home</a> --%>
								</c:otherwise>

							</c:choose>


							<li><i class="bx bx-chevron-right"></i><a href="${pageContext.servletContext.contextPath}/about">About Us</a></li>

							<li class="active"><i class="bx bx-chevron-right"></i><a href="${pageContext.servletContext.contextPath}/contact">Contact</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="${pageContext.servletContext.contextPath}/services">Services</a></li>
							<!-- <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li> -->
						</ul>
					</div>

					<!-- 	<div class="col-lg-3 col-md-6 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web Design</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Web Development</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Product Management</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Marketing</a></li>
							<li><i class="bx bx-chevron-right"></i> <a href="#">Graphic Design</a></li>
						</ul>
					</div> -->

					<div class="col footer-contact">
						<h4>Contact Us</h4>
						<p>
							AB Street <br> Somewhere, <br> India <br> <br> <strong>Phone:</strong> 123567890 <br> <strong>Email:</strong>
							workersprovider24@gmail.com<br>
						</p>

					</div>

					<div class="col footer-info">
						<h3>About WorkersProvider</h3>
						<p>Workers Provider is a platform to provide solution to all maintainance and servicing works at your homes and offices quickly,
							proffesionally and conveniently.</p>
						<!-- 	<div class="social-links mt-3">
							<a href="#" class="twitter"><i class="bx bxl-twitter"></i></a> <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a> <a href="#"
								class="instagram"><i class="bx bxl-instagram"></i></a> <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a> <a href="#"
								class="linkedin"><i class="bx bxl-linkedin"></i></a>
						</div> -->
					</div>

				</div>
			</div>
		</div>

	</footer>
	<!-- End Footer -->

	<!-- <a href="#" class="back-to-top"><i class="icofont-simple-up"></i></a> -->

	<%@include file="./CommonScripts.jsp"%>
	<script src="<c:url value="/component/js/MyAnimation.js" />"></script>

	<script src="<c:url value="/component/js/MyJs.js" />"></script>
</body>

</html>