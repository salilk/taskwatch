class BootStrap {
    def bootstrapService
    def init = { servletContext ->
        bootstrapService.bootstrapData()
    }
    def destroy = {
    }
}
