<%@ page import="entities.Employee" %>



			<div class="control-group fieldcontain ${hasErrors(bean: employeeInstance, field: 's_code', 'error')} required">
				<label for="s_code" class="control-label"><g:message code="employee.s_code.label" default="Scode" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="s_code" required="" value="${employeeInstance.s_code}"/>
					<span class="help-inline">${hasErrors(bean: employeeInstance, field: 's_code', 'error')}</span>
				</div>
			</div>

