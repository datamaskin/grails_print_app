package faux_eprint



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class EprintController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Eprint.list(params), model:[eprintInstanceCount: Eprint.count()]
    }

    def show(Eprint eprintInstance) {
        respond eprintInstance
    }

    def create() {
        respond new Eprint(params)
    }

    @Transactional
    def save(Eprint eprintInstance) {
        if (eprintInstance == null) {
            notFound()
            return
        }

        if (eprintInstance.hasErrors()) {
            respond eprintInstance.errors, view:'create'
            return
        }

        eprintInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'eprint.label', default: 'Eprint'), eprintInstance.id])
                redirect eprintInstance
            }
            '*' { respond eprintInstance, [status: CREATED] }
        }
    }

    def edit(Eprint eprintInstance) {
        respond eprintInstance
    }

    @Transactional
    def update(Eprint eprintInstance) {
        if (eprintInstance == null) {
            notFound()
            return
        }

        if (eprintInstance.hasErrors()) {
            respond eprintInstance.errors, view:'edit'
            return
        }

        eprintInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Eprint.label', default: 'Eprint'), eprintInstance.id])
                redirect eprintInstance
            }
            '*'{ respond eprintInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Eprint eprintInstance) {

        if (eprintInstance == null) {
            notFound()
            return
        }

        eprintInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Eprint.label', default: 'Eprint'), eprintInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'eprint.label', default: 'Eprint'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
