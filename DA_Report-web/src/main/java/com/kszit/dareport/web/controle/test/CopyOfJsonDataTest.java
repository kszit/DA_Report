package com.kszit.dareport.web.controle.test;

import com.kszit.stu.webInvoke.web.controle.Controle;
import com.kszit.stu.webInvoke.web.controle.Page;
import com.kszit.stu.webInvoke.web.controle.engine.Engine;

/**
 * 返回json格式数据的测试类
 * @author Administrator
 *
 */
public class CopyOfJsonDataTest extends Controle{
	
	static{
		Engine.getInstance().registerControle(CopyOfJsonDataTest.class);
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
