package cn.zwz.gra.entity;

import cn.zwz.basics.baseClass.ZwzBaseEntity;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.annotations.ApiModel;
import lombok.Data;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;
import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Transient;
import java.math.BigDecimal;

/**
 * @author 郑为中
 */
@Data
@Entity
@DynamicInsert
@DynamicUpdate
@Table(name = "a_employment_status")
@TableName("a_employment_status")
@ApiModel(value = "就业状况")
public class EmploymentStatus extends ZwzBaseEntity {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "学生ID")
    private String userId;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "学生姓名")
    private String userName;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "学生学号")
    private String userNumber;

    @Transient
    @TableField(exist=false)
    @ApiModelProperty(value = "学生手机号")
    private String userMobile;

    @ApiModelProperty(value = "就业状态",notes = "1 待业 | 2 正常就业 | 3 升学 | 4 参军 | 5 考公 | 6 其他")
    private Integer status;

    @ApiModelProperty(value = "通用日期")
    private String date;

    @ApiModelProperty(value = "通用联系电话")
    private String mobile;

    /**
     * 待业
     */
    @ApiModelProperty(value = "待业原因")
    private String noReason;

    /**
     * 正常就业
     */
    @ApiModelProperty(value = "公司名称")
    private String company;

    @ApiModelProperty(value = "三方协议")
    private String threeImage;

    @ApiModelProperty(value = "营业执照")
    private String license;

    @ApiModelProperty(value = "法人姓名")
    private String legal;

    @ApiModelProperty(value = "公司区县")
    private String county;

    @ApiModelProperty(value = "公司地址")
    private String address;

    /**
     * 升学
     */
    @ApiModelProperty(value = "高校名称")
    private String universityTitle;

    @ApiModelProperty(value = "高校层次")
    private String universityLevel;

    @ApiModelProperty(value = "录取分数")
    private BigDecimal grade;

    /**
     * 参军
     */
    @ApiModelProperty(value = "部队名称")
    private String troopsTitle;

    /**
     * 考公
     */
    @ApiModelProperty(value = "公务员名称")
    private String civilTitle;

    /**
     * 其他
     */
    @ApiModelProperty(value = "其他去向说明")
    private String remark;
}