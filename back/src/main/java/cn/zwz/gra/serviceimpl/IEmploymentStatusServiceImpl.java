package cn.zwz.gra.serviceimpl;

import cn.zwz.gra.mapper.EmploymentStatusMapper;
import cn.zwz.gra.entity.EmploymentStatus;
import cn.zwz.gra.service.IEmploymentStatusService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 就业状况 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IEmploymentStatusServiceImpl extends ServiceImpl<EmploymentStatusMapper, EmploymentStatus> implements IEmploymentStatusService {

    @Autowired
    private EmploymentStatusMapper employmentStatusMapper;
}