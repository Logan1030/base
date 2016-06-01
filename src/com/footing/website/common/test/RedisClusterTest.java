package com.footing.website.common.test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import redis.clients.jedis.JedisCluster;

public class RedisClusterTest extends SpringTransactionalContextTests{
	@Autowired
	JedisCluster jedisCluster;
	@Test
	public void test(){
		try {
			System.out.println("====================================");
			System.out.println("jedis:"+jedisCluster);
			System.out.println(jedisCluster.setnx("yubin", "yubin"));
			System.out.println(jedisCluster.info());
			System.out.println(jedisCluster.get("yubin"));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
