package cn.zwz.gra.controller;

import cn.hutool.core.date.DateUtil;
import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.gra.entity.Honor;
import cn.zwz.gra.service.IHonorService;
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
@Api(tags = "荣誉管理接口")
@RequestMapping("/zwz/honor")
@Transactional
public class HonorController {

    @Autowired
    private IHonorService iHonorService;

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条荣誉")
    public Result<Honor> get(@RequestParam String id){
        return new ResultUtil<Honor>().setData(iHonorService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部荣誉个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iHonorService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部荣誉")
    public Result<List<Honor>> getAll(){
        return new ResultUtil<List<Honor>>().setData(iHonorService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询荣誉")
    public Result<IPage<Honor>> getByPage(@ModelAttribute Honor honor ,@ModelAttribute PageVo page){
        QueryWrapper<Honor> qw = new QueryWrapper<>();
        if(!ZwzNullUtils.isNull(honor.getTitle())) {
            qw.like("title",honor.getTitle());
        }
        if(!ZwzNullUtils.isNull(honor.getStudentId())) {
            qw.like("student_id",honor.getStudentId());
        }
        IPage<Honor> data = iHonorService.page(PageUtil.initMpPage(page),qw);
        return new ResultUtil<IPage<Honor>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改荣誉")
    public Result<Honor> saveOrUpdate(Honor honor){
        if(iHonorService.saveOrUpdate(honor)){
            return new ResultUtil<Honor>().setData(honor);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增荣誉")
    public Result<Honor> insert(Honor honor){
        honor.setDate(DateUtil.now());
        iHonorService.saveOrUpdate(honor);
        return new ResultUtil<Honor>().setData(honor);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑荣誉")
    public Result<Honor> update(Honor honor){
        honor.setDate(DateUtil.now());
        iHonorService.saveOrUpdate(honor);
        return new ResultUtil<Honor>().setData(honor);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除荣誉")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iHonorService.removeById(id);
        }
        return ResultUtil.success();
    }
}
