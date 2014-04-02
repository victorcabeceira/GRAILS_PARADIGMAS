<%@ page import="entities.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 's_code', 'error')} required">
	<label for="s_code">
		<g:message code="employee.s_code.label" default="Scode" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="s_code" type="number" value="${employeeInstance.s_code}" required=""/>
</div>

