package uhx.ne.html.idb;

@:enum abstract TransactionMode(String) from String to String {
	
	var READONLY = "readonly";
	var READWRITE = "readwrite";
	var VERSIONCHANGE = "versionchange";
	
}
