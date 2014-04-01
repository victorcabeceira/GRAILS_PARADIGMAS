
<%@ page import="entities.Drug" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-drug" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-drug" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'drug.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="manufacturer" title="${message(code: 'drug.manufacturer.label', default: 'Manufacturer')}" />
					
						<g:sortableColumn property="type" title="${message(code: 'drug.type.label', default: 'Type')}" />
					
						<g:sortableColumn property="price" title="${message(code: 'drug.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="register" title="${message(code: 'drug.register.label', default: 'Register')}" />
					
						<g:sortableColumn property="code" title="${message(code: 'drug.code.label', default: 'Code')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${drugInstanceList}" status="i" var="drugInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${drugInstance.id}">${fieldValue(bean: drugInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: drugInstance, field: "manufacturer")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "type")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "price")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "register")}</td>
					
						<td>${fieldValue(bean: drugInstance, field: "code")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${drugInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
