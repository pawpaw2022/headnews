package xyz.goblin.common.exception;

import xyz.goblin.common.enums.AppHttpCodeEnum;

public class CustomException extends RuntimeException{

    private AppHttpCodeEnum appHttpCodeEnum;

    public CustomException(AppHttpCodeEnum appHttpCodeEnum){
        this.appHttpCodeEnum = appHttpCodeEnum;
    }

    public AppHttpCodeEnum getAppHttpCodeEnum() {
        return appHttpCodeEnum;
    }
}
