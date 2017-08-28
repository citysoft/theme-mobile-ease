  <cfif isHomepage>
   <hr>
  <div class="row featurette">
    <div class="col-md-5">
      <div class="media">
        <p>
        <h2>Latest News</h2>
        </p>
        <div class="media-left">
			<!-- Latest News 1 Graphic -->
			<cfset latestnews1graphic = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 1 Graphic", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews1graphic.query.content")>#latestnews1graphic.query.content#</cfif>
			</cfoutput>
        	<!---<a href="#"><img class="media-object" data-src="holder.js/64x64" alt="64x64" src="../_data/#vNodeFolder#/images/highlightbox_pic1.jpg" data-holder-rendered="true" style="width: 64px; height: 64px;"></a>--->
        </div>
        <div class="media-body">
			<!-- Latest News 1 -->
			<cfset latestnews1 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 1", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews1.query.content")>#latestnews1.query.content#</cfif>
			</cfoutput>
          <!---<h4 class="media-heading">Title heading</h4>
          <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>--->
        </div>
      </div>
      <div class="media">
        <div class="media-left">
			<!-- Latest News 2 Graphic -->
			<cfset latestnews2graphic = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 2 Graphic", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews2graphic.query.content")>#latestnews2graphic.query.content#</cfif>
			</cfoutput>
        	<!---<a href="#"><img class="media-object" data-src="holder.js/64x64" alt="64x64" src="../_data/#vNodeFolder#/images/highlightbox_pic4.jpg" data-holder-rendered="true" style="width: 64px; height: 64px;"></a>--->
        </div>
        <div class="media-body">
			<!-- Latest News 2 -->
			<cfset latestnews2 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 2", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews2.query.content")>#latestnews2.query.content#</cfif>
			</cfoutput>
          <!---<h4 class="media-heading">Title heading</h4>
          <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>--->
        </div>
      </div>
      <div class="media">
        <div class="media-left">
			<!-- Latest News 3 Graphic -->
			<cfset latestnews3graphic = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 3 Graphic", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews3graphic.query.content")>#latestnews3graphic.query.content#</cfif>
			</cfoutput>
        <!---<a href="#"><img class="media-object" data-src="holder.js/64x64" alt="64x64" src="../_data/#vNodeFolder#/images/highlightbox_pic3.jpg" data-holder-rendered="true" style="width: 64px; height: 64px;"></a>--->
       </div>
        <div class="media-body">
			<!-- Latest News 3 -->
			<cfset latestnews3 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Latest News 3", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("latestnews3.query.content")>#latestnews3.query.content#</cfif>
			</cfoutput>
          <!---<h4 class="media-heading">Title heading</h4>
          <p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>--->
        </div>
      </div>
    </div>

<div class="col-md-7">
  <p>
  <h2>Feature Slideshow</h2>
  </p>
  <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">

    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
      <li data-target="#carousel-example-generic" data-slide-to="1"></li>
      <li data-target="#carousel-example-generic" data-slide-to="2"></li>
      <li data-target="#carousel-example-generic" data-slide-to="3"></li>
    </ol>
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
  		<!-- Slide 1 -->
		<cfoutput><cfset slide1 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 1", NodeID=#attributes.NodeID#)></cfoutput>
		<cfoutput><cfif isDefined("slide1.query.content")>#slide1.query.content#</cfif></cfoutput>
      	<!---<img src="../_data/#vNodeFolder#/images/main_img1.jpg" alt="">--->
        <div class="carousel-caption">
			<!-- Slide 1 Text -->
			<cfset slide1text = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 1 Text", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("slide1text.query.content")>#slide1text.query.content#</cfif>
			</cfoutput>
          <!---<h2>Heading</h2>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-sm btn-success" href="#" role="button">Learn More!</a> </p>--->
        </div>
      </div>
      <div class="item">
  		<!-- Slide 2 -->
		<cfset slide2 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 2", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("slide2.query.content")>#slide2.query.content#</cfif>
		</cfoutput>
      	<!---<img src="../_data/#vNodeFolder#/images/hm_slide_temp2.jpg" alt="">--->
        <div class="carousel-caption">
			<!-- Slide 2 Text -->
			<cfset slide2text = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 2 Text", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("slide2text.query.content")>#slide2text.query.content#</cfif>
			</cfoutput>
          <!---<h2>Heading</h2>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-sm btn-success" href="#" role="button">Learn More!</a></p>--->
        </div>
      </div>
      <div class="item">
  		<!-- Slide 3 -->
		<cfset slide3 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 3", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("slide3.query.content")>#slide3.query.content#</cfif>
		</cfoutput>
      	<!---<img src="../_data/#vNodeFolder#/images/hm_slide_temp3.jpg" alt="">--->
        <div class="carousel-caption">
			<!-- Slide 3 Text -->
			<cfset slide3text = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 3 Text", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("slide3text.query.content")>#slide3text.query.content#</cfif>
			</cfoutput>
          <!---<h2>Heading</h2>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-sm btn-success" href="#" role="button">Learn More!</a></p>--->
        </div>
      </div>
      <div class="item">
  		<!-- Slide 4 -->
		<cfset slide4 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 4", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("slide4.query.content")>#slide4.query.content#</cfif>
		</cfoutput>
      	<!---<img src="../_data/#vNodeFolder#/images/hm_slide_temp4.jpg" alt="">--->
        <div class="carousel-caption">
			<!-- Slide 4 Text -->
			<cfset slide4text = application.apiv1.sectionsapi.getContentSection(sectionTitle="Slide 4 Text", NodeID=#attributes.NodeID#)>
			<cfoutput>
				<cfif isDefined("slide4text.query.content")>#slide4text.query.content#</cfif>
			</cfoutput>
          <!---<h2>Heading</h2>
          <p class="lead">Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          <p> <a class="btn btn-sm btn-success" href="#" role="button">Learn More!</a></p>--->
        </div>
      </div>
    </div>
    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">Previous</span> </a> <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">Next</span> </a> </div>
</div>
</div>
</div>
</cfif>
<br clear="all">
<div class="row" id="footer-row">
  <div class="col-lg-12">
    <div class="container"> <br clear="all">
      <div class="col-lg-3">
  		<!-- Footer Links 1 -->
		<cfset footerlinks1 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Footer Links 1", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("footerlinks1.query.content")>#footerlinks1.query.content#</cfif>
		</cfoutput>
        <!---<h3>Footer link heading</h3>
        <p> <a href="#">Footer link one</a><br>
          <a href="#">Footer link two</a><br>
          <a href="#">Footer link three</a><br>
          <a href="#">Footer link four</a> </p>--->
      </div>
      <div class="col-lg-3">
  		<!-- Footer Links 2 -->
		<cfset footerlinks2 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Footer Links 2", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("footerlinks2.query.content")>#footerlinks2.query.content#</cfif>
		</cfoutput>
        <!---<h3>Footer link heading</h3>
        <p> <a href="#">Footer link one</a><br>
          <a href="#">Footer link two</a><br>
          <a href="#">Footer link three</a><br>
          <a href="#">Footer link four</a> </p>--->
      </div>
      <div class="col-lg-3">
  		<!-- Footer Links 3 -->
		<cfset footerlinks3 = application.apiv1.sectionsapi.getContentSection(sectionTitle="Footer Links 3", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("footerlinks3.query.content")>#footerlinks3.query.content#</cfif>
		</cfoutput>
        <!---<h3>Footer link heading</h3>
        <p> <a href="#">Footer link one</a><br>
          <a href="#">Footer link two</a><br>
          <a href="#">Footer link three</a><br>
          <a href="#">Footer link four</a> </p>--->
      </div>
      <div class="col-lg-3">
  		<!-- Footer Connect Links -->
		<cfset footerconnectlinks = application.apiv1.sectionsapi.getContentSection(sectionTitle="Footer Connect Links", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("footerconnectlinks.query.content")>#footerconnectlinks.query.content#</cfif>
		</cfoutput>
        <!---<h3>Connect with Us!</h3>
        <p><a href="#"><i class="fa fa-facebook-square fa-3x"></i> </a> <a href="#"><i class="fa fa-twitter-square fa-3x"></i> </a> <a href="#"><i class="fa fa-linkedin-square fa-3x"></i> </a> <a href="#"><i class="fa fa-youtube-square fa-3x"></i> </a></p>--->
      </div>
    </div>
  </div>
</div>
<footer class="footer">
  <div class="row">
    <div class="col-lg-12">
      <p class="pull-right"><a href="#"><i class="fa fa-arrow-circle-up"></i> Back to top</a></p>
  		<!-- Footer Bottom Links -->
		<cfset footerbottomlinks = application.apiv1.sectionsapi.getContentSection(sectionTitle="Footer Bottom Links", NodeID=#attributes.NodeID#)>
		<cfoutput>
			<cfif isDefined("footerbottomlinks.query.content")>#footerbottomlinks.query.content#</cfif>
		</cfoutput>
      <!---<p>&copy; 2015 Your Company, Inc. | <a href="#">Privacy</a> | <a href="#">Terms</a></p>--->
    </div>
  </div>
</footer>

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!--- The conditional below assumes that CE is in use and will prevent a jquery collision between the script call below
	  and a similar one that happens in the "Manage Your Profile" feature. --->
<!--- Script call below assumes jquery is being loaded from within our core code, but could point to a 3rd party CDN as well. --->
<cfif isDefined("fuseaction") and fuseaction EQ "home.editUserProfile">
	<!--- do nothing --->
<cfelse>
	<script src="/_includes/jquery/1.11.3/jquery.min.js"></script>
</cfif>
<cfoutput>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="../_data/#vNodeFolder#/scripts/bootstrap.min.js"></script>
  <script src="../_data/#vNodeFolder#/scripts/jquery.flexnav.js" type="text/javascript"></script>
  <!-- SmartMenus jQuery plugin -->
  <script type="text/javascript" src="../_data/#vNodeFolder#/scripts/jquery.smartmenus.js"></script>

  <!-- SmartMenus jQuery Bootstrap Addon -->
  <script type="text/javascript" src="../_data/#vNodeFolder#/scripts/jquery.smartmenus.bootstrap.js"></script>
</cfoutput>
<script type="text/javascript">

		jQuery(document).ready(function($) {


			// initialize FlexNav
			//$(".flexnav").flexNav();
		});



    </script>
</body></html>