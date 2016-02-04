package uhx.ne.html;

@:enum abstract SessionType(String) from String to String {
	
	var TEMPORARY = "temporary";
	var PERSISTENT = "persistent";
	
}
