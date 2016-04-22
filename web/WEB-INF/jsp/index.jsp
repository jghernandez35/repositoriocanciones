

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML>
<html>
	<head>
		<title>The PAPIYON Website Template | Home :: w3layouts</title>
                <link href=<c:url value="resources/css/bootstrap.css"/> rel='stylesheet' type='text/css' >
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
                <script src=<c:url value="resources/js/jquery.min.js"/>></script>
		 <!-- Custom Theme files -->
                 <link href=<c:url value="resources/css/style.css"/> rel='stylesheet' type='text/css' >
   		 <!-- Custom Theme files -->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		 <!---- start-smoth-scrolling---->
                 <script type="text/javascript" src=<c:url value="resources/js/move-top.js"/>></script>
                 <script type="text/javascript" src=<c:url value="resources/js/easing.js"/>></script>
		
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
				});
			});
		</script>
		 <!---- start-smoth-scrolling---->
		<!----webfonts--->
		<link href='http://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic,700italic|Oswald:400,300' rel='stylesheet' type='text/css'>
		<!---//webfonts--->
		<!----start-top-nav-script---->
		<script>
			$(function() {
				var pull 		= $('#pull');
					menu 		= $('nav ul');
					menuHeight	= menu.height();
				$(pull).on('click', function(e) {
					e.preventDefault();
					menu.slideToggle();
				});
				$(window).resize(function(){
	        		var w = $(window).width();
	        		if(w > 320 && menu.is(':hidden')) {
	        			menu.removeAttr('style');
	        		}
	    		});
			});
		</script>
		<!----//End-top-nav-script---->
                <script type="text/javascript" src=<c:url value="resources/js/jquery.mixitup.min.js"/>></script>
		<script type="text/javascript">
			$(function() {

				var filterList = {

					init : function() {

						// MixItUp plugin
						// http://mixitup.io
						$('#portfoliolist').mixitup({
							targetSelector : '.portfolio',
							filterSelector : '.filter',
							effects : ['fade'],
							easing : 'snap',
							// call the hover effect
							onMixEnd : filterList.hoverEffect()
						});

					},

					hoverEffect : function() {

						// Simple parallax effect
						$('#portfoliolist .portfolio').hover(function() {
							$(this).find('.label').stop().animate({
								bottom : 0
							}, 200, 'easeOutQuad');
							$(this).find('img').stop().animate({
								top : -30
							}, 500, 'easeOutQuad');
						}, function() {
							$(this).find('.label').stop().animate({
								bottom : -40
							}, 200, 'easeInQuad');
							$(this).find('img').stop().animate({
								top : 0
							}, 300, 'easeOutQuad');
						});

					}
				};

				// Run the show!
				filterList.init();

			});
		</script>
	</head>
	<body>
		<!----- start-header---->
			<div id="home" class="header">
					<div class="top-header">
						<div class="container">
						<div class="logo">
							<h1>PAPIYON</h1>
						</div>
						<!----start-top-nav---->
						 <nav class="top-nav">
							<ul class="top-nav">
								<li class="active"><a href="#home" class="scroll">Home </a></li>
								<li><a href="#about" class="scroll">About</a></li>
								<li><a href="#services" class="scroll">services</a></li>
								<li><a href="#portfolio" class="scroll">Portfolio</a></li>
								<li><a href="#contact" class="scroll">Contact</a></li>
							</ul>
                                                     <a href="#" id="pull"><img src=<c:url value="resources/images/menu-icon.png"/> title="menu" /></a>
						</nav>
						<div class="clearfix"> </div>
					</div>
				</div>
			</div>
		<!----- //End-header---->
		<!----start-slider-script---->
                <script src=<c:url value="resources/js/responsiveslides.min.js"/>></script>
			 <script>
			    // You can also use "$(window).load(function() {"
			    $(function () {
			      // Slideshow 4
			      $("#slider4").responsiveSlides({
			        auto: true,
			        pager: true,
			        nav: true,
			        speed: 500,
			        namespace: "callbacks",
			        before: function () {
			          $('.events').append("<li>before event fired.</li>");
			        },
			        after: function () {
			          $('.events').append("<li>after event fired.</li>");
			        }
			      });
			
			    });
			  </script>
			<!----//End-slider-script---->
			<!-- Slideshow 4 -->
			    <div  id="top" class="callbacks_container">
			      <ul class="rslides" id="slider4">
			        <li>
                                    <img src=<c:url value="resources/images/bg.jpg"/> alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          		<h1>Lorem Ipsum Dol</h1>
			          		<label>Vestibullum atuthor  dapibus nequen ivamus vesti<br>bulalu null neq</label>
			          		<div class="learn-button">
			          			<a class="slide-btn" href="#">Bulorem ipsum</a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			        <li>
                                    <img src=<c:url value="resources/images/bg.jpg"/> alt="">
			          <div class="caption">
			          	<div class="slide-text-info">
			          		<h1>Lorem ipsum dolor</h1>
			          		<label>Vestibullum atuthor  dapibus nequen ivamus vesti<br>bulalu null neq</label>
			          		<div class="learn-button">
			          			<a class="slide-btn" href="#">Bulorem ipsum</a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			        <li>
			          <img src="images/bg.jpg" alt="">
			           <div class="caption">
			           	<div class="slide-text-info">
			          		<h1>Dolor sit amet</h1>
			          		<label>Vestibullum atuthor  dapibus nequen ivamus vesti<br>bulalu null neq</label>
			          		<div class="learn-button">
			          			<a class="slide-btn" href="#">Bulorem ipsum</a>
			          		</div>
			          	</div>
			          </div>
			        </li>
			      </ul>
			    </div>
			    <div class="clearfix"> </div>
			<!----- //End-slider---->
			 <div class="Themes">
				<div class="container">
					<div class="feature-grids">
						<div class="col-md-4 feature-grid">
							<h3><span class="fea-icon1"> </span>Perus curis vip</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo ligula. Nunc adipiscing. imperdiet est a dignissim.</p>
							  <div class="button"><span><a href="#">Read More</a></span></div>
							  </div>

							<div class="col-md-4 feature-grid">
								<h3><span class="fea-icon2"> </span>Ras justo lacure</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo ligula. Nunc adipiscing. imperdiet est a dignissim.</p>
								  <div class="button"><span><a href="#">Read More</a></span></div>
							</div>
						<div class="col-md-4 feature-grid">
							<h3><span class="fea-icon3"> </span>Aliquam pellente</h3>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sit amet commodo ligula. Nunc adipiscing. imperdiet est a dignissim.</p>
							  <div class="button"><span><a href="#">Read More</a></span></div>
						</div>

						<div class="clearfix"> </div>
					</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
	</div>
	  <!---//End-da-features----->	
	 <div id="about" class="about">
				<div class="container ab-us">
					<h2>ABOUT US</h2>
						<p class="para">Morbi in sem quis dui pla at ornare ellenteque odio nisi euismod in cer.</p>
					<div class="col-md-5 popular_topics">
					<ul class="topic_grid">
					   <li class="list1"><i class="Group"> </i><h3 class="m_3">Lorem ipsum</span></h3><div class="clear5"></div></li>
					 </ul>
					  <div class="menu_vertical">
		         	 	<section class="accordation_menu">
						  <div>
						    <input id="label-1" name="lida" type="radio" checked/>
						   <label for="label-1" id="item1"><i class="ferme"> </i><span class="m_5">Aliquam tincidunt mauris</span><i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
						    <div class="content" id="a1">
						      <ul class="news_list">
								 <li class="date_desc">
				  			   	 		<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, eaque inventore veritatis.</p>
				  			   	 </li>
				  			   	 <div class="clear"> </div>
				  			  </ul>
						    </div>
						  </div>
						  <div>
						    <input id="label-2" name="lida" type="radio"/>
						    <label for="label-2" id="item2"><i class="icon-leaf" id="i2"></i>Cras ornare tristiave<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
						    <div class="content" id="a2">
						       <ul class="news_list">
								 <li class="date_desc">
				  			   	 	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, eaque inventore veritatis.</p>
				  			   	 </li>
				  			   	 <div class="clear"> </div>
				  			  </ul>      
						    </div>
						  </div>
						  <div>
						    <input id="label-3" name="lida" type="radio"/>
						    <label for="label-3" id="item3"><i class="icon-trophy" id="i3"></i>Present placerat riisus<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
						    <div class="content" id="a3">
						       <ul class="news_list">
				  			     <li class="date_desc">
				  			   	 	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, eaque inventore veritatis.</p>
				  			   	 </li>
				  			   	 <div class="clear"> </div>
				  			  </ul>
						    </div>
						  </div>
						   <div>
						    <input id="label-4" name="lida" type="radio"/>
						    <label for="label-4" id="item4"><i class="icon-trophy" id="i4"></i>Fusce pellellentsque suscrite<i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
						    <div class="content" id="a4">
						       <ul class="news_list">
				  			     <li class="date_desc">
				  			   	 	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, eaque inventore veritatis.</p>
				  			   	 </li>
				  			   	 <div class="clear"> </div>
				  			  </ul>
						    </div>
						  </div>
						   <div>
						    <input id="label-5" name="lida" type="radio"/>
						    <label for="label-5" id="item5"><i class="icon-trophy" id="i5"></i>Ut aliquam Solliicitudin <i class="icon-plus-sign i-right1"></i><i class="icon-minus-sign i-right2"></i></label>
						    <div class="content" id="a5">
						       <ul class="news_list">
				  			     <li class="date_desc">
				  			   	 	<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, eaque inventore veritatis.</p>
				  			   	 </li>
				  			   	 <div class="clear"> </div>
				  			  </ul>
						    </div>
						  </div>
						</section>
					 </div>
				   </div>

			<div class="col-md-7 Rent-topics">
							<div class="about-top-left-grids">
								<div class="about-top-left-grid">
									<div class="about-top-left-grid-left">
										<img src="images/ab-pic1.png" alt"" />
									</div>
									<div class="about-top-left-grid-right">
										<h5><a href="#">Nunc dignissim risus</a></h5>
										<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. </p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="about-top-left-grid">
									<div class="about-top-left-grid-left">
										<img src="images/ab-pic2.png" alt"" />
									</div>
									<div class="about-top-left-grid-right">
										<h5><a href="#">Vestibulum auctor</a></h5>
										<p>Morbi interdum Mollis sapien.There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, doloremque laudantium, totam rem aperiam,by injected humour. </p>
									</div>
									<div class="clearfix"> </div>
								</div>
								<div class="about-top-left-grid">
									<div class="about-top-left-grid-left">
										<img src="images/ab-pic3.png" alt"" />
									</div>
									<div class="about-top-left-grid-right">
										<h5><a href="#">Integer viteo libero</a></h5>
										<p> Ut et voluptates repudiandae sint et molestiae non recusandae. Itaque, ut aut.Proin iaculis purus consequat sem cure digni ssim. Donec porttitora entum suscipit aenean rhoncus posuere odio in tincidunt. </p>
									</div>
									<div class="clearfix"> </div>
								</div>
							</div>
						</div>
					<div class="clearfix"> </div>
					</div>
			</div>
	  <!---//End-about----->	
	    <div class="services" id="services">
	 	  <div class="container">
	 	  	<div class="h-part">
	 	  			<h3 class="m_5">services </h3>
					 <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
			</div>
	 		<div class="box2">
	 		   <div class="col-md-4 s-1"><a href="#">
	 		   	<div class="view view-fifth">
                    <img src="images/s-1.png" />
                    <div class="mask">
                        <h2>Vivamus moles tie gravida turpis</h2>
                        <p>A wonderful serenity has taken possession of my entire soul,  I enjoy with my whole heart.</p>
                         <p class="p2">A wonderful serenity has taken possession of my entire soul, I enjoy with my whole heart.</p>
                        
		                     <div id="small-dialog3" class="mfp-hide">
							   <div class="pop_up2">
							   	    <h3>Fusce lobort<br> iscoram</h3>
								   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
							   </div>
							 </div>
                     </div>
                    <h3>Fusce lobort<br> iscoram</h3>
				  </div>
				</a></div>
			   <div class="col-md-4 s-2"><a href="#">
	 		   	<div class="view view-fifth">
                    <img src="images/s-2.png" />
                    <div class="mask">
                        <h2>Dones quis dul at dolor tempori</h2>
                        <p>A wonderful serenity has taken possession of my entire soul,  I enjoy with my whole heart.</p>
                         <p class="p2">A wonderful serenity has taken possession of my entire soul, I enjoy with my whole heart.</p>
		                     <div id="small-dialog4" class="mfp-hide">
							   <div class="pop_up3">
							    <h3>Nunc dignis sim <br> risus id doner</h3>
								   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy aliquam erat volutpat. nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
								    <p class="p2">A wonderful serenity has taken possession of my entire soul, I enjoy with my whole heart.</p>
							   </div>
							 </div>
                    </div>
                    <h3>Nunc dignis sim <br> risus id doner</h3>
				  </div>
				</a></div>
				<div class="col-md-4 s-3 " ><a href="#">
	 		   	 <div class="view view-fifth">
                    <img src="images/s-3.png" />
                    <div class="mask">
                        <h2>Nunc dignis sim risus id doner</h2>
                      <p>A wonderful serenity has taken possession of my entire soul,  I enjoy with my whole heart.</p>
                         <p class="p2">A wonderful serenity has taken possession of my entire soul, I enjoy with my whole heart.</p>
		                     <div id="small-dialog5" class="mfp-hide">
							   <div class="pop_up3">
							   	  <h3>Cras orna re <br> tritiquion</h3>
								   <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.</p>
							   </div>
							 </div>
                    </div>
                    <h3>Cras orna re <br> tritiquion</h3>
				  </div>
				</a></div>
				<div class="clear"></div>
		     </div>
	 	    </div>
	 	</div>
<!--- portfolio ---->
			<div id="portfolio" class="portfolio">
				<div class="container">
				<div class="head-section">
						<h3 class="m_5">Portfolio</h3>
					 <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium.</p>
					</div>
				</div>
				<!--- Portfolio --->
			<div id="port" class="portfolio-box">
				
					<!---- start-portfolio-script----->
					<script type="text/javascript" src="js/jquery.mixitup.min.js"></script>
					<script type="text/javascript">
						$(function () {
							var filterList = {
								init: function () {
								
									// MixItUp plugin
									// http://mixitup.io
									$('#portfoliolist').mixitup({
										targetSelector: '.portfolio',
										filterSelector: '.filter',
										effects: ['fade'],
										easing: 'snap',
										// call the hover effect
										onMixEnd: filterList.hoverEffect()
									});				
								
								},
								hoverEffect: function () {
									// Simple parallax effect
									$('#portfoliolist .portfolio').hover(
										function () {
											$(this).find('.label').stop().animate({bottom: 0}, 200, 'easeOutQuad');
											$(this).find('img').stop().animate({top: -30}, 500, 'easeOutQuad');				
										},
										function () {
											$(this).find('.label').stop().animate({bottom: -40}, 200, 'easeInQuad');
											$(this).find('img').stop().animate({top: 0}, 300, 'easeOutQuad');								
										}		
									);				
								
								}
					
							};
							// Run the show!
							filterList.init();
						});	
					</script>
					<div class="container">
						<!----//End-portfolio-script----->
						<ul id="filters" class="clearfix">
						<li><span class="filter active" data-filter="app card icon logo web">All</span></li>
						<li><span class="filter" data-filter="app">Photography</span></li>
						<li><span class="filter" data-filter="card">Web Design</span></li>
						<li><span class="filter" data-filter="app">Graphics</span></li>
					 </ul>
				<div class="dummy">
					<div id="portfoliolist">
					<div class="portfolio logo1 mix_all port-big-grid wow bounceIn" data-wow-delay="0.5s" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-1.png" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>				
					<div class="portfolio app mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-2.jpg" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt"" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>					     		
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>		
					<div class="portfolio web mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-4.png" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     		<img src="images/Bfly.png" alt="" />
						     		<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>				
					<div class="portfolio icon mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-5.jpg" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>	
					<div class="portfolio app mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-5.jpg" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>			
					<div class="portfolio card mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-8.png" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>	
					<div class="portfolio icon mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="app" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-2.jpg" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     		</div>
						     	</h2>
						  	</div></a>
		                </div>
					</div>	
					<div class="portfolio app mix_all wow bounceIn" data-wow-delay="0.5s" data-cat="card" style="display: inline-block; opacity: 1;">
						<div class="portfolio-wrapper">		
							<a data-toggle="modal" data-target=".bs-example-modal-md" href="#" class="b-link-stripe b-animate-go  thickbox">
						     <img class="p-img" src="images/pic-8.png" /><div class="b-wrapper">
						     	<h2 class="b-animate b-from-left    b-delay03 ">
						     		<div class="caption1">
						     			<img src="images/Bfly.png" alt="" />
						     			<p>This is Photoshop's version  of Lorem Ipsum..</p>
						     	</h2>
						  	</div></a>
		              	  </div>
						</div>			
						<div class="clearfix"> </div>	
					</div>
				</div>
			</div>
		</div>
	</div>
			<div id="contact" class="footer">
			<div class="container">
				<div class="col-md-4 footer-grid footer-grid1">
					<div class="f-bout">
				     	<h4>Sed sit amet justo</h4>
			       	<img src="images/footer-pic.png" alt"" />
					<h5>Mail Us</h5>
					<h6><a href="#">info@w3layouts.com</a></h6>
					 </div>
				</div>
				<div class=" col-md-4 footer-grid footer-grid2">
					<h4>pillente sque blan</h4>
					<ul>
						<li><a href="#">Lorem Ipsum is simply dummy text </a></li>
						<li><a href="#">The industry's printing dummy text</a></li>
						<li><a href="#">Lorem Ipsum is simply dummy text </a></li>
						<li><a href="#">The industry's standard dummy printing</a></li>
						<li><a href="#">Lorem Ipsum is simply dummy text </a></li>
					</ul>
				</div>
				<div class="col-md-4 footer-grid footer-grid3">
					<h4>NewsLetter signup</h4>
					<P> Lorem Ipsum has been the industry's standard dummy text .</P>
					<div class="footer_search">
				    		   <form>
				    			<input type="text" value="Enter your email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your email';}">
				    			<input type="submit" value="Subscribe">
				    		   </form>
				    </div>
					<div class="recent-tweet">
							<h4>Follow Us on....</h4>
						<div class="social">	
				   		<ul>	
					 	 <li><a href="#"><span class="alo-icon"> </span></a></li>
					 	  <li><a href="#"> <span class="fb-icon"> </span></a></li>	
					 	   <li><a href="#">  <span class="t-icon"> </span></li>
					 	   <li><a href="#"><span class="in-icon"> </span></a></li>
				   		</ul>
			    	</div>
			    	<div class="clearfix"> </div>	
				</div>
				</div>
				<div class="clearfix"> </div>	
			</div>
		</div>
		<div class="bottom">
					<div class="container">
								<div class="copy-right">
									<p>&copy; 2014  All rights  Reserved | Template by &nbsp;<a href="http://w3layouts.com">W3Layouts</a></p>

								</div>								
								<div class="clearfix"> </div>
								<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
					<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
						</div>
				</div>
</body>
</html>		



