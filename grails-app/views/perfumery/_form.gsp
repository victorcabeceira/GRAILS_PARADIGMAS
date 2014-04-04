<%@ page import="entities.Perfumery" %>



			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'name', 'error')} required">
				<label for="name" class="control-label"><g:message code="perfumery.name.label" default="Name" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="name" maxlength="50" required="" value="${perfumeryInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'manufacturer', 'error')} required">
				<label for="manufacturer" class="control-label"><g:message code="perfumery.manufacturer.label" default="Manufacturer" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:textField name="manufacturer" maxlength="50" required="" value="${perfumeryInstance?.manufacturer}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'manufacturer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="perfumery.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="quantity" min="0" required="" value="${perfumeryInstance.quantity}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="perfumery.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" min="0" step="any" required="" value="${perfumeryInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'stock', 'error')} required">
				<label for="stock" class="control-label"><g:message code="perfumery.stock.label" default="Stock" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="stock" min="0" required="" value="${perfumeryInstance.stock}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'stock', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'type', 'error')} required">
				<label for="type" class="control-label"><g:message code="perfumery.type.label" default="Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="type" from="${perfumeryInstance.constraints.type.inList}" required="" value="${perfumeryInstance?.type}" valueMessagePrefix="perfumery.type"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'type', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'fragrancy', 'error')} required">
				<label for="fragrancy" class="control-label"><g:message code="perfumery.fragrancy.label" default="Fragrancy" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="fragrancy" from="${perfumeryInstance.constraints.fragrancy.inList}" required="" value="${perfumeryInstance?.fragrancy}" valueMessagePrefix="perfumery.fragrancy"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'fragrancy', 'error')}</span>
				</div>
			</div>

