package xyz.goblin.user.v1.controller;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import xyz.goblin.commons.dtos.ResponseResult;
import xyz.goblin.user.dtos.LoginDto;
import xyz.goblin.user.service.ApUserService;

@RestController
@Slf4j
@CrossOrigin
@RequestMapping("/api/v1/login")
@Api("用户管理")
public class ApUserController {

    @Autowired
    private ApUserService apUserService;

    @PostMapping("/login_auth")
    public ResponseResult login(@RequestBody LoginDto dto) {
        log.info("登陆操作:{}", dto);
        return apUserService.login(dto);
    }

    @GetMapping("/test")
    public ResponseResult test() {
        return ResponseResult.okResult("test");
    }

}
