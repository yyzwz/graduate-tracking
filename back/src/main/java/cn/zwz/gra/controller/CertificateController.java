package cn.zwz.gra.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.gra.entity.Certificate;
import cn.zwz.gra.service.ICertificateService;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @author 郑为中
 */
@Slf4j
@RestController
@Api(tags = "证书管理接口")
@RequestMapping("/zwz/certificate")
@Transactional
public class CertificateController {

    @Autowired
    private ICertificateService iCertificateService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条证书")
    public Result<Certificate> get(@RequestParam String id){
        return new ResultUtil<Certificate>().setData(iCertificateService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部证书个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iCertificateService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部证书")
    public Result<List<Certificate>> getAll(){
        return new ResultUtil<List<Certificate>>().setData(iCertificateService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询证书")
    public Result<IPage<Certificate>> getByPage(@ModelAttribute Certificate certificate ,@ModelAttribute PageVo page){
        QueryWrapper<Certificate> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(certificate.getTitle())) {
            qw.like("title",certificate.getTitle());
        }
        if(!ZwzNullUtils.isNull(certificate.getStudentId())) {
            qw.like("student_id",certificate.getStudentId());
        }
        IPage<Certificate> data = iCertificateService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Certificate>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改证书")
    public Result<Certificate> saveOrUpdate(Certificate certificate){
        if(iCertificateService.saveOrUpdate(certificate)){
            return new ResultUtil<Certificate>().setData(certificate);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增证书")
    public Result<Certificate> insert(Certificate certificate){
        certificate.setDate(DateUtil.now());
        iCertificateService.saveOrUpdate(certificate);
        return new ResultUtil<Certificate>().setData(certificate);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑证书")
    public Result<Certificate> update(Certificate certificate){
        certificate.setDate(DateUtil.now());
        iCertificateService.saveOrUpdate(certificate);
        return new ResultUtil<Certificate>().setData(certificate);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除证书")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iCertificateService.removeById(id);
        }
        return ResultUtil.success();
    }
}
