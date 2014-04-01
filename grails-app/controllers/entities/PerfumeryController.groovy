package entities

import org.springframework.dao.DataIntegrityViolationException

class PerfumeryController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [perfumeryInstanceList: Perfumery.list(params), perfumeryInstanceTotal: Perfumery.count()]
    }

    def create() {
        [perfumeryInstance: new Perfumery(params)]
    }

    def save() {
        def perfumeryInstance = new Perfumery(params)
        if (!perfumeryInstance.save(flush: true)) {
            render(view: "create", model: [perfumeryInstance: perfumeryInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), perfumeryInstance.id])
        redirect(action: "show", id: perfumeryInstance.id)
    }

    def show(Long id) {
        def perfumeryInstance = Perfumery.get(id)
        if (!perfumeryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "list")
            return
        }

        [perfumeryInstance: perfumeryInstance]
    }

    def edit(Long id) {
        def perfumeryInstance = Perfumery.get(id)
        if (!perfumeryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "list")
            return
        }

        [perfumeryInstance: perfumeryInstance]
    }

    def update(Long id, Long version) {
        def perfumeryInstance = Perfumery.get(id)
        if (!perfumeryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (perfumeryInstance.version > version) {
                perfumeryInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'perfumery.label', default: 'Perfumery')] as Object[],
                          "Another user has updated this Perfumery while you were editing")
                render(view: "edit", model: [perfumeryInstance: perfumeryInstance])
                return
            }
        }

        perfumeryInstance.properties = params

        if (!perfumeryInstance.save(flush: true)) {
            render(view: "edit", model: [perfumeryInstance: perfumeryInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), perfumeryInstance.id])
        redirect(action: "show", id: perfumeryInstance.id)
    }

    def delete(Long id) {
        def perfumeryInstance = Perfumery.get(id)
        if (!perfumeryInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "list")
            return
        }

        try {
            perfumeryInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'perfumery.label', default: 'Perfumery'), id])
            redirect(action: "show", id: id)
        }
    }
}
