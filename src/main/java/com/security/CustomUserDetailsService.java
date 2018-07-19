package com.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;

import com.data.EmpRepo;
import com.data.Employee;

@Component("customUserDetailsService")
public class CustomUserDetailsService implements UserDetailsService{

	@Autowired
	private EmpRepo empRepo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		Employee employee = empRepo.findByPayrollEquals(username);
		
	 return new User(employee.getPayroll(),employee.getPassword(),AuthorityUtils.createAuthorityList(employee.getRole()));
	}

}
