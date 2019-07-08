import sap.m.App;
import sap.ui.base.Event;

class Main {
	static function main() {
		new Main();
	}

	public function new() {
		sap.Ui.getCore().attachInit(onInit);
	}

	function onInit() {

		var page = new sap.m.Page({
			title: "Debugging with hxUI5",
			content: [
				new sap.m.Text({
					text: "You can easily debug hxUI5 using the Haxe debugging for JS."
				}),
				new sap.m.Button({
					text: "Press me",
					press: onButtonPress
				})
			]
		});

		var app:sap.m.App = new sap.m.App({
			pages: [page],
			initialPage: page
		});

		app.placeAt("content");
		
	}

	function onButtonPress(event:Event) {
		sap.m.MessageToast.show("Thx for pressing");
	}
}
