<%@ page import="com.tc.taskwatch.Task" %>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="task.description.label" default="Description" />
        <span class="required-indicator">*</span>
	</label>
    <g:textArea name="description" style="width: 500px; height: 20px;" value="${taskInstance?.description}" cols="50" rows="30" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'timeEstimated', 'error')} required">
	<label for="timeEstimated">
		<g:message code="task.timeEstimated.label" default="Time Estimated" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="timeEstimated" type="number" value="${taskInstance.timeEstimated}" required=""/> <strong>minutes</strong>
</div>

<div class="fieldcontain ${hasErrors(bean: taskInstance, field: 'timeChallenged', 'error')} ">
	<label for="timeChallenged">
		<g:message code="task.timeChallenged.label" default="Time Challenged" />
		
	</label>
	<g:field name="timeChallenged" type="number" value="${taskInstance.timeChallenged}"/> minutes
</div>