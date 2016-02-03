package uhx.ne.html.idb;

class Factory {
	
	public function new() {
		
	}
	
	public function cmp(first:Dynamic, second:Dynamic):Int {
		return -1;
	}
	
	public function deleteDatabase(name:String, ?options:OpenDBOptions):OpenDBRequest {
		return null;
	}
	
	/*public function open(name:String, ?options:OpenDBOptions):OpenDBRequest {
		return null;
	}*/
	
	public function open(name:String, version:Int):OpenDBRequest {
		return null;
	}
	
}
