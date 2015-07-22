package com.kszit.dareport.web.login.controle;

import com.kszit.stu.webInvoke.web.controle.Controle;
import com.kszit.stu.webInvoke.web.controle.Page;
import com.kszit.stu.webInvoke.web.controle.engine.Engine;

/**
 * 返回json格式数据的测试类
 * @author Administrator
 *
 */
public class LoginControle extends Controle{
	

	/**
	 * dareport/dit.do?a=LoginControle&m=loginPage
	 */
	public void loginPage(){
		Page page = new Page();
		page.setVmName("index.html");
		super.setPage(page);
	}
	/**
	 * 调用：dareport/dit.do?a=JsonDataTest&m=getJsonData
	 */
	public void getJsonData(){
		Page page = new Page();
		page.setJsonContent("dddd");
		super.setPage(page);
	}
	
	
}
