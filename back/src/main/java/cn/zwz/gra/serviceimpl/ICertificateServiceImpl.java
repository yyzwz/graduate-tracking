package cn.zwz.gra.serviceimpl;

import cn.zwz.gra.mapper.CertificateMapper;
import cn.zwz.gra.entity.Certificate;
import cn.zwz.gra.service.ICertificateService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 证书 服务层接口实现
 * @author 郑为中
 */
@Slf4j
@Service
@Transactional
public class ICertificateServiceImpl extends ServiceImpl<CertificateMapper, Certificate> implements ICertificateService {

    @Autowired
    private CertificateMapper certificateMapper;
}