-- -------------------------------------------------------------
-- TablePlus 5.4.2(506)
--
-- https://tableplus.com/
--
-- Database: nacos_config
-- Generation Time: 2024-03-22 13:54:47.1210
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


INSERT INTO `config_info` (`id`, `data_id`, `group_id`, `content`, `md5`, `gmt_create`, `gmt_modified`, `src_user`, `src_ip`, `app_name`, `tenant_id`, `c_desc`, `c_use`, `effect`, `type`, `c_schema`, `encrypted_data_key`) VALUES
                                                                                                                                                                                                                                  (1, 'headnews-user', 'DEFAULT_GROUP', '# application name: headnews-user\n\nspring:\n  datasource:\n    driver-class-name: com.mysql.jdbc.Driver\n    url: jdbc:mysql://127.0.0.1:3306/headnews_user?autoReconnect=true&useSSL=false&useUnicode=true&characterEncoding=UTF-8&serverTimezone=UTC\n    username: root\n    password: root\n# 设置Mapper接口所对应的XML文件位置，如果你在Mapper接口中有自定义方法，需要进行该配置\nmybatis-plus:\n  mapper-locations: classpath*:mapper/*.xml\n  # 设置别名包扫描路径，通过该属性可以给包中的类注册别名\n  type-aliases-package: xyz.goblin.model.user.pojos', 'fa5bfd0ba8305ed44f3ca1a5dfd84962', '2024-03-22 12:15:17', '2024-03-22 12:15:17', NULL, '192.168.65.1', '', '', NULL, NULL, NULL, 'yaml', NULL, ''),
                                                                                                                                                                                                                                  (2, 'headnews-app-gateway', 'DEFAULT_GROUP', '# application name: headnews-app-gateway\n\nspring:\n  cloud:\n    gateway:\n      globalcors:\n        add-to-simple-url-handler-mapping: true\n        corsConfigurations:\n          \'[/**]\':\n            allowedHeaders: \"*\"\n            allowedOrigins: \"*\"\n            allowedMethods:\n              - GET\n              - POST\n              - DELETE\n              - PUT\n              - OPTION\n      routes:\n        # 平台管理\n        - id: user\n          uri: lb://headnews-user\n          predicates:\n            - Path=/user/**\n          filters:\n            - StripPrefix= 1', '2c0cdcbbf9acb29a4dcbada18d141c94', '2024-03-22 12:18:12', '2024-03-22 12:18:49', '', '192.168.65.1', '', '', '', '', '', 'yaml', '', '');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;