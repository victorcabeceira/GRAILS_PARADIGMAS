package entities



import org.junit.*
import grails.test.mixin.*

@TestFor(PerfumeryController)
@Mock(Perfumery)
class PerfumeryControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/perfumery/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.perfumeryInstanceList.size() == 0
        assert model.perfumeryInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.perfumeryInstance != null
    }

    void testSave() {
        controller.save()

        assert model.perfumeryInstance != null
        assert view == '/perfumery/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/perfumery/show/1'
        assert controller.flash.message != null
        assert Perfumery.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/perfumery/list'

        populateValidParams(params)
        def perfumery = new Perfumery(params)

        assert perfumery.save() != null

        params.id = perfumery.id

        def model = controller.show()

        assert model.perfumeryInstance == perfumery
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/perfumery/list'

        populateValidParams(params)
        def perfumery = new Perfumery(params)

        assert perfumery.save() != null

        params.id = perfumery.id

        def model = controller.edit()

        assert model.perfumeryInstance == perfumery
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/perfumery/list'

        response.reset()

        populateValidParams(params)
        def perfumery = new Perfumery(params)

        assert perfumery.save() != null

        // test invalid parameters in update
        params.id = perfumery.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/perfumery/edit"
        assert model.perfumeryInstance != null

        perfumery.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/perfumery/show/$perfumery.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        perfumery.clearErrors()

        populateValidParams(params)
        params.id = perfumery.id
        params.version = -1
        controller.update()

        assert view == "/perfumery/edit"
        assert model.perfumeryInstance != null
        assert model.perfumeryInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/perfumery/list'

        response.reset()

        populateValidParams(params)
        def perfumery = new Perfumery(params)

        assert perfumery.save() != null
        assert Perfumery.count() == 1

        params.id = perfumery.id

        controller.delete()

        assert Perfumery.count() == 0
        assert Perfumery.get(perfumery.id) == null
        assert response.redirectedUrl == '/perfumery/list'
    }
}
