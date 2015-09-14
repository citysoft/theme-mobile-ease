<!---
	File Name:		\_data\global\extensions\config.cfm
	Called From:	\fbx_circuits.cfm - The main circuits file looks for this file
					and declares any circuits that it finds here.
	Purpose:		This file creates circuit records for extensions
	Usage:			Copy / rename this file to config.cfm within the /global/extensions folder.
					Within the renamed file, uncomment one of the examples below and replace the
					circuit name and the related extension.  A real life example for deploying a
					theme insallation script might look lik this:
					<cfset fusebox.Circuits.themeDeploy = "home/_data/global/extensions/themeDeploy">
--->
<!---<cfset fusebox.Circuits.xxx = "home/_data/global/extensions/xxx">--->
<!---<cfset fusebox.Circuits.yyy = "home/_data/global/extensions/yyy">--->
<!---<cfset fusebox.Circuits.zzz = "home/_data/global/extensions/zzz">--->
<!---<script><!--
//--></script>--->
<cfset fusebox.Circuits.themeDeploy = "home/_data/global/extensions/themeDeploy">