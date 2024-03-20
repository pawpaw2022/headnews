package xyz.goblin.mapper;


import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import xyz.goblin.user.pojos.ApUser;

@Mapper
public interface ApUserMapper extends BaseMapper<ApUser> {
}
