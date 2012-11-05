package com.tc.taskwatch

class Task {

    String description
    Integer timeEstimated
    Integer timeChallenged
    Long timeTaskStarted
    Long timeTaskFinished
    Date dateCreated
    Date lastUpdated
    //TODO: question of pausing/resuming a task

    Long getActualTimeSpentMillis() {
        if (timeTaskFinished && timeTaskStarted) {
            return (timeTaskFinished - timeTaskStarted)
        }
        return 0
    }

    static mapping = {
        description type: 'text'
    }

    static constraints = {
        description(nullable: false)
        dateCreated(nullable: true)
        lastUpdated(nullable: true)
        timeChallenged(nullable: true)
        timeTaskStarted(nullable: true)
        timeTaskFinished(nullable: true)
    }

    Integer getTimeActual() {
        if (timeTaskFinished) {
            return (timeTaskFinished - timeTaskStarted) / 1000 * 60
        }
        0
    }

    Integer getScore() {
        Integer timeTaken = timeActual
        if (timeTaken > 0) {
            getScore(timeEstimated, timeActual, (timeChallenged ?: timeEstimated))
        }
        0
    }

    Integer getScore(Integer estimate, Integer actual, Integer challenge) {
        Integer score = Math.toDegrees(Math.atan(estimate / actual)) as Integer
        Integer scoreChallenge = Math.toDegrees(Math.atan(estimate / challenge)) as Integer
        if (challenge > estimate) {
            //TODO: working hard case
            score = 90 - score
            scoreChallenge = 90 - scoreChallenge
        }

        println "score and challenge diff: ${score - scoreChallenge}"

        0
    }

}
