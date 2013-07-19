import org.apache.commons.collections.list.LazyList;
import org.apache.commons.collections.FactoryUtils;

class Quest {
	String name
	List tasks = new ArrayList()
	static hasMany = [tasks:Task ]
	static mapping = {
		tasks cascade:"all,delete-orphan"
	}	
	
    def List getExpandableTaskList() {
        return LazyList.decorate(tasks,FactoryUtils.instantiateFactory(Task.class))
    }

}