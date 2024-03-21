package xyz.goblin.user.service;

import com.baomidou.mybatisplus.extension.service.IService;
import xyz.goblin.commons.dtos.ResponseResult;
import xyz.goblin.user.dtos.LoginDto;
import xyz.goblin.user.pojos.ApUser;

public interface ApUserService extends IService<ApUser> {
    /**
     * app端登录功能
     * @param dto
     * @return
     */
    public ResponseResult login(LoginDto dto);
}
