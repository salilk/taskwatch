package com.tc.taskwatch

class TaskController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def create() {
        [taskInstance: new Task(params)]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [taskInstanceList: Task.list(params), taskInstanceTotal: Task.count()]
    }

    def save() {
        params.timeChallenged = extractTimeInMinutes(params.timeChallenged)
        params.timeEstimated = extractTimeInMinutes(params.timeEstimated)
        Task taskInstance = new Task(params)
        if (taskInstance.validate() && taskInstance.save()) {
            redirect action: 'list', id: taskInstance?.id
        } else {
            render view: 'create', model: [taskInstance: taskInstance]
        }
    }

    def show(Long id) {
        withTaskInstance { Task taskInstance ->
            [taskInstance: taskInstance]
        }
    }

    def edit(Long id) {
        withTaskInstance() { Task taskInstance ->
            [taskInstance: taskInstance]
        }
    }

    def update(Long id, Long version) {
        params.timeChallenged = extractTimeInMinutes(params.timeChallenged)
        params.timeEstimated = extractTimeInMinutes(params.timeEstimated)
        withTaskInstance(id) { Task taskInstance ->
            taskInstance.properties = params
            if (taskInstance.validate() && taskInstance.save()) {
                redirect action: 'show', id: taskInstance?.id
            } else {
                render view: 'edit', model: [taskInstance: taskInstance]
            }
        }
    }

    def delete(Long id) {
        withTaskInstance() { Task taskInstance ->
            taskInstance.delete()
            redirect action: 'list'
        }
    }

    def getChallengedTime(Long id) {
        Task task = Task.get(id)
        if (!task) flash.message = "Task not found."
        render task.getChallengedTimeInSeconds()
    }

    private def withTaskInstance(String id = 'id', Closure c) {
        Task taskInstacne = Task.get(params[id])
        if (taskInstacne) {
            c.call taskInstacne
        } else {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'task.label', default: 'Task'), id])
            redirect(action: "list")
        }
    }

    private Integer extractTimeInMinutes(String time) {
        List<String> timeUnits = time.split(':')       //hh:mm
        return (timeUnits.first().toInteger()) * 60 + timeUnits.last().toInteger()
    }
}
