package app.shiros.factories;

import java.util.LinkedHashMap;

public class FilterChainDefinitionMapBuilder {

	public LinkedHashMap<String, String> buildFilterChainDefinitionMap(){
		LinkedHashMap<String, String> map = new LinkedHashMap<>();
		
		map.put("/login.jsp", "anon");
		map.put("/shiro/login", "anon");
		map.put("/shiro/logout", "logout");
		map.put("/user.jsp", "authc,roles[user]");//authc必须是通过认证访问的，而不是remember me
		map.put("/admin.jsp", "authc,roles[admin]");
		map.put("/list.jsp", "user");//认证和remember me 都可以
		
		map.put("/**", "authc");
		
		return map;
	}
	
}
