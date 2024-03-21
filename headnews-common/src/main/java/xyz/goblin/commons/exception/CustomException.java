package xyz.goblin.commons.exception;

import xyz.goblin.commons.enums.AppHttpCodeEnum;

public class CustomException extends RuntimeException{

    private AppHttpCodeEnum appHttpCodeEnum;

    public CustomException(AppHttpCodeEnum appHttpCodeEnum){
        this.appHttpCodeEnum = appHttpCodeEnum;
    }

    public AppHttpCodeEnum getAppHttpCodeEnum() {
        return appHttpCodeEnum;
    }
}
