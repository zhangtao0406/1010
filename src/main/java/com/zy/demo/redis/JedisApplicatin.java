package com.zy.demo.redis;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import redis.clients.jedis.JedisPool;

//配置类
@SpringBootConfiguration
//读取自定义配置文件中的信息
public class JedisApplicatin {
    //以redis连接池的最大连接数为例，介绍redis连接池的配置项

    @Value("localhost")
    private String host;
    @Value("6379")//redis端口号
    private Integer port;

    //接受参数
    @Bean
    public JedisPool jedisPool(){
        return new JedisPool(host,port);

    }
}
