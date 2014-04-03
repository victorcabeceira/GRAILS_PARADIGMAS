
<%@ page import="entities.Perfumery" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'perfumery.label', default: 'Perfumery')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-perfumery" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'perfumery.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="manufacturer" title="${message(code: 'perfumery.manufacturer.label', default: 'Manufacturer')}" />
			
				<g:sortableColumn property="type" title="${message(code: 'perfumery.type.label', default: 'Type')}" />
			
				<g:sortableColumn property="quantity" title="${message(code: 'perfumery.quantity.label', default: 'Quantity')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'perfumery.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="fragrancy" title="${message(code: 'perfumery.fragrancy.label', default: 'Fragrancy')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${perfumeryInstanceList}" status="i" var="perfumeryInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${perfumeryInstance.id}">${fieldValue(bean: perfumeryInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: perfumeryInstance, field: "manufacturer")}</td>
			
				<td>${fieldValue(bean: perfumeryInstance, field: "type")}</td>
			
				<td>${fieldValue(bean: perfumeryInstance, field: "quantity")}</td>
			
				<td>${fieldValue(bean: perfumeryInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: perfumeryInstance, field: "fragrancy")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${perfumeryInstanceTotal}" />
	</div>
</section>

</body>

</html>
