<!--- 
Theme: 	New Ease 2.0
File: 	header.cfm
Notes: 	This is a sample header file.  The header file file is generally called from 
		head.cfm after the call to init.cfm.
--->

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!--- Add Title and Meta Tags --->
<cfoutput>
  <title>MY ORGANIZATION |
  <cfif isHomepage>
    HOME PAGE TITLE
    <cfelse>
    #attributes.pagetitle#
  </cfif>
  </title>
  #getMetaTags()#</cfoutput>
<!--- Add style sheets as necessary. --->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
<cfoutput>
  <link href="../_data/#vNodeFolder#/styles/query.smartmenus.bootstrap.css" rel="stylesheet" media="screen, projection">
  <link href="../_data/#vNodeFolder#/styles/custom.css" media="screen, projection" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/custom.css" type="text/css" media="screen, projection" />
  
  <!-- Bootstrap -->
  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/bootstrap.min.css" type="text/css" media="screen, projection" />
</cfoutput>
<style>
.navbar-inverse .navbar-nav>.active>a, .navbar-inverse .navbar-nav>.active>a:focus, .navbar-inverse .navbar-nav>.active>a:hover {
	color: #e3ffdf;
	background-color: #2b8b6c;
}
.navbar-inverse .navbar-nav>li>a {
	color: #e3ffdf;
}
.navbar-inverse .navbar-brand {
	color: #e3ffdf;
}



@media (max-width: 767px) {
.navbar-inverse .navbar-nav .open .dropdown-menu>li>a {
    color: #FFFFFF;
}
}

</style>
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<body>

<!-- Static navbar -->
<div class="navbar navbar-default navbar-fixed-top navbar-inverse" role="navigation" id="navbar-inverse-color">
  <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
    <a class="navbar-brand" href="/"><i class="fa fa-cubes fa-1x"></i> Company Name</a> </div>
  <div class="navbar-collapse collapse"> 
    
    <ul id="nav" class="nav navbar-nav">
      <!--- The following variables is used in the navigation to manage which pages are 
				allowed in the navigation (e.g. password protected pages would typicallly not be allowed 
				in the navigation for a non-logged in user, unless you were trying to tease the restricted
				content).  These variables can also be set to "private" and NULL (ie not defined at all) --->
      <cfif not isDefined("client.userID") or client.userId lte 0>
        <cfset topmenu_show="public">
        <cfelse>
        <cfset topmenu_show="roleid">
      </cfif>
      <!--- Include main navigation file.  This will in turn include a cached navigation
				file that, in conjunction with the id defined above and the .css file, will define 
				the navigation (e.g. a drop down menu structure). --->
      <cfinclude template="../../../_includes/design/menu.cfm">
      <!--- Optional - Add login related links to navigation. ---> 
      <!---
				<cfif isDefined("client.userid") and client.userid NEQ 0>
						<li class="member" style="border-right:0px"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1">Logout</a></li>
					<cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
						<li class="member" style="border-right:0px"><a href="/admin">Admin</a></li>
					</cfif>
				<cfelse>
					<li class="member" style="border-right:0px"><a href="/index.cfm?pageId=xxx">Member Login</a></li>
				</cfif>--->
    </ul>
    
    <!-- Right nav -->
    <ul class="nav navbar-nav navbar-right">
      <cfif isDefined("client.userid") and client.userid NEQ 0>
        <li><cfoutput><a href="/index.cfm?fuseaction=home.editUserProfile"><i class="fa fa-user"></i>&nbsp; #request.editProfileTitle#</a></cfoutput> </li>
        <li class="active"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1"><i class="fa fa-sign-out"></i> &nbsp; Logout</a> </li>
        <cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
          <li><a href="/admin"><i class="fa fa-cogs"></i>&nbsp; Admin</a></li>
        </cfif>
        <cfelse>
        <li class="active"><a href="/login"><i class="fa fa-sign-in"></i> &nbsp; Login</a></li>
      </cfif>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="search">
        </div>
        <button type="submit" class="btn btn-default">Go!</button>
      </form>
    </ul>
  </div>
  <!--/.nav-collapse --> 
</div>
<br clear="all">
<br>
<div class="container">
<div class="row">
  <div class="col-md-8">
<!--<img src="images/logo.png" width="173" height="51" alt=""/><br>
      <p>optional tagline or mission statement</p>--> 
  </div>
  <div class="col-md-4"> </div>
</div>
<br clear="all">
<div class="row" >
  <div class="col-lg-12"> </div>
</div>


<br clear="all">
<cfif isHomepage>
  <div class="jumbotron">
	<cfset leadheadingheadline = application.apiv1.sectionsapi.getContentSection("Lead Heading Headline")>
	<cfoutput>
		<cfif isDefined("leadheadingheadline.query.content")>#leadheadingheadline.query.content#</cfif>
	</cfoutput>
    <!---<h1>Lead Heading</h1>--->
    <p class="lead">
	<cfset leadheadingtext = application.apiv1.sectionsapi.getContentSection("Lead Heading Text")>
	<cfoutput>
		<cfif isDefined("leadheadingtext.query.content")>#leadheadingtext.query.content#</cfif>
	</cfoutput>
    <!---Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet.--->
    </p>
    <p>
	<cfset leadheadingbutton = application.apiv1.sectionsapi.getContentSection("Lead Heading Button")>
	<cfoutput>
		<cfif isDefined("leadheadingbutton.query.content")>#leadheadingbutton.query.content#</cfif>
	</cfoutput>
    <!---<a class="btn btn-lg btn-primary" href="#" role="button">Read More!</a>--->
    </p>
  </div>
</cfif>

