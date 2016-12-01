
<%@ page import="faux_eprint.Eprint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eprint.label', default: 'Eprint')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-eprint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-eprint" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list eprint">
			
				<g:if test="${eprintInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="eprint.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${eprintInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eprintInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="eprint.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${eprintInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${eprintInstance?.repdesc}">
				<li class="fieldcontain">
					<span id="repdesc-label" class="property-label"><g:message code="eprint.repdesc.label" default="Repdesc" /></span>
					
						<span class="property-value" aria-labelledby="repdesc-label"><g:fieldValue bean="${eprintInstance}" field="repdesc"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${eprintInstance?.repname}">
				<li class="fieldcontain">
					<span id="repname-label" class="property-label"><g:message code="eprint.repname.label" default="Repname" /></span>
					
						<span class="property-value" aria-labelledby="repname-label"><g:fieldValue bean="${eprintInstance}" field="repname"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:eprintInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${eprintInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
