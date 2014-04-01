<%@ page import="entities.Drug" %>



<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="drug.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="50" required="" value="${drugInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'manufacturer', 'error')} required">
	<label for="manufacturer">
		<g:message code="drug.manufacturer.label" default="Manufacturer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="manufacturer" maxlength="50" required="" value="${drugInstance?.manufacturer}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="drug.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type" from="${drugInstance.constraints.type.inList}" required="" value="${drugInstance?.type}" valueMessagePrefix="drug.type"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="drug.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: drugInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'register', 'error')} required">
	<label for="register">
		<g:message code="drug.register.label" default="Register" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="register" required="" value="${drugInstance?.register}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: drugInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="drug.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="code" required="" value="${drugInstance?.code}"/>
</div>

