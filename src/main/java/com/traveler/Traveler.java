package com.traveler;

public class Traveler {

	private int id;
	private String name;
	private String nic;	
	private String email;
	private String phone;
	private String country;
	private String username;
	private String password;
	
	
	public Traveler(int id, String name, String nic, String email, String phone, String country, String username,
			String password) {
		super();
		this.id = id;
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.country = country;
		this.username = username;
		this.password = password;
	}

	
	

	public Traveler(String name, String nic, String email, String phone, String country, String username,
			String password) {
		super();
		this.name = name;
		this.nic = nic;
		this.email = email;
		this.phone = phone;
		this.country = country;
		this.username = username;
		this.password = password;
	}




	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getNic() {
		return nic;
	}


	public void setNic(String nic) {
		this.nic = nic;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}


	public String getCountry() {
		return country;
	}


	public void setCountry(String country) {
		this.country = country;
	}


	public String getUsername() {
		return username;
	}


	public void setUsername(String username) {
		this.username = username;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
	
	
}
