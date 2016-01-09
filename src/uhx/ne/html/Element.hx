package uhx.ne.html;

import uhx.ne.Node;
import uhx.ne.html.DOMElement;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract Element(DOMElement) from DOMElement to DOMElement from Node to Node {

	public inline function new(v) {
		this = v;
	}
	
}