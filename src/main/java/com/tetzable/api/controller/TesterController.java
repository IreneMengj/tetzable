package com.tetzable.api.controller;


import com.tetzable.api.model.Tester;
import com.tetzable.api.service.TesterService;
import lombok.extern.slf4j.Slf4j;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/admin/user")
public class TesterController {

    @Autowired
    private TesterService testerService;

    //save the tester
    @PostMapping("/tester")
    public String save(@RequestBody Tester tester) {
        log.info("add tester");
        testerService.save(tester);
        return "add tester successfully";
    }

    //delete all testers
    @DeleteMapping("/tester")
    public void deleteAll() {
        testerService.deleteAll();
    }

    //delete tester by ID
    @DeleteMapping("/tester/{id}")
    public String deleteById(@PathVariable Integer id) {
        testerService.deleteById(id);
        return "delete successfully";
    }

    //get all testers
    @GetMapping("/tester")
    public List<Tester> getAll(){
        List<Tester> all = testerService.findAll();
        return all;
    }
}

//    //tester information pagination
//    @GetMapping("/tester")
//    public PageResult<Tester> page(){
//        log.info("page={},pageSize={},name={}",page,pageSize,name);
//        //build pagination constructor
//        Page pageInfo = new Page(page,pageSize);
//        //build condition constructor
//        LambdaQueryWrapper<Employee> queryWrapper = new LambdaQueryWrapper();
//        //adding filter Conditions
//        queryWrapper.like(StringUtils.isNotEmpty(name),Employee::getName,name);
//        //add order condition
//        queryWrapper.orderByDesc(Employee::getUpdateTime);
//
//        employeeService.page(pageInfo,queryWrapper);
//
//        return R.success(pageInfo);
//    }
//
//    //change status of an employee(status 0 or 1)
//    @PutMapping
//    public R<String> update(HttpServletRequest request,@RequestBody Employee employee){
//        log.info(employee.toString());
//        long id = Thread.currentThread().getId();
//        log.info("thread id is {}",id);
//        //employee.setUpdateTime(LocalDateTime.now());
//        // employee.setUpdateUser((Long) request.getSession().getAttribute("employee"));
//        employeeService.updateById(employee);
//
//        return R.success("employee information has been changed successfully");
//    }
