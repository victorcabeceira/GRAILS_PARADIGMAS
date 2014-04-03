
<%@ page import="entities.Perfumery" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'perfumery.label', default: 'Perfumery')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-perfumery" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-perfumery" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<g:sortableColumn property="name" title="${message(code: 'perfumery.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="manufacturer" title="${message(code: 'perfumery.manufacturer.label', default: 'Manufacturer')}" />

						<g:sortableColumn property="type" title="${message(code: 'perfumery.type.label', default: 'Type')}" />

						<g:sortableColumn property="fragrancy" title="${message(code: 'perfumery.fragrancy.label', default: 'Fragrancy')}" />

						<g:sortableColumn property="price" title="${message(code: 'perfumery.price.label', default: 'Price')}" />
					
						<g:sortableColumn property="quantity" title="${message(code: 'perfumery.quantity.label', default: 'Quantity')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${perfumeryInstanceList}" status="i" var="perfumeryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${perfumeryInstance.id}">${fieldValue(bean: perfumeryInstance, field: "name")}</g:link></td>

						<td>${fieldValue(bean: perfumeryInstance, field: "manufacturer")}</td>
					
						<td>${fieldValue(bean: perfumeryInstance, field: "type")}</td>

						<td>${fieldValue(bean: perfumeryInstance, field: "fragrancy")}</td>

						<td>${fieldValue(bean: perfumeryInstance, field: "price")}</td>

						<td>${fieldValue(bean: perfumeryInstance, field: "quantity")}</td>

					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${perfumeryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
