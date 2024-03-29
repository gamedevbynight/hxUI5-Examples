// Generated by Haxe 4.0.0-rc.3+e3df7a448
(function ($global) { "use strict";
var Main = function() {
	sap.ui.getCore().attachInit($bind(this,this.onInit));
};
Main.main = function() {
	new Main();
};
Main.prototype = {
	onInit: function() {
		var page = new sap.m.Page({ title : "Debugging with hxUI5", content : [new sap.m.Text({ text : "You can easily debug hxUI5 using the Haxe debugging for JS."}),new sap.m.Button({ text : "Press me", press : $bind(this,this.onButtonPress)})]});
		var app = new sap.m.App({ pages : [page], initialPage : page});
		app.placeAt("content");
	}
	,onButtonPress: function(event) {
		sap.m.MessageToast.show("Thx for pressing");
	}
};
var sap_ui_core__$CSSSize_CSSSize_$Impl_$ = {};
sap_ui_core__$CSSSize_CSSSize_$Impl_$._new = function(i) {
	return i;
};
var sap_ui_core__$Collision_Collision_$Impl_$ = {};
sap_ui_core__$Collision_Collision_$Impl_$._new = function(i) {
	return i;
};
var sap_ui_core__$Dock_Dock_$Impl_$ = {};
sap_ui_core__$Dock_Dock_$Impl_$._new = function(i) {
	return i;
};
var sap_ui_core__$ID_ID_$Impl_$ = {};
sap_ui_core__$ID_ID_$Impl_$._new = function(i) {
	return i;
};
var sap_ui_core__$URI_URI_$Impl_$ = {};
sap_ui_core__$URI_URI_$Impl_$._new = function(i) {
	return i;
};
var $_;
function $bind(o,m) { if( m == null ) return null; if( m.__id__ == null ) m.__id__ = $global.$haxeUID++; var f; if( o.hx__closures__ == null ) o.hx__closures__ = {}; else f = o.hx__closures__[m.__id__]; if( f == null ) { f = m.bind(o); o.hx__closures__[m.__id__] = f; } return f; }
if(typeof $global.$haxeUID == "undefined") $global.$haxeUID = 0;
Main.main();
})(typeof window != "undefined" ? window : typeof global != "undefined" ? global : typeof self != "undefined" ? self : this);

//# sourceMappingURL=index.js.map