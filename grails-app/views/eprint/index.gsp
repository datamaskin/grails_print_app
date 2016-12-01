
<%@ page import="faux_eprint.Eprint" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'eprint.label', default: 'Eprint')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-eprint" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
        <dt:datatable name="EprintTable" domainClass="faux_eprint.Eprint" serverSide="true">
            <dt:column name="repname"/>
            <dt:column name="repdesc"/>
            <dt:column name="dateCreated"/>
            <dt:column name="lastUpdated"/>
        </dt:datatable>
        <asset:deferredScripts/>
		<script type="javascript">

		</script>
		%{--<div id="list-eprint" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
                        <g:sortableColumn property="repname" title="${message(code: 'eprint.repname.label', default: 'Repname')}" />

                        <g:sortableColumn property="repdesc" title="${message(code: 'eprint.repdesc.label', default: 'Repdesc')}" />

						<g:sortableColumn property="dateCreated" title="${message(code: 'eprint.dateCreated.label', default: 'Date Created')}" />

						<g:sortableColumn property="lastUpdated" title="${message(code: 'eprint.lastUpdated.label', default: 'Last Updated')}" />

					</tr>
				</thead>
				<tbody>
				<g:each in="${eprintInstanceList}" status="i" var="eprintInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eprintInstance.id}">${fieldValue(bean: eprintInstance, field: "repname")}</g:link></td>

                        <td>${fieldValue(bean: eprintInstance, field: "repdesc")}</td>

                        <td><g:formatDate date="${eprintInstance.lastUpdated}" /></td>

						<td>${fieldValue(bean: eprintInstance, field: "dateCreated")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eprintInstanceCount ?: 0}" />
			</div>
		</div>--}%
	</body>
</html>
