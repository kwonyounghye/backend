package insurance;

public class InsuranceDTO {
	private int age;
	private String sex;
	private double bmi;
	private int children;
	private String smoker;
	private String region;
	private double charges;
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public double getBmi() {
		return bmi;
	}
	public void setBmi(double bmi) {
		this.bmi = bmi;
	}
	public int getChildren() {
		return children;
	}
	public void setChildren(int children) {
		this.children = children;
	}
	public String getSmoker() {
		return smoker;
	}
	public void setSmoker(String smoker) {
		this.smoker = smoker;
	}
	public String getRegion() {
		return region;
	}
	public void setRegion(String region) {
		this.region = region;
	}
	public double getCharges() {
		return charges;
	}
	public void setCharges(double charges) {
		this.charges = charges;
	}
	@Override
	public String toString() {
		return "InsuranceDTO [age=" + age + ", sex=" + sex + ", bmi=" + bmi + ", children=" + children + ", smoker="
				+ smoker + ", region=" + region + ", charges=" + charges + "]";
	}
	
	
}
