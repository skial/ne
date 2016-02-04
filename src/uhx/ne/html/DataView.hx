package uhx.ne.html;

@:forward abstract DataView(ArrayBufferView) from ArrayBufferView to ArrayBufferView {
	
	public function new (buffer:ArrayBuffer, ?byteOffset:Int, ?byteLength:Int) {
		
	}
	
	public function getFloat32 (byteOffset:Int, ?littleEndian:Bool):Float {
		return -1.0;
	}
	
	public function getFloat64 (byteOffset:Int, ?littleEndian:Bool):Float {
		return -1.0;
	}
	
	public function getInt16 (byteOffset:Int, ?littleEndian:Bool):Int {
		return -1;
	}
	
	public function getInt32 (byteOffset:Int, ?littleEndian:Bool):Int {
		return -1;
	}
	
	public function getInt8 (byteOffset:Int):Int {
		return -1;
	}
	
	public function getUint16 (byteOffset:Int, ?littleEndian:Bool):Int {
		return -1;
	}
	
	public function getUint32 (byteOffset:Int, ?littleEndian:Bool):Int {
		return -1;
	}
	
	public function getUint8 (byteOffset:Int):Int {
		return -1;
	}
	
	public function setFloat32 (byteOffset:Int, value:Float, ?littleEndian:Bool):Void {
		
	}
	
	public function setFloat64 (byteOffset:Int, value:Float, ?littleEndian:Bool):Void {
		
	}
	
	public function setInt16 (byteOffset:Int, value:Int, ?littleEndian:Bool):Void {
		
	}
	
	public function setInt32 (byteOffset:Int, value:Int, ?littleEndian:Bool):Void {
		
	}
	
	public function setInt8 (byteOffset:Int, value:Int):Void {
		
	}
	
	public function setUint16 (byteOffset:Int, value:Int, ?littleEndian:Bool):Void {
		
	}
	
	public function setUint32 (byteOffset:Int, value:Int, ?littleEndian:Bool):Void {
		
	}
	
	public function setUint8 (byteOffset:Int, value:Int):Void {
		
	}
	
}
