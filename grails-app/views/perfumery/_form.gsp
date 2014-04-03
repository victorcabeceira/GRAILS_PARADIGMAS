<%@ page import="entities.Perfumery" %>


<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="perfumery.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${perfumeryInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="perfumery.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacturer" maxlength="50" required="" value="${perfumeryInstance?.manufacturer}"/>
</div>


<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="perfumery.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${perfumeryInstance.constraints.type.inList}" required="" value="${perfumeryInstance?.type}" valueMessagePrefix="perfumery.type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'fragrancy', 'error')} required">
	<label for="fragrancy">
		<g:message code="perfumery.fragrancy.label" default="Fragrancy" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="fragrancy" from="${perfumeryInstance.constraints.fragrancy.inList}" required="" value="${perfumeryInstance?.fragrancy}" valueMessagePrefix="perfumery.fragrancy"/>
</div>

<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="perfumery.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>

	<g:field name="price" value="${fieldValue(bean: perfumeryInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'quantity', 'error')} required">
	<label for="quantity">
		<g:message code="perfumery.quantity.label" default="Quantity" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="quantity" type="number" value="${perfumeryInstance.quantity}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'stock', 'error')} required">
	<label for="stock">
		<g:message code="perfumery.stock.label" default="Stock" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="stock" type="number" value="${perfumeryInstance.stock}" required=""/>
</div>