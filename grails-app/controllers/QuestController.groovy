class QuestController {
	def scaffold = true    
    def update = {
        def quest = Quest.get( params.id )
        if(quest) {
            quest.properties = params
            def _toBeDeleted = quest.tasks.findAll {it._deleted}
            quest.tasks.removeAll(_toBeDeleted)
            
            if(!quest.hasErrors() && quest.save()) {
                flash.message = "Quest ${params.id} updated"
                redirect(action:show,id:quest.id)
            }
            else {
                render(view:'edit',model:[quest:quest])
            }
        }
        else {
            flash.message = "Quest not found with id ${params.id}"
            redirect(action:edit,id:params.id)
        }
    }

    def create = {
        def quest = new Quest()
        return ['quest':quest]
    }

    def save = {
        def quest = new Quest(params)
        def _toBeDeleted = quest.tasks.findAll {it._deleted}
        quest.tasks.removeAll(_toBeDeleted)
        
        if(!quest.hasErrors() && quest.save()) {
            flash.message = "Quest ${quest.id} created"
            redirect(action:show,id:quest.id)
        }
        else {
            render(view:'create',model:[quest:quest])
        }
    }
}
