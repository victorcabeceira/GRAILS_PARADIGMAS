<%@ page import="entities.Product" %>



			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="product.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" maxlength="50" required="" value="${productInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'manufacturer', 'error')} required">
				<label for="manufacturer" class="control-label"><g:message code="product.manufacturer.label" default="Manufacturer" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="manufacturer" maxlength="50" required="" value="${productInstance?.manufacturer}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'manufacturer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'type', 'error')} required">
				<label for="type" class="control-label"><g:message code="product.type.label" default="Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="type" from="${productInstance.constraints.type.inList}" required="" value="${productInstance?.type}" valueMessagePrefix="product.type"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'type', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="product.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="quantity" required="" value="${productInstance.quantity}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="product.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" step="any" required="" value="${productInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'price', 'error')}</span>
				</div>
			</div>

