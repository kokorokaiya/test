package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.UserListDeleteCompleteDAO;
import com.internousdev.ecsite.dto.UserInfoDTO;
import com.opensymphony.xwork2.ActionSupport;


public class UserListDeleteCompleteAction extends ActionSupport implements SessionAware{

	public Map<String, Object>session;
	private UserListDeleteCompleteDAO userListDeleteCompleteDAO = new UserListDeleteCompleteDAO();
	private ArrayList<UserInfoDTO> userListInfo = new ArrayList<UserInfoDTO>();
	private String deleteFlg;
	private String message;

	public String execute() throws SQLException {

		String result = ERROR;
		int res = userListDeleteCompleteDAO.userListHistoryDelete();
//	△ここで、DAOの呼び出し、DAOクラスにいく⇨delete methodで実行。Actionクラスで、deleteメソッドではなくexecuteメソッドで実行するのは、strutsでexecute methodで実行と指示しているから。
//struts2.3では、struts.xmlのメソッドでdelete指定できるが、最新版のstrutsでは、deleteメソッドをstruts.xalに書くことはできないので、ここではexecuteメソッドでactionクラスでDAOの呼び出し(int res = itemListDeleteCompleteDAO.itemListHistoryDelete();)、そしてDAOでdeleteを実行するというながれになっている。
		if (res > 0){
//ここのresは、DAOクラスでのexecuteUpdateの実行結果、つまり、何件削除できたのかの結果が帰ってきているので、削除結果が０以上の時は、、、という意味になってくる。
		    userListInfo = null;
			setMessage("ユーザー情報を正しく削除しました。");
			result = SUCCESS;
		} else if(res == 0){
			setMessage("ユーザー情報の削除に失敗しました。");
			result = SUCCESS;
		}

		return result;

	}


	public void setDeleteFlg(String deleteFlg) {
		this.deleteFlg = deleteFlg;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	@Override
	public void setSession(Map<String, Object>session){
		this.session = session;
	}


	public ArrayList<UserInfoDTO>getUserListInfo(){
		return this.userListInfo;
	}

	public String getMessage(){
		return this.message;
	}

	public void setMessage(String message){
		this.message = message;
	}

}

