package com.data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="employee")
public class Employee {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	
	@Column(name="FirstName")
	private String firstName;
	
	@Column(name="LastName")
	private String lastName;
	
	@Column(name="PhoneNumber")
	private int phoneNumber;
	
	@Column(name="Email")
	private String email;
	
	@Column(name="Status")
	private String status;
	
	@Column(name="Gender")
	private String gender;
	
	@Column(name="Age")
	private int age;
	
	@Column(name="Address")
	private String address;

}
