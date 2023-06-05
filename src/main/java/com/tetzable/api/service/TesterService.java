package com.tetzable.api.service;


//import com.baomidou.mybatisplus.extension.service.IService;
//import Tester;
//import org.springframework.stereotype.Service;


//public interface TesterService extends IService<Tester> {
//}
import com.tetzable.api.model.Tester;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TesterService extends JpaRepository<Tester, Integer> {
    // 自定义查询方法
//    User findByUsername(String username);
}