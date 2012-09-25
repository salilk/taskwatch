package com.tc.taskwatch

class Task {

    String description
    Long timeEstimated
    Long timeChallenged
    Long timeTaskStarted
    Long timeTaskFinished
    Date dateCreated
    Date lastUpdated
    //TODO: question of pausing/resuming a task

    Long getActualTimeSpentMillis(){
        if(timeTaskFinished && timeTaskStarted){
            return (timeTaskFinished - timeTaskStarted)
        }
        return 0
    }

    static constraints = {
        description(nullable:false)
        dateCreated(nullable:true)
        lastUpdated(nullable:true)
        timeChallenged(nullable:true)
        timeTaskStarted(nullable:true)
        timeTaskFinished(nullable:true)
    }

    Integer getTimeActual(){
        if(timeTaskFinished){
            return (timeTaskFinished - timeTaskStarted)/1000*60
        }
        0
    }

}
