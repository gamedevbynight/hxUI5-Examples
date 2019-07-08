import sap.ui.model.json.JSONModel;

class Main {
	static function main() {
		new Main();
	}

	public function new()
	{
		var employees:Array<Employee> = new Array<Employee>();
		employees.push(new Employee("Peter", "Barker", 38));
		employees.push(new Employee("Alex", "Keyran", 25));
		employees.push(new Employee("Christie", "Davin", 56));

		var model:JSONModel = new JSONModel(employees);

		var list = new sap.m.List({
	
		});

		list.bindItems({
			path: "/",
			template: new sap.m.StandardListItem({
				title: '{firstName}',
				description: '{lastName}',
				counter: '{age}'
			})
		});

		var object = new SomeObject(399);


		var page = new sap.m.Page({
			content: [list, new sap.m.Text({
				text: 'Objects: {myObject>/objectCount}'
			})]
		});

		page.setModel(model);
		page.setModel(new JSONModel(object), "myObject");

		var app = new sap.m.App({
			pages: [page],
			initialPage: page
		});

		app.placeAt("content");

	}
}

class Employee
{
	public var firstName:String;
	public var lastName:String;
	public var age:Int;

	public function new(firstName:String, lastName:String,age:Int)
	{
		this.firstName = firstName;
		this.lastName = lastName;
		this.age = age;
	}
}

class SomeObject
{
	public var objectCount:Int;

	public function new(objectCount:Int)
	{
		this.objectCount = objectCount;
	}
}
