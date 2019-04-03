package com.neuedu.util;

import lombok.Data;

/**
 * Created by 86178 on 2019/3/26.
 */
@Data
public class Message {
    private Integer code;
    private Object message;

    public Message(Integer code, Object message) {
        this.code = code;
        this.message = message;
    }
}
