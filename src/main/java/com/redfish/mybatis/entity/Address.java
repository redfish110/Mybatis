package com.redfish.mybatis.entity;

import java.io.Serializable;
import lombok.Data;

/**
 * @author 
 * 
 */
@Data
public class Address implements Serializable {
    /**
     * 地址主键
     */
    private Integer aid;

    /**
     * 地址名称
     */
    private String aname;

    private static final long serialVersionUID = 1L;
}