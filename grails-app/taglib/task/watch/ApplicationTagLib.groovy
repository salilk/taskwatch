package task.watch

class ApplicationTagLib {
    static namespace = "tw"

    def time = { attrs ->
        Integer minutes = attrs.value ?: 0 as Integer
        Integer hrs = 0
        while (minutes > 60) {
            hrs++
            minutes -= 60
        }
        out << "${hrs > 10 ? hrs : ('0' + hrs)}:${minutes > 10 ? minutes : ('0' + minutes)}"
    }
}
