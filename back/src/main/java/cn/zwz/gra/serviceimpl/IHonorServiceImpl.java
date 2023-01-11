package cn.zwz.gra.serviceimpl;

import cn.zwz.gra.mapper.HonorMapper;
import cn.zwz.gra.entity.Honor;
import cn.zwz.gra.service.IHonorService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 荣誉 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class IHonorServiceImpl extends ServiceImpl<HonorMapper, Honor> implements IHonorService {

    @Autowired
    private HonorMapper honorMapper;
}