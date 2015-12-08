package uhx.ne.html;

import uhx.ne.Node;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract DOMElement(Node) from Node to Node {

	public inline function new(v) {
		this = v;
	}
	
}