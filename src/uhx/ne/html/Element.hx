package uhx.ne.html;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract Element(DOMElement) from DOMElement to DOMElement {

	public inline function new(v) {
		this = v;
	}
	
}