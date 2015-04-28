<!--- 
	Author:	Gavy Randhawa 
	Usage:	<cf_halt 
	msg="The page is not working, We will work on This" 
	animate="yes" 
	animateicon="/path/to/animated/icon/" 
	navigateuser="index.cfm" - if not specified, navigate user to where it came from, it will not do automatically
	senduser="Home" -  Name of the Link what to show to user when error comes up 
	target="_blank" - tell the user if they the target mode to be send to user either blank or other
	halt="yes" - Yes will stop the processing of the page immediately
	cssImage="style='border:1px solid red;' -  This is optional and it works with image Display onlyyou can use either style, class or ID anything
	css="style='border:1px solid red;' - This only works with message display you can use either style, class or ID anything 
	> 
	--->
<cfprocessingdirective suppressWhiteSpace="true">
<cfparam name="attributes.msg" default="Error Encountered">
<cfparam name="attributes.animate" default="yes">
<cfparam name="attributes.animateicon" default="aborted.png">
<cfparam name="attributes.navigateuser" default="#CGI.HTTP_REFERER#">
<cfparam name="attributes.senduser" default="Go back">
<cfparam name="attributes.target" default="_blank">
<cfparam name="attributes.halt" default="no">
<cfparam name="attributes.css" default="">
<cfparam name="attributes.cssImage" default="">
<cfoutput>
	<cfif attributes.animate IS "yes">
		<div align="center" 
		<cfif attributes.cssImage NEQ "">
			"#attributes.cssImage#"
		</cfif>
		> 
		<img src="#attributes.animateicon#" border="0">
		</div> 
	</cfif>
	<div align="center" 
	<cfif attributes.css NEQ "">
		"#attributes.css#"
	</cfif>
	>#attributes.msg#</div> 
	<cfif attributes.navigateuser neq "" OR attributes.navigateuser EQ 'CGI.HTTP_REFERER'>
		<a href="#attributes.navigateuser#" target="#attributes.target#">#attributes.senduser#</a>
	</cfif>
</cfoutput>
<cfif attributes.halt eq "yes">
	<cfabort />
</cfif>
</cfprocessingdirective>