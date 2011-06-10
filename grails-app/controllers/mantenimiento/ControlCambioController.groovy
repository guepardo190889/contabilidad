package mantenimiento

class ControlCambioController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [controlCambioInstanceList: ControlCambio.list(params), controlCambioInstanceTotal: ControlCambio.count()]
    }

    def create = {
        def controlCambioInstance = new ControlCambio()
        controlCambioInstance.properties = params
        return [controlCambioInstance: controlCambioInstance]
    }

    def save = {
        def controlCambioInstance = new ControlCambio(params)
        if (controlCambioInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), controlCambioInstance.id])}"
            redirect(action: "show", id: controlCambioInstance.id)
        }
        else {
            render(view: "create", model: [controlCambioInstance: controlCambioInstance])
        }
    }

    def show = {
        def controlCambioInstance = ControlCambio.get(params.id)
        if (!controlCambioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
            redirect(action: "list")
        }
        else {
            [controlCambioInstance: controlCambioInstance]
        }
    }

    def edit = {
        def controlCambioInstance = ControlCambio.get(params.id)
        if (!controlCambioInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [controlCambioInstance: controlCambioInstance]
        }
    }

    def update = {
        def controlCambioInstance = ControlCambio.get(params.id)
        if (controlCambioInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (controlCambioInstance.version > version) {
                    
                    controlCambioInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'controlCambio.label', default: 'ControlCambio')] as Object[], "Another user has updated this ControlCambio while you were editing")
                    render(view: "edit", model: [controlCambioInstance: controlCambioInstance])
                    return
                }
            }
            controlCambioInstance.properties = params
            if (!controlCambioInstance.hasErrors() && controlCambioInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), controlCambioInstance.id])}"
                redirect(action: "show", id: controlCambioInstance.id)
            }
            else {
                render(view: "edit", model: [controlCambioInstance: controlCambioInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def controlCambioInstance = ControlCambio.get(params.id)
        if (controlCambioInstance) {
            try {
                controlCambioInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'controlCambio.label', default: 'ControlCambio'), params.id])}"
            redirect(action: "list")
        }
    }
}
