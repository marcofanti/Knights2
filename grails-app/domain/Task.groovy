class Task {
	String description
	boolean _deleted
	static transients = ['_deleted']
	static belongsTo = [quest:Quest]
	
	def String toString(){return description}
}
