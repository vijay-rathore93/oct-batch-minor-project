package org.application.controller;

import java.util.List;

import org.application.entity.Employee;
import org.application.repo.EmployeeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeDataController {

	@Autowired
	private EmployeeRepo employeeRepo;

	@PostMapping("/saveEmployee")
	public Employee saveEMployee(@RequestBody Employee employee) {
		return employeeRepo.save(employee);
	}

	@GetMapping("/all")
	public List<Employee> getAllEmployee() {
		return employeeRepo.findAll();
	}

	@GetMapping("/employee/{empId}")
	public Employee getEmployee(@PathVariable("empId") Integer empId) {
		return employeeRepo.findById(empId).get();
	}

	@DeleteMapping("/employee/{empId}")
	public String deleteEmployee(@PathVariable("empId") Integer empId) {
		employeeRepo.deleteById(empId);
		return "Employee Deleted";
	}

	@PatchMapping("/employee/{empId}")
	public Employee updateEmployee(@PathVariable("empId") Integer empId, @RequestBody Employee employee) {
		Employee employeeFound = employeeRepo.findById(empId).get();
		employeeFound.setContact(employee.getContact());
		employeeFound.setEmail(employee.getEmail());
		employeeFound.setAge(employee.getAge());
		return employeeRepo.save(employeeFound);
	}

}
