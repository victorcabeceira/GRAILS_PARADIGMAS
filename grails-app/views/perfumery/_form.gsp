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

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'type', 'error')} required">
				<label for="type" class="control-label"><g:message code="perfumery.type.label" default="Type" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:select name="type" from="${perfumeryInstance.constraints.type.inList}" required="" value="${perfumeryInstance?.type}" valueMessagePrefix="perfumery.type"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'type', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'quantity', 'error')} required">
				<label for="quantity" class="control-label"><g:message code="perfumery.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="quantity" required="" value="${perfumeryInstance.quantity}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'quantity', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="perfumery.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" step="any" required="" value="${perfumeryInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: perfumeryInstance, field: 'fragrancy', 'error')} ">
				<label for="fragrancy" class="control-label"><g:message code="perfumery.fragrancy.label" default="Fragrancy" /></label>
				<div class="controls">
					<g:textField name="fragrancy" value="${perfumeryInstance?.fragrancy}"/>
					<span class="help-inline">${hasErrors(bean: perfumeryInstance, field: 'fragrancy', 'error')}</span>
				</div>
			</div>

