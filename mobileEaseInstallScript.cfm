<!--- This script installs the content sections into CE for use by the slide show
	  in the Mobile Ease template --->
<!--- URL to run script:
Option #1 - If you are using an extension folder to run the deployment script (which allows you to bypass the "check request" 
security filter), then your deployment url might look like the following:
http://www.domain.com/index.cfm?fuseaction=themeDeploy.mobileEase&testmode=1&sections=1&pages=0&node=1&showerrors=1

Option #2 - If you want to run the file directly, the url might look similar to the following (but would need to be added as
an exception in the "check request" security filter in order to run):
http://www.domain.com/_data/n_0001/scripts/mobileEaseInstallScript.cfm?testmode=1&sections=1&pages=1&showerrors=1 
change testmode from 1 to 0 to run it. --->
<!--- To Do: Make the node folder into a variable so it will be easier to install into a node other than node 1. --->
<cfparam name="url.testmode" type="boolean" default="true">
<cfparam name="url.sections" type="boolean" default="false">
<cfparam name="url.pages" type="boolean" default="false">
<cfparam name="url.node" type="numeric" default=1><!--- If this is 0, that indicates the /global/ directory --->

<cfif isDefined("url.node") AND url.node EQ 0>
	<cfset variables.pathlocation = "global">
<cfelseif isDefined("url.node") AND url.node GT 0>
	<cfset variables.pathlocation = "n_" & NumberFormat(url.node, "0009")>
</cfif>

<cfif isDefined("url.testmode") AND url.testmode EQ 1>
	TEST MODE ONLY - NO INSERTS INTO CE DB<br>
</cfif>

<cfset variables.sectiondescription = "Please Note - This section displays content on the home page.<br>  
			Changes to the section title may cause the section content to disappear from the home page.">

<!--- Install Slide Content Channels --->
<font size=5>Install Mobile Ease Theme Sections and Pages</font><br>
<br>
<!---                                                  --->
<!---          1. INSTALL DEFAULT SECTIONS             --->
<!---                                                  --->
<!---          1.1 Create a query and set its contents. --->
<cfset sectioninstallquery = QueryNew( "sectiontitle, sectiondescription, sectioncontent" ) />

		<!--- Lead Heading Sections --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Lead Heading Headline" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<h1>Lead Heading</h1>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Lead Heading Text" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "Cras justo odio, dapibus ac facilisis in, egestas eget quam. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet." ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Lead Heading Button" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<a class='btn btn-lg btn-primary' href='##' role='button'>Read More!</a>" ) />

		<!--- Slide Sections --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<img src='../_data/#variables.pathlocation#/images/main_img1.jpg' alt=''>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<img src='../_data/#variables.pathlocation#/images/hm_slide_temp2.jpg' alt=''>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<img src='../_data/#variables.pathlocation#/images/hm_slide_temp3.jpg' alt=''>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 4" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "<img src='../_data/#variables.pathlocation#/images/hm_slide_temp4.jpg' alt=''>" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 1 Text" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h2>Heading</h2>
          	<p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          	<p> <a class='btn btn-sm btn-success' href='##' role='button'>Learn More!</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 2 Text" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h2>Heading</h2>
          	<p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          	<p> <a class='btn btn-sm btn-success' href='##' role='button'>Learn More!</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 3 Text" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h2>Heading</h2>
          	<p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          	<p> <a class='btn btn-sm btn-success' href='##' role='button'>Learn More!</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Slide 4 Text" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h2>Heading</h2>
          	<p class='lead'>Cras justo odio, dapibus ac facilisis in, egestas eget quam.</p>
          	<p> <a class='btn btn-sm btn-success' href='##' role='button'>Learn More!</a> </p>
			" ) />

		<!--- Latest News Sections --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h4 class='media-heading'>Title heading</h4>
          	<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h4 class='media-heading'>Title heading</h4>
          	<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h4 class='media-heading'>Title heading</h4>
          	<p>Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin commodo. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. </p>
			" ) />

		<!--- Latest News Graphics --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 1 Graphic" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<a href='##'><img class='media-object' data-src='holder.js/64x64' alt='64x64' src='../_data/#variables.pathlocation#/images/highlightbox_pic1.jpg' data-holder-rendered='true' style='width: 64px; height: 64px;'></a>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 2 Graphic" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<a href='##'><img class='media-object' data-src='holder.js/64x64' alt='64x64' src='../_data/#variables.pathlocation#/images/highlightbox_pic4.jpg' data-holder-rendered='true' style='width: 64px; height: 64px;'></a>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Latest News 3 Graphic" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
		<a href='##'><img class='media-object' data-src='holder.js/64x64' alt='64x64' src='../_data/#variables.pathlocation#/images/highlightbox_pic3.jpg' data-holder-rendered='true' style='width: 64px; height: 64px;'></a>
			" ) />

		<!--- Footer Sections --->
		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Footer Links 1" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h3>Footer link heading</h3>
        	<p> <a href='##'>Footer link one</a><br>
        	  <a href='##'>Footer link two</a><br>
        	  <a href='##'>Footer link three</a><br>
        	  <a href='##'>Footer link four</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Footer Links 2" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h3>Footer link heading</h3>
        	<p> <a href='##'>Footer link one</a><br>
        	  <a href='##'>Footer link two</a><br>
        	  <a href='##'>Footer link three</a><br>
        	  <a href='##'>Footer link four</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Footer Links 3" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h3>Footer link heading</h3>
        	<p> <a href='##'>Footer link one</a><br>
        	  <a href='##'>Footer link two</a><br>
        	  <a href='##'>Footer link three</a><br>
        	  <a href='##'>Footer link four</a> </p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Footer Connect Links" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<h3>Connect with Us!</h3>
        <p><a href='##'><i class='fa fa-facebook-square fa-3x'></i> </a> <a href='##'><i class='fa fa-twitter-square fa-3x'></i> </a> <a href='##'><i class='fa fa-linkedin-square fa-3x'></i> </a> <a href='##'><i class='fa fa-youtube-square fa-3x'></i> </a></p>
			" ) />

		<cfset QueryAddRow( sectioninstallquery ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiontitle", "Footer Bottom Links" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectiondescription", "#variables.sectiondescription#" ) />
		<cfset QuerySetCell( sectioninstallquery, "sectioncontent", "
			<p>&copy; 2017 Your Company, Inc. | <a href='##'>Privacy</a> | <a href='##'>Terms</a></p>
			" ) />

<cfdump var="#sectioninstallquery#" label=""/>

<cfif isDefined("url.testmode") AND url.testmode EQ 0>

	<cfoutput query="sectioninstallquery">
	
		<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
		<cfquery name="dupecheck" datasource="#request.dsn#">
			SELECT title
			FROM contentT
			WHERE title = <cfqueryparam value="#sectioninstallquery.sectiontitle#" cfsqltype="CF_SQL_VARCHAR">
			AND NodeID = <cfqueryparam value="#url.node#" cfsqltype="cf_sql_integer">
		</cfquery>
	
		<cfif NOT dupecheck.recordcount>
		<!--- write to db --->
			<cfif isDefined("url.sections") AND url.sections EQ 1>
				<cfquery name="insertcontentchannels" datasource="#request.dsn#">
					INSERT INTO contentT (
						Title
						,Content
						,Description
						,CreateDate
						<cfif isDefined("url.Node") AND isValid("integer",trim(url.node))>
						,NodeID
						</cfif>
						)
					VALUES (
						<cfqueryparam value="#trim(sectioninstallquery.sectiontitle)#" cfsqltype="CF_SQL_VARCHAR">
						,<cfqueryparam value="#trim(sectioninstallquery.sectioncontent)#" cfsqltype="CF_SQL_VARCHAR">
						,<cfqueryparam value="#trim(sectioninstallquery.sectiondescription)#" cfsqltype="CF_SQL_VARCHAR">
						,#CreateODBCDateTime(now())#
						<cfif isDefined("url.Node") AND isValid("integer",trim(url.node))>
						,<cfqueryparam value="#url.node#" cfsqltype="cf_sql_integer">
						</cfif>
						)
				</cfquery>
			</cfif>
		</cfif>
	
	</cfoutput>

<cfelse>

	TEST MODE - NO SECTIONS INSERTED<br><br>

</cfif>

<!---                                               --->
<!---          2. INSTALL DEFAULT PAGES             --->
<!---                                               --->
<!--- Create a query and set its contents. --->
<cfset pageinstallquery = QueryNew( "pagetitle, pagenavtitle, pagecontent" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "About" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "About Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Services" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Services Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "News" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "News Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Events" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Events Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Resources" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Resources Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Programs" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Programs Page Content" ) />

	<cfset QueryAddRow( pageinstallquery ) />
	<cfset QuerySetCell( pageinstallquery, "pagetitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagenavtitle", "Join" ) />
	<cfset QuerySetCell( pageinstallquery, "pagecontent", "Join Page Content" ) />

	<!--- Get Page Template --->
	<cfquery name="getpagetemplateid" datasource="#request.dsn#">
		SELECT pagetemplateid
		FROM pagetemplate
		WHERE name = <cfqueryparam value="div_c1" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

<cfdump var="#pageinstallquery#" label=""/>

<cfif isDefined("url.testmode") AND url.testmode EQ 0>

	<!--- Insert to the Destination DB --->
	<cfoutput query="pageinstallquery">
	
		<!--- Checks for existance of page so that duplicates are not accidentally imported. --->
		<cfquery name="dupecheck" datasource="#request.dsn#">
			SELECT pagetitle
			FROM page
			WHERE pagetitle = <cfqueryparam value="#pageinstallquery.pagetitle#" cfsqltype="CF_SQL_VARCHAR">
			AND NodeID = <cfqueryparam value="#url.node#" cfsqltype="cf_sql_integer">
		</cfquery>

		<!--- Get ParentPageID for insert below into Page table. --->
		<cfquery name="getHomePageID" datasource="#request.dsn#">
			SELECT pageid
			FROM page
			WHERE parentpageid = 0
				AND NodeID = <cfqueryparam value="#url.node#" cfsqltype="cf_sql_integer">
		</cfquery>
	
		<cfif NOT dupecheck.recordcount>
		<!--- Insert page info --->
			<cfif NOT url.testmode and url.pages EQ 1>
				<cfquery name="insertpage" datasource="#request.dsn#">
					INSERT INTO page(
						parentpageID,
						pagetemplateid,	
						nodeid,
						pageTitle,
						pageNavTitle,
						approvallevel,
						CreatorUserID,
						CreateDate
						)
					Values(
						<cfqueryparam value="#getHomePageID.PageID#" cfsqltype="cf_sql_integer">
						,<cfqueryparam value="#getpagetemplateid.pagetemplateid#" cfsqltype="CF_SQL_VARCHAR">
						,<cfqueryparam value="#url.node#" cfsqltype="cf_sql_integer">
						,<cfqueryparam value="#trim(pageinstallquery.pagetitle)#" cfsqltype="CF_SQL_VARCHAR">
						,<cfqueryparam value="#trim(pageinstallquery.pagenavtitle)#" cfsqltype="CF_SQL_VARCHAR">
						,4
						,4295
						,#CreateODBCDateTime(now())#
						)
					SELECT @@IDENTITY pageID
				</cfquery>
				
				<!--- Insert page content --->
				<cfquery name="insertpagecontent" datasource="#request.dsn#">			
					INSERT INTO PageContent
						(
						PageID,
						HTMLContent,
						TemplatePosition,
						CreatorUserID,
						CreateDate,
						ApplicationPK
						)
					VALUES 
						(
						<cfqueryparam value="#insertpage.pageid#" cfsqltype="CF_SQL_INTEGER">
						,<cfqueryparam value="#pageinstallquery.pagecontent#" cfsqltype="CF_SQL_VARCHAR">
						,'c1'
						,4295
						,#CreateODBCDateTime(now())#
						,0
						)
				</cfquery>
			</cfif>
		</cfif>
	</cfoutput>

<cfelse>

	TEST MODE - NO PAGES INSERTED<br><br>

</cfif>

DONE!