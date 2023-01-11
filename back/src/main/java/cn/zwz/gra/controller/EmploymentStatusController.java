package cn.zwz.gra.controller;

import cn.zwz.basics.utils.PageUtil;
import cn.zwz.basics.utils.ResultUtil;
import cn.zwz.basics.baseVo.PageVo;
import cn.zwz.basics.baseVo.Result;
import cn.zwz.basics.utils.SecurityUtil;
import cn.zwz.data.entity.User;
import cn.zwz.data.service.IUserService;
import cn.zwz.data.utils.ZwzNullUtils;
import cn.zwz.gra.entity.EmploymentStatus;
import cn.zwz.gra.service.IEmploymentStatusService;
import cn.hutool.core.util.StrUtil;
import cn.zwz.gra.utils.EmploymentUtils;
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
@Api(tags = "就业状况管理接口")
@RequestMapping("/zwz/employmentStatus")
@Transactional
public class EmploymentStatusController {

    @Autowired
    private IEmploymentStatusService iEmploymentStatusService;

    @Autowired
    private IUserService iUserService;

    @Autowired
    private SecurityUtil securityUtil;

    @RequestMapping(value = "/init", method = RequestMethod.GET)
    @ApiOperation(value = "初始化就业状况")
    public Result<Object> init(){
        initWork();
        return ResultUtil.success();
    }

    @RequestMapping(value = "/getMyOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询我的就业状况")
    public Result<EmploymentStatus> getMyOne(){
        User currUser = securityUtil.getCurrUser();
        if(currUser.getType() == null ||currUser.getType() > 0) {
            return ResultUtil.error("非学生用户,无法填写!");
        }
        QueryWrapper<EmploymentStatus> qw = new QueryWrapper<>();
        qw.eq("user_id",currUser.getId());
        EmploymentStatus status = iEmploymentStatusService.getOne(qw);
        if(status == null) {
            status = EmploymentUtils.getBlackEmploymentStatus(currUser.getId());
            iEmploymentStatusService.saveOrUpdate(status);
        }
        if(ZwzNullUtils.isNull(status.getUserId())) {
            status.setUserName("无");
            status.setUserNumber("无");
            status.setUserMobile("无");
        } else {
            User user = iUserService.getById(status.getUserId());
            if(user != null) {
                status.setUserName(user.getNickname());
                status.setUserNumber(user.getUsername());
                status.setUserMobile(user.getMobile());
            } else {
                status.setUserName("无");
                status.setUserNumber("无");
                status.setUserMobile("无");
            }
        }
        return new ResultUtil<EmploymentStatus>().setData(status);
    }

    @RequestMapping(value = "/getOne", method = RequestMethod.GET)
    @ApiOperation(value = "查询单条就业状况")
    public Result<EmploymentStatus> get(@RequestParam String id){
        return new ResultUtil<EmploymentStatus>().setData(iEmploymentStatusService.getById(id));
    }

    @RequestMapping(value = "/count", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部就业状况个数")
    public Result<Long> getCount(){
        return new ResultUtil<Long>().setData(iEmploymentStatusService.count());
    }

    @RequestMapping(value = "/getAll", method = RequestMethod.GET)
    @ApiOperation(value = "查询全部就业状况")
    public Result<List<EmploymentStatus>> getAll(){
        return new ResultUtil<List<EmploymentStatus>>().setData(iEmploymentStatusService.list());
    }

    @RequestMapping(value = "/getByPage", method = RequestMethod.GET)
    @ApiOperation(value = "查询就业状况")
    public Result<IPage<EmploymentStatus>> getByPage(@ModelAttribute EmploymentStatus employmentStatus ,@ModelAttribute PageVo page){
        initWork();
        QueryWrapper<EmploymentStatus> qw = new QueryWrapper<>();
        if(employmentStatus.getStatus() != null && employmentStatus.getStatus() > 0) {
            qw.eq("status",employmentStatus.getStatus());
        }
        if(!ZwzNullUtils.isNull(employmentStatus.getUserName())) {
            qw.inSql("id","select id in a_user where nickname like '%" + employmentStatus.getUserName() + "%'");
        }
        IPage<EmploymentStatus> data = iEmploymentStatusService.page(PageUtil.initMpPage(page),qw);
        for (EmploymentStatus status : data.getRecords()) {
            if(!ZwzNullUtils.isNull(status.getUserId())) {
                User user = iUserService.getById(status.getUserId());
                if(user != null) {
                    status.setUserName(user.getNickname());
                    status.setUserNumber(user.getUsername());
                    status.setUserMobile(user.getMobile());
                } else {
                    status.setUserName("无");
                    status.setUserNumber("无");
                    status.setUserMobile("无");
                }
            }
        }
        return new ResultUtil<IPage<EmploymentStatus>>().setData(data);
    }

    @RequestMapping(value = "/insertOrUpdate", method = RequestMethod.POST)
    @ApiOperation(value = "增改就业状况")
    public Result<EmploymentStatus> saveOrUpdate(EmploymentStatus employmentStatus){
        if(iEmploymentStatusService.saveOrUpdate(employmentStatus)){
            return new ResultUtil<EmploymentStatus>().setData(employmentStatus);
        }
        return ResultUtil.error();
    }

    @RequestMapping(value = "/insert", method = RequestMethod.POST)
    @ApiOperation(value = "新增就业状况")
    public Result<EmploymentStatus> insert(EmploymentStatus employmentStatus){
        iEmploymentStatusService.saveOrUpdate(employmentStatus);
        return new ResultUtil<EmploymentStatus>().setData(employmentStatus);
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ApiOperation(value = "编辑就业状况")
    public Result<EmploymentStatus> update(EmploymentStatus employmentStatus){
        iEmploymentStatusService.saveOrUpdate(employmentStatus);
        return new ResultUtil<EmploymentStatus>().setData(employmentStatus);
    }

    @RequestMapping(value = "/delByIds", method = RequestMethod.POST)
    @ApiOperation(value = "删除就业状况")
    public Result<Object> delByIds(@RequestParam String[] ids){
        for(String id : ids){
            iEmploymentStatusService.removeById(id);
        }
        return ResultUtil.success();
    }

    @ApiOperation(value = "初始化就业状况")
    private void initWork() {
        QueryWrapper<User> userQw = new QueryWrapper<>();
        userQw.eq("type",0);
        List<User> userList = iUserService.list(userQw);
        for (User user : userList) {
            QueryWrapper<EmploymentStatus> qw = new QueryWrapper<>();
            qw.eq("user_id",user.getId());
            Long count = iEmploymentStatusService.count(qw);
            if(count < 1) {
                iEmploymentStatusService.saveOrUpdate(EmploymentUtils.getBlackEmploymentStatus(user.getId()));
            }
        }
    }
}
