package com.controllers;

import java.util.Arrays;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.data.DepartmentData;
import com.data.EmpRepo;
import com.data.Employee;
import com.data.LimitedData;
import com.data.LimitedRepo;
import com.data.Payroll;

@Controller
@RequestMapping("/")
public class Home {
	@Autowired
	EmpRepo empRepo;
	
	@Autowired
	LimitedRepo limitedRepo;
	
	@RequestMapping("/")
	public String goHome() {
		return "home";
	}
	
	@RequestMapping("/staff")
	public String getStaff() {
		return "staff";
	}
	
	@RequestMapping("/employee")
	public String getEmployee() {
		return "employee";
	}
	
	@RequestMapping("/department")
	public String getDepartment() {
		return "department";
	}
	@RequestMapping(value="/registerEmployee",method=RequestMethod.POST)
	@ResponseBody
	public String registerEmp(@ModelAttribute Employee employee) {
		System.out.println(employee);
		empRepo.save(employee);
		return "Register was successful";
	}
	
	@RequestMapping(value="/limitAccess", method=RequestMethod.POST)
	@ResponseBody
	public String limitAccess(@ModelAttribute DepartmentData data) {
		String department = data.getDepartment();
		System.out.println(department);
		List<String> list = Arrays.asList(data.getAddress(),data.getAge(),data.getEmail(),data.getGender(),data.getMaritalStatus(),
				data.getName(),data.getNumber());
		Loop: for(String item : list) {
			if(item == null) {
				continue Loop;
			}
			LimitedData limited = new LimitedData(department,item);
			limitedRepo.save(limited);
		}
		return "Data for "+department+" has been limited";
		
	}
	
	@RequestMapping(value="/archiveSearch", method=RequestMethod.POST)
	@ResponseBody
	public String archiveSearch(@ModelAttribute Payroll entered) {
		int enteredPayroll = entered.getPayroll();
		System.out.println(enteredPayroll);
		Employee employee = empRepo.findByPayrollEquals(enteredPayroll);
		int payroll = employee.getPayroll();
		String firstName = employee.getFirstName();
		String lastName = employee.getLastName();
		String department = employee.getDepartment();
		
		return "PAYROLL: "+payroll+"\n NAME: "+firstName+" "+lastName+"\n DEPARTMENT: "+department;
	}
}
