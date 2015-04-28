<cftry>
<cfquery datasource="#request.dsn#" name="i">
select * fom mytable
</cfquery>
<cfcatch>
<cf_halt msg="Error! #cfcatch.detail# #cfcatch.message#" 
	animate="yes" 
	animateicon="http://i0.kym-cdn.com/photos/images/original/000/122/114/130232443562.gif?1305073704" 
	senduser="Home" target="_self" halt="no" navigateuser="index.cfm"> 
</cfcatch>
</cftry>	