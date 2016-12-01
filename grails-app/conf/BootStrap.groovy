import faux_eprint.Eprint

class BootStrap {

    def init = { servletContext ->
        Eprint eprint = new Eprint()
        Eprint eprint1 = new Eprint()
        Eprint eprint2 = new Eprint()
        Eprint eprint3 = new Eprint()

        eprint.repname = 'report1A'
        eprint.repdesc = 'Report #1 for A for this date'
        eprint.dateCreated = new Date()
        eprint.lastUpdated = eprint.dateCreated
        eprint.save(flush: true)
        eprint1.repname = 'report1A'
        eprint1.repdesc = 'Report #2 for A for this date'
        eprint1.dateCreated = new Date()
        eprint1.lastUpdated = eprint.dateCreated
        eprint1.save(flush: true)
        eprint2.repname = 'report1B'
        eprint2.repdesc = 'Report #1 for B for this date'
        eprint2.dateCreated = new Date()
        eprint2.lastUpdated = eprint.dateCreated
        eprint2.save(flush: true)
        eprint3.repname = 'report1B'
        eprint3.repdesc = 'Report #2 for B for this date'
        eprint3.dateCreated = new Date()
        eprint3.lastUpdated = eprint.dateCreated
        eprint3.save(flush: true)
    }
    def destroy = {
    }
}
