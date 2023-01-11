<template>
<div>
    <Card>
        <div slot="title">
            <div class="edit-head">
                <a @click="close" class="back-title">
                    <Icon type="ios-arrow-back" />
                </a>
                <div class="head-name">填报我的毕业去向</div>
                <span></span>
            </div>
        </div>
        <Form ref="form" :model="form" :label-width="100" :rules="formValidate" label-position="left">
            <Divider>我的毕业去向</Divider>
            <Row :gutter="16">
                <Col span="8">
                <FormItem label="学生ID" prop="userId">
                    <Input v-model="form.userId" readonly style="width:100%" />
                </FormItem>
                </Col>
                <Col span="8">
                <FormItem label="学生姓名" prop="userName">
                    <Input v-model="form.userName" readonly style="width:100%" />
                </FormItem>
                </Col>
                <Col span="8">
                <FormItem label="学生学号" prop="userNumber">
                    <Input v-model="form.userNumber" readonly style="width:100%" />
                </FormItem>
                </Col>
            </Row>
            <Row :gutter="16">
                <Col span="8">
                <FormItem label="学生手机号" prop="userMobile">
                    <Input v-model="form.userMobile" readonly style="width:100%" />
                </FormItem>
                </Col>
                <Col span="8">
                <FormItem label="就业状态" prop="status">
                    <Select v-model="form.status" clearable style="width:100%">
                        <Option value="0">待业</Option>
                        <Option value="1">正常就业</Option>
                        <Option value="2">升学</Option>
                        <Option value="3">参军</Option>
                        <Option value="4">考公</Option>
                        <Option value="5">其他</Option>
                    </Select>
                </FormItem>
                </Col>
            </Row>
            <div v-show="form.status==='0'">
                <Divider>待业信息</Divider>
                <Row :gutter="16">
                    <Col span="24">
                    <FormItem label="待业原因" prop="noReason">
                        <Input v-model="form.noReason" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <!-- 正常就业 -->
            <div v-show="form.status==='1'">
                <Divider>正常就业信息</Divider>
                <Row :gutter="16">
                    <Col span="8">
                    <FormItem label="公司名称" prop="company">
                        <Input v-model="form.company" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="营业执照" prop="license">
                        <Input v-model="form.license" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="法人姓名" prop="legal">
                        <Input v-model="form.legal" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                </Row>
                <Row :gutter="16">
                    <Col span="8">
                    <FormItem label="公司区县" prop="county">
                        <al-cascader v-model="form.county" data-type="code" level="2" style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="公司地址" prop="address">
                        <Input v-model="form.address" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="入职日期" prop="date">
                        <DatePicker type="date" v-model="tempDate" :placeholder="form.date" format="yyyy-MM-dd" @on-change="changeDate" clearable style="width:100%"></DatePicker>
                    </FormItem>
                    </Col>
                </Row>
                <Row :gutter="16">
                    <Col span="24">
                    <FormItem label="三方协议" prop="threeImage">
                        <upload-pic-input v-model="form.threeImage" style="width:100%"></upload-pic-input>
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <div v-show="form.status==='2'">
                <Divider>升学信息</Divider>
                <Row :gutter="16">
                    <Col span="8">
                    <FormItem label="高校名称" prop="universityTitle">
                        <Input v-model="form.universityTitle" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="高校层次" prop="universityLevel">
                        <Select v-model="form.universityLevel" clearable style="width:100%">
                            <Option value="双一流">双一流</Option>
                            <Option value="普通高校">普通高校</Option>
                        </Select>
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="录取分数" prop="grade">
                        <InputNumber v-model="form.grade" min="0" max="5000000" style="width:100%"></InputNumber>
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <div v-show="form.status==='3'">
                <Divider>参军信息</Divider>
                <Row :gutter="16">
                    <Col span="8">
                    <FormItem label="部队名称" prop="troopsTitle">
                        <Input v-model="form.troopsTitle" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                    <Col span="8">
                    <FormItem label="部队联系电话" prop="mobile">
                        <Input v-model="form.mobile" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <div v-show="form.status==='4'">
                <Divider>考公信息</Divider>
                <Row :gutter="16">
                    <Col span="24">
                    <FormItem label="公务员名称" prop="civilTitle">
                        <Input v-model="form.civilTitle" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <div v-show="form.status==='5'">
                <Divider>其他去向信息</Divider>
                <Row :gutter="16">
                    <Col span="24">
                    <FormItem label="其他去向说明" prop="remark">
                        <Input v-model="form.remark" type="textarea" :rows="4" clearable style="width:100%" />
                    </FormItem>
                    </Col>
                </Row>
            </div>
            <Form-item class="br">
                <Button @click="handleSubmit" :loading="submitLoading" type="primary">确认提交</Button>
                <Button type="dashed" @click="getMyOneFx">还原至现有填报</Button>
            </Form-item>
        </Form>
    </Card>
</div>
</template>

<script>
import {
    editEmploymentStatus,
    getMyOne
} from "./api.js";
import uploadPicInput from "@/views/template/upload-pic-input";
export default {
    name: "edit",
    components: {
        uploadPicInput,
    },
    props: {
        data: Object
    },
    data() {
        return {
            submitLoading: false, // 表单提交状态
            form: { // 添加或编辑表单对象初始化数据
                userId: "",
                userName: "",
                userNumber: "",
                userMobile: "",
                status: "",
                date: "",
                mobile: "",
                noReason: "",
                company: "",
                threeImage: "",
                license: "",
                legal: "",
                county: [],
                address: "",
                universityTitle: "",
                universityLevel: "",
                grade: 0,
                troopsTitle: "",
                civilTitle: "",
                remark: "",
            },
            // 表单验证规则
            formValidate: {},
            myObj: {},
            tempDate: ""
        };
    },
    methods: {
        init() {
            this.handleReset();
            this.getMyOneFx();
        },
        changeDate(e) {
            this.form.date = e;
        },
        getMyOneFx() {
            var that = this;
            getMyOne().then(res => {
                console.log(res);
                if (res.success) {
                    that.form = res.result;
                    that.form.status = res.result.status + "";
                    that.tempDate = res.result.date;
                    var array = res.result.county.split(",");
                    that.form.county = array;
                }
            })
        },
        handleReset() {
            this.$refs.form.resetFields();
        },
        handleSubmit() {
            delete this.form.updateTime;
            editEmploymentStatus(this.form).then(res => {
                this.submitLoading = false;
                if (res.success) {
                    this.$Message.success("操作成功");
                }
            });
        },
        close() {
            this.$emit("close", true);
        },
        submited() {
            this.$emit("submited", true);
        }
    },
    mounted() {
        this.init();
    }
};
</script>

<style lang="less">
.edit-head {
    display: flex;
    align-items: center;
    justify-content: space-between;
    position: relative;

    .back-title {
        color: #515a6e;
        display: flex;
        align-items: center;
    }

    .head-name {
        display: inline-block;
        height: 20px;
        line-height: 20px;
        font-size: 16px;
        color: #17233d;
        font-weight: 500;
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap;
    }

    .window-close {
        z-index: 1;
        font-size: 12px;
        position: absolute;
        right: 0px;
        top: -5px;
        overflow: hidden;
        cursor: pointer;

        .ivu-icon-ios-close {
            color: #999;
            transition: color .2s ease;
        }
    }

    .window-close .ivu-icon-ios-close:hover {
        color: #444;
    }
}
</style>
