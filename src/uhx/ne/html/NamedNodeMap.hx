package uhx.ne.html;

import haxe.ds.StringMap;
import haxe.ds.Vector;

/**
 * ...
 * @author Skial Bainn
 */
abstract NamedNodeMap(StringMap<String>) from StringMap<String> to StringMap<String> {

	public var length(get, never):Int;
	
	public inline function new(v) this = v;
	
	public function getNamedItem(name:String):Attr {
		return if (this.exists( name )) {
			var v:Vector<String> = new Vector(2);
			v.set(0, name);
			v.set(1, this.get( name ));
			v;
			
		} else {
			null;
			
		}
	}
	
	public function getNamedItemNS(namespaceURI:String, localName:String):Attr {
		return if (this.exists( '$namespaceURI:$localName' )) {
			var v:Vector<String> = new Vector(2);
			v.set(0, '$namespaceURI:$localName');
			v.set(1, this.get( '$namespaceURI:$localName' ));
			v;
			
		} else {
			null;
			
		}
	}
	
	/*public function item(index:Int):Attr {
		
	}*/
	
	public function removeNamedItem(name:String):Attr {
		return if (this.exists( name )) {
			var v:Vector<String> = new Vector(2);
			v.set(0, name);
			v.set(1, this.get( name ));
			this.remove( name );
			v;
			
		} else {
			null;
			
		}
	}
	
	public function removeNamedItemNS(namespaceURI:String, localName:String):Attr {
		return if (this.exists( '$namespaceURI:$localName' )) {
			var v:Vector<String> = new Vector(2);
			v.set(0, '$namespaceURI:$localName');
			v.set(1, this.get( '$namespaceURI:$localName' ));
			this.remove( '$namespaceURI:$localName' );
			v;
			
		} else {
			null;
			
		}
	}
	
	public inline function setNamedItem(arg:Attr):Attr {
		this.set( arg.name, arg.value );
		return arg;
	}
	
	// TODO
	public inline function setNamedItemNS(arg:Attr):Attr {
		this.set( arg.name, arg.value );
		return arg;
	}
	
}