package me.foodtips.api.service;


//import com.baomidou.mybatisplus.extension.service.IService;
//import me.foodtips.api.model.Tester;
//import org.springframework.stereotype.Service;


//public interface TesterService extends IService<Tester> {
//}
import me.foodtips.api.model.Tester;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TesterService extends JpaRepository<Tester, Integer> {
    // 自定义查询方法
//    User findByUsername(String username);
}