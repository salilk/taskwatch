<%@ page import="com.tc.taskwatch.Task" %>



<table class="table table-bordered">
	
    <tr>
    
            <td>
                <label for="description">
                    <g:message code="task.description.label" default="Description" />
                    
                </label>
            </td>
            <td>
                    <g:textField name="description" value="${taskInstance?.description}"/>
            </td>

    </tr>

    <tr>
    
            <td>
                <label for="timeChallenged">
                    <g:message code="task.timeChallenged.label" default="Time Challenged" />
                    
                </label>
            </td>
            <td>
                    <g:field name="timeChallenged" type="number" value="${taskInstance.timeChallenged}"/>
            </td>

    </tr>

    <tr>
    
            <td>
                <label for="timeTaskStarted">
                    <g:message code="task.timeTaskStarted.label" default="Time Task Started" />
                    
                </label>
            </td>
            <td>
                    <g:field name="timeTaskStarted" type="number" value="${taskInstance.timeTaskStarted}"/>
            </td>

    </tr>

    <tr>
    
            <td>
                <label for="timeTaskFinished">
                    <g:message code="task.timeTaskFinished.label" default="Time Task Finished" />
                    
                </label>
            </td>
            <td>
                    <g:field name="timeTaskFinished" type="number" value="${taskInstance.timeTaskFinished}"/>
            </td>

    </tr>

    <tr>
    
            <td>
                <label for="timeEstimated">
                    <g:message code="task.timeEstimated.label" default="Time Estimated" />
                    <span class="required-indicator">*</span>
                </label>
            </td>
            <td>
                    <g:field name="timeEstimated" type="number" value="${taskInstance.timeEstimated}" required=""/>
            </td>

    </tr>

</table>

