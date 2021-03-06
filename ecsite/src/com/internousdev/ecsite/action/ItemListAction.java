package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.ItemListDAO;
import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.opensymphony.xwork2.ActionSupport;






public class ItemListAction extends ActionSupport implements SessionAware {


	public Map<String, Object>session;
	private ItemListDAO itemListDAO = new ItemListDAO();
	private ArrayList<ItemInfoDTO>itemList = new ArrayList<ItemInfoDTO>();
	private String message;

	public String execute() throws SQLException {

        itemList=itemListDAO.select();

//        Actionクラスで、DAOに接続する文をかく↑　サクセス返すだけじゃDBから情報取れない。

		String result = SUCCESS;
		return result;
	}


	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}



	public ArrayList<ItemInfoDTO>getItemList(){
		return this.itemList;
	}

	public void setItemList(ArrayList<ItemInfoDTO> itemList){
		this.itemList = itemList;

	}

//	上のsetterについては、つけなくても実行されるが基本的にはgetter setter共に記述。


	public String getMessage(){
		return this.message;
	}

	public void setMessage(String message){
		this.message = message;
	}

}

