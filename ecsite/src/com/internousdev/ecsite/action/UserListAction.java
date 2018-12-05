package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;






public class UserListAction extends ActionSupport implements SessionAware {


	public Map<String, Object>session;
	private UserListDAO userListDAO = new UserListDAO();
	private ArrayList<UserInfoDTO>userList = new ArrayList<UserInfoDTO>();
	private String message;

	public String execute() throws SQLException {

        userList=userListDAO.select();

//        Actionクラスで、DAOに接続する文をかく↑　サクセス返すだけじゃDBから情報取れない。



		String result = SUCCESS;
		return result;



	}





	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}



	public ArrayList<UserInfoDTO>getUserList(){
		return this.userList;
	}

	public void setUserList(ArrayList<UserInfoDTO> userList){
		this.userList = userList;

	}

//	上のsetterについては、つけなくても実行されるが基本的にはgetter setter共に記述。


	public String getMessage(){
		return this.message;
	}

	public void setMessage(String message){
		this.message = message;
	}

}

