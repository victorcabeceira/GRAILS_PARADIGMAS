
<%@ page import="entities.Drug" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'drug.label', default: 'Drug')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-drug" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'drug.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="manufacturer" title="${message(code: 'drug.manufacturer.label', default: 'Manufacturer')}" />
			
				<g:sortableColumn property="quantity" title="${message(code: 'drug.quantity.label', default: 'Quantity')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'drug.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="stock" title="${message(code: 'drug.stock.label', default: 'Stock')}" />
			
				<g:sortableColumn property="type" title="${message(code: 'drug.type.label', default: 'Type')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${drugInstanceList}" status="i" var="drugInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${drugInstance.id}">${fieldValue(bean: drugInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: drugInstance, field: "manufacturer")}</td>
			
				<td>${fieldValue(bean: drugInstance, field: "quantity")}</td>
			
				<td>${fieldValue(bean: drugInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: drugInstance, field: "stock")}</td>
			
				<td>${fieldValue(bean: drugInstance, field: "type")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${drugInstanceTotal}" />
	</div>
</section>

</body>

</html>
