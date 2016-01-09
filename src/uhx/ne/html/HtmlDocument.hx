package uhx.ne.html;

import uhx.ne.Node;
import uhx.ne.html.Document;

/**
 * ...
 * @author Skial Bainn
 */
@:forward abstract HtmlDocument(Document) from Document to Document from Node to Node {

	public inline function new(v) {
		this = v;
	}
	
}