import sap.m.MessageToast;
import sap.ui.base.Event;

class Main {
	static function main() {
		sap.Ui.getCore().attachInit(onInit);
	}

	static function onInit()
	{
		var button = new sap.m.Button({
			text: "pressMe!",
			press: onPress,
			icon : 'sap-icon://notification-2' // For all Icons go to https://openui5.hana.ondemand.com/test-resources/sap/m/demokit/iconExplorer/webapp/index.html
		});

		button.placeAt("content");

		var text = new sap.m.Text("someTextID",{
			text: "Hello World"
		});

		text.placeAt("content");

	}

	static function onPress(event:Event):Void
	{
		sap.m.MessageToast.show("Text changed");
		var text:sap.m.Text = cast sap.Ui.getCore().byId("someTextID");
		text.setText("Goodbye world");
	}
}
