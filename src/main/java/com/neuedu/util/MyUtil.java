package com.neuedu.util;

import java.util.List;
import java.util.Random;

/**
 * Created by 86178 on 2019/3/26.
 */
public class MyUtil {
    static final String CODES="abdefghigmnqrtyABDEFGHIJLMNQRTY3456789";
    static final int LEN=4;
    public static char[] getStr(){
        char[] array=new char[LEN];
        Random random=new Random();
        for(int i=0;i<LEN;i++){
           array[i]=CODES.charAt(random.nextInt(CODES.length()-1));
        }
        return array;
    }
}
