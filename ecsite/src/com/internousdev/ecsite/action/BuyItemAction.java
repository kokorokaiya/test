package com.internousdev.ecsite.action;

import  java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;

public class BuyItemAction extends ActionSupport implements SessionAware {


	private String id;
	private String itemName;
	private String  itemPrice;
	private String totalCount;
	private String itemStock;
	private  Collection<String> checkList;
	private int cartTotalPrice = 0;
	private  String count;
	private List<String> errorMessageList = new ArrayList<>();

	private String pay;
	private String payment;
	public Map<String,Object> session;

	private List<BuyItemDTO> buyItemDTOList=new ArrayList<BuyItemDTO>();


	public String execute() throws SQLException {


		String result = ERROR;

		System.out.println("---BuyItemAction");
		System.out.println("ID : "+id);
		System.out.println("ITEMNAME:"+itemName);
		System.out.println("ITEMPRICE:"+itemPrice);
		System.out.println("ITEMSTOCK:"+itemStock);
		System.out.println("COUNT:" +count);
		System.out.println("PAY:"+pay);
		System.out.println("CHECKLIST:"+checkList);

		String[] idList=id.split(", ",0);
		String[] itemNameList=itemName.split(", ",0);
		String[] itemPriceList=itemPrice.split(", ",0);
		String[] itemStockList=itemStock.split(", ",0);
		String[] countList=count.split(", ",0);


		String loginUserId=String.valueOf(session.get("login_user_id"));


		if(checkList==null) {
			errorMessageList.add("商品が選択されていません。");
//			エラーメッセージリストをbuyItem.jspで作って、そこにエラーメッセージをaddする。表示窓口はjspにかく。
			BuyItemDAO dao = new BuyItemDAO();
			buyItemDTOList = dao.select();
			return ERROR;
		}

		System.out.println("ID数---->"+idList.length);
		for(int i=0; i<idList.length;  i++) {
			for  (String check : checkList) {
				System.out.println("CHECKED ID---->"+check);
				if(check.equals(String.valueOf(idList[i]))) {
					int itemStock = Integer.parseInt(itemStockList[i].toString());
					int itemCount = Integer.parseInt(countList[i].toString());
					if (itemStock - itemCount < 0) {
						errorMessageList.add(itemNameList[i].toString() + "は在庫がないため購入できません。");

					} else {
						BuyItemDTO dto = new BuyItemDTO();
						dto.setId(idList[i].toString());
						dto.setItemName(itemNameList[i].toString());
						dto.setItemPrice(itemPriceList[i].toString());
						dto.setItemStock(itemStockList[i].toString());
						dto.setCount(countList[i].toString());

						int totalCount=Integer.parseInt(countList[i].toString());
						int price=Integer.parseInt(itemPriceList[i].toString());
						int total=price * totalCount;
						cartTotalPrice += total;
						dto.setTotalPrice(String.valueOf(total));
						dto.setLoginUserId(loginUserId);
						dto.setPay(pay);

						System.out.println("-------カート情報["+(i)+"]----");
						System.out.println("ID             :"+dto.getId());
						System.out.println("ITEMNAME       :"+dto.getItemName());
						System.out.println("ITEMPRICE      :"+dto.getItemPrice());
						System.out.println("ITEMSTOCK      :"+dto.getItemStock());
						System.out.println("COUNT          :"+dto.getCount());
						System.out.println("TOTALPRICE     :" +dto.getTotalPrice());
						System.out.println("USERMASTERID   :"+dto.getLoginUserId());
						System.out.println("PAY            :"+dto.getPay());
						System.out.println("---------------");

						buyItemDTOList.add(dto);
					}
				}
			}
		}

		if (errorMessageList.size() > 0) {
			return ERROR;
		}


		if(pay.equals("1")) {
			payment="現金払い";
		}else {
			payment="クレジットカード";
		}

		result=SUCCESS;
		return result;

	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id=id;
	}
	public Collection<String> getCheckList(){
		return  checkList;
	}
	public void setCheckList(Collection<String> checkList) {
		this.checkList = checkList;
	}


	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public String getItemPrice() {
		return itemPrice;
	}

	public void setItemPrice(String itemPrice){
		this.itemPrice = itemPrice;
	}

	public String getTotalCount() {
		return totalCount;
	}

	public void setTotalCount(String totalCount) {
		this.totalCount = totalCount;
	}
	public String  getItemStock() {
		return itemStock;
	}

	public void setItemStock(String itemStock) {
		this.itemStock = itemStock;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay =pay;
	}

	public Map<String,Object> getSession(){
		return session;
	}

	public void setSession(Map<String,Object> session) {
		this.session = session;
	}

	public List<BuyItemDTO> getBuyItemDTOList() {
		return buyItemDTOList;
	}

	public void setBuyItemDTOList(List<BuyItemDTO> buyItemDTOList) {
		this.buyItemDTOList = buyItemDTOList;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public int getCartTotalPrice() {
		return cartTotalPrice;
	}

	public void setCartTotalPrice(int cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
	}

	public List<String> getErrorMessageList() {
		return errorMessageList;
	}

	public void setErrorMessageList(List<String> errorMessageList) {
		this.errorMessageList = errorMessageList;
	}
}

