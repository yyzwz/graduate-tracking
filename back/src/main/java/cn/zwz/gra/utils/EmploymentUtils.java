package cn.zwz.gra.utils;

import cn.zwz.gra.entity.EmploymentStatus;

import java.math.BigDecimal;

public class EmploymentUtils {

    private static final String BLACK_STR = "";

    public static EmploymentStatus getBlackEmploymentStatus(String userId) {
        EmploymentStatus status = new EmploymentStatus();
        status.setUserId(userId);
        status.setStatus(0);
        status.setDate(BLACK_STR);
        status.setMobile(BLACK_STR);
        status.setNoReason(BLACK_STR);
        status.setCompany(BLACK_STR);
        status.setThreeImage(BLACK_STR);
        status.setLicense(BLACK_STR);
        status.setLegal(BLACK_STR);
        status.setCounty(BLACK_STR);
        status.setAddress(BLACK_STR);
        status.setUniversityTitle(BLACK_STR);
        status.setUniversityLevel(BLACK_STR);
        status.setGrade(BigDecimal.ZERO);
        status.setTroopsTitle(BLACK_STR);
        status.setCivilTitle(BLACK_STR);
        status.setRemark(BLACK_STR);
        return status;
    }
}
