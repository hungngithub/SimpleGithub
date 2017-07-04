package jsp.bean;

public class HelloBean {
	
	private String name;

	public HelloBean() {
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getHello(){
		if (name == null) {
			return "Hello everybody";
		}
		return "Hello " + name;
	}
	
	public String getCat(){
		if (name == null) {
			return "Hello Cuc cat";
		}
		return "Hello " + name;
	}

}
