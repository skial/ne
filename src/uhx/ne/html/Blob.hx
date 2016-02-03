package uhx.ne.html;

import haxe.extern.EitherType;

class Blob {
	
	public function new(blobParts:Array<EitherType<ArrayBuffer, EitherType<ArrayBufferView, EitherType<Blob, String>>>>, ?options:BlobPropertyBag) {
		
	}
	
	public var size(default, never):Int;
	public var type(default, never):String;
	
	public function slice(?start:Int, ?end:Int, contentType:String = ""):Blob {
		return null;
	}
	
}
