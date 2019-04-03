package com.neuedu.util;

import lombok.Data;

/**
 * Created by 86178 on 2019/3/28.
 */
@Data
public class Page {
    private Integer pageNo=1;
    private Integer pageSize=10;
    //withPage 如果为0不分页 如果为1就分页
    private Integer withPage=1;
    public int getPageStart(){
        return (pageNo-1)*pageSize;
    }
}
