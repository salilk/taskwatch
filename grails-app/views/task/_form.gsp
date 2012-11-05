<%@ page import="com.tc.taskwatch.Task" %>



<table class="table table-bordered">

    <tr>

        <td>
            <label for="description">
                <g:message code="task.description.label" default="Description"/>

            </label>
        </td>
        <td>
            <g:textArea cols="20" rows="5" name="description" value=""/>
        </td>

    </tr>

    <tr>

        <td>
            <label for="timeChallenged">
                <g:message code="task.timeChallenged.label" default="Time Challenged"/>

            </label>
        </td>
        <td>
            <g:field name="timeChallenged" type="number" value=""/>
        </td>

    </tr>

    <tr>

        <td>
            <label for="timeTaskStarted">
                <g:message code="task.timeTaskStarted.label" default="Time Task Started"/>

            </label>
        </td>
        <td>
            <g:field name="timeTaskStarted" type="number" value=""/>
        </td>

    </tr>

    <tr>

        <td>
            <label for="timeTaskFinished">
                <g:message code="task.timeTaskFinished.label" default="Time Task Finished"/>

            </label>
        </td>
        <td>
            <g:field name="timeTaskFinished" type="number" value=""/>
        </td>

    </tr>

    <tr>

        <td>
            <label for="timeEstimated">
                <g:message code="task.timeEstimated.label" default="Time Estimated"/>
                <span class="required-indicator">*</span>
            </label>
        </td>
        <td>
            <g:field name="timeEstimated" type="number" value="" required=""/>
        </td>

    </tr>

</table>

