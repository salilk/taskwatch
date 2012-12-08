<%@ page import="com.tc.taskwatch.Task" %>

<div class="control-group">
    <label class="control-label" for="timeChallenged">
        <g:message code="task.timeChallenged.label" default="Time Challenged"/>
    </label>

    <div class="controls">
        <div class="input-append bootstrap-timepicker-component">
            <input type="text" name="timeChallenged" class="timepicker-default input-small" placeholder="hrs:mins"/>
            <span class="add-on"><i class="icon-time"></i></span>
        </div>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="timeEstimated">
        <g:message code="task.timeEstimated.label" default="Time Estimated"/>
        <span class="required-indicator">*</span>
    </label>

    <div class="controls">
        <div class="input-append bootstrap-timepicker-component">
            <input type="text" name="timeEstimated" class="timepicker-default input-small"placeholder="hrs:mins" />
            <span class="add-on"><i class="icon-time"></i></span>
        </div>
    </div>
</div>

<div class="control-group">
    <label class="control-label" for="description">
        <g:message code="task.description.label" default="Description"/>
    </label>

    <div class="controls">
        <g:textArea cols="20" rows="5" name="description" class="span4" value="${taskInstance?.description}"/>
    </div>
</div>
