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

<link href="../_data/#vNodeFolder#/styles/query.smartmenus.bootstrap.css" rel="stylesheet">
<link href="../_data/#vNodeFolder#/styles/custom.css" media="screen, projection" rel="stylesheet" type="text/css">

  <link rel="stylesheet" href="../_data/#vNodeFolder#/styles/flexnav.css" type="text/css" media="screen, projection" />
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
    
    <!-- Left nav -->
    <ul class="nav navbar-nav">
      <li><a href="#">Link one</a></li>
      <li><a href="#">Link two</a></li>
      <li><a href="#">Link three</a></li>
      <li><a href="#">Link four <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">sub link 1</a></li>
          <li><a href="#">sub link 2</a></li>
          <li><a href="#">sub link 3</a></li>
          <li><a href="#">sub link 4</a></li>
          <li><a href="#">sub link 5<span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="#">sub link 1</a></li>
              <li><a href="#">sub link 2</a></li>
              <li><a href="#">sub link 3</a></li>
              <li><a href="#">sub link 4</a></li>
              <li><a href="#">sub link 5<span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Menu item 1</a></li>
                  <li><a href="#">Menu item 2</a></li>
                  <li><a href="#">Menu item 3</a></li>
                  <li><a href="#">Menu item 4</a></li>
                  <li><a href="#">Menu item 5</a></li>
                  <li><a href="#">Menu item 6</a></li>
                  <li><a href="#">Menu item 7</a></li>
                  <li><a href="#">Menu item 8</a></li>
                  <li><a href="#">Menu item 9</a></li>
                  <li><a href="#">Menu item 10</a></li>
                  <li><a href="#">Menu item 11</a></li>
                  <li><a href="#">Menu item 12</a></li>
                  <li><a href="#">Menu item 13</a></li>
                </ul>
              </li>
              <li><a href="#">sub link 6</a></li>
              <li><a href="#">sub link 7</a></li>
            </ul>
          </li>
        </ul>
      </li>
    </ul>
    
    <!-- Right nav -->
    <ul class="nav navbar-nav navbar-right">
    <cfif isDefined("client.userid") and client.userid NEQ 0>
      <li><cfoutput><a href="/index.cfm?fuseaction=home.editUserProfile">#request.editProfileTitle#</a></cfoutput>  </li>
     <li class="active"><a href="/index.cfm?fuseaction=home.Logout&nodeID=1"><span class="glyphicon glyphicon-log-out" aria-hidden="true"></span> &nbsp; Logout</a> </li> 
      <cfif isDefined("client.issuperuser") and client.issuperuser EQ 1>
       <li><a href="/admin">Admin</a></li>
      </cfif>
      <cfelse>
      <li class="active"><a href="/login"><span class="glyphicon glyphicon-log-in" aria-hidden="true"></span> &nbsp; Login</a></li> 
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
    <div class="col-md-8"><!--<img src="images/logo.png" width="173" height="51" alt=""/><br>
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