<%@ page import="entities.Drug" %>



			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="drug.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" maxlength="50" required="" value="${drugInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'manufacturer', 'error')} required">
				<label for="manufacturer" class="control-label"><g:message code="drug.manufacturer.label" default="Manufacturer" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="manufacturer" maxlength="50" required="" value="${drugInstance?.manufacturer}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'manufacturer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="drug.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="quantity" required="" value="${drugInstance.quantity}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="drug.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" step="any" required="" value="${drugInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'stock', 'error')} required">
				<label for="stock" class="control-label"><g:message code="drug.stock.label" default="Stock" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="stock" required="" value="${drugInstance.stock}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'stock', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'type', 'error')} required">
				<label for="type" class="control-label"><g:message code="drug.type.label" default="Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="type" from="${drugInstance.constraints.type.inList}" required="" value="${drugInstance?.type}" valueMessagePrefix="drug.type"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'type', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'register', 'error')} required">
				<label for="register" class="control-label"><g:message code="drug.register.label" default="Register" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="register" required="" value="${drugInstance?.register}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'register', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'code', 'error')} required">
				<label for="code" class="control-label"><g:message code="drug.code.label" default="Code" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="code" required="" value="${drugInstance?.code}"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'code', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: drugInstance, field: 'pack', 'error')} required">
				<label for="pack" class="control-label"><g:message code="drug.pack.label" default="Pack" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="pack" from="${drugInstance.constraints.pack.inList}" required="" value="${drugInstance?.pack}" valueMessagePrefix="drug.pack"/>
					<span class="help-inline">${hasErrors(bean: drugInstance, field: 'pack', 'error')}</span>
				</div>
			</div>

