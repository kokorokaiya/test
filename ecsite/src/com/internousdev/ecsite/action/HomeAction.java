package com.internousdev.ecsite.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
//import com.internousdev.ecsite.dao.BuyItemDAO;
//import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;




public class HomeAction extends ActionSupport implements SessionAware {
  public Map<String, Object> session;
//  private List<BuyItemDTO> buyItemDTOList = new ArrayList<BuyItemDTO>();
  public String execute(){
	  String result = "login";


	  if(session.containsKey("login_user_id")){
		  BuyItemDAO buyItemDAO = new BuyItemDAO();
		  List<BuyItemDTO> buyItemDTOList = buyItemDAO.select();
		  session.put("buyItemDTOList", buyItemDTOList);
//		  session.put("id", buyItemDTOList.getId());
//		  session.put("buyItem_name", buyItemDTOList.getItemName());
//		  session.put("buyItem_price", buyItemDTOList.getItemPrice());
//		  System.out.println(buyItemDTOList.get(0).getItemStock());
//		  System.out.println(buyItemDTOList.get(0).getItemStock());
		  result = SUCCESS;
	  }
	  return result;
  }


  public Map<String, Object> getSession() {
		return session;
	}

  @Override
  public void setSession(Map<String, Object> session){
	  this.session = session;
  }



//	public List<BuyItemDTO> getBuyItemDTOList() {
//		return buyItemDTOList;
//	}
//
//	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
//		this.buyItemDTOList = buyItemDTOList;
//	}




  }

