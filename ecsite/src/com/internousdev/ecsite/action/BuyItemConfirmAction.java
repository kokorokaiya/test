package com.internousdev.ecsite.action;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.internousdev.ecsite.dao.BuyItemCompleteDAO;
import com.internousdev.ecsite.dto.BuyItemDTO;
import com.opensymphony.xwork2.ActionSupport;


public class BuyItemConfirmAction extends ActionSupport implements SessionAware {


	private String id;
	private String itemName;
	private String itemPrice;
	private String itemStock;
	private  int cartTotalPrice;

	private String count;
	private String errorMessage;

	private String payment;
	public Map<String,Object> session;

	private List<BuyItemDTO> buyItemDTOList=new ArrayList<BuyItemDTO>();


	public String execute() {

		String result = ERROR;
		System.out.println("------BuyItemCompleteAction");

		BuyItemCompleteDAO dao = new BuyItemCompleteDAO();

		System.out.println(id);
		System.out.println(itemName);
		System.out.println(itemPrice);
		System.out.println(itemStock);
		System.out.println(count);
		System.out.println(payment);
		System.out.println("--------------------");

		String[] idList=id.split(", ",0);
		String[] itemNameList=itemName.split(", ",0);
		String[] itemPriceList=itemPrice.split(", ",0);
		String[] itemStockList=itemStock.split(", ",0);
		String[] countList=count.split(", ",0);

		int insertCount = 0;
		int updateCount = 0;
		for(int i=0; i<idList.length;i++) {
			BuyItemDTO dto = new BuyItemDTO();
			dto.setId(String.valueOf(idList[i]));
			dto.setItemName(String.valueOf(itemNameList[i]));
			int totalCount=Integer.parseInt(countList[i]);
			int price=Integer.parseInt(itemPriceList[i]);
			dto.setItemPrice(String.valueOf(price));
			dto.setItemStock(String.valueOf(itemStockList[i]));
			dto.setCount(String.valueOf(countList[i]));
			int total=price * totalCount;
			cartTotalPrice += total;
			dto.setTotalPrice(String.valueOf(total));
			dto.setTotalCount(String.valueOf(countList[i]));
			dto.setLoginUserId(session.get("login_user_id").toString());
			dto.setPay(payment);


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

			try {
				int cc = 0;
				cc = dao.buyItemInfo(dto.getId(), dto.getLoginUserId(), dto.getTotalPrice(), String.valueOf(dto.getTotalCount()), dto.getPay());
//				ccとはfor文の処理の対象となっている商品の購入処理がうまくいっているか。ここまでが購入処理(cc)、ここから下のif文が在庫減算処理(updateCount)。

					if (cc > 0) {
//					もしDBに登録できたならば、
					insertCount += cc;
//					insertCountとは全部の購入処理がうまくいっているかどうか。全体の個数分の購入処理がうまく行っているかに、今現在の処理の対象となっている商品を足してあげて全体を作り上げるイメージ。
					int itemStock = Integer.parseInt(dto.getItemStock());
					int itemCount = Integer.parseInt(dto.getCount());
//					これら上の二つの宣言（代入）は外ならばクラスの中でどこでやってもいい。でもわかりやすいようにと、外で無駄なことしないために、計算などの処理を行う前で描いてあげるのが見やすい。
					itemStock -= itemCount;
					updateCount += dao.updateItemStock(itemStock, dto.getId());
//					updateCountとは在庫減算処理
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if(insertCount == idList.length
				&& insertCount == updateCount) {
			result = SUCCESS;
		} else {
			result = ERROR;
		}

		return result;
	}




	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id=id;
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

	public String getErrorMessage() {
		return errorMessage;
	}

	public void setErrorMessage(String errorMessage) {
		this.errorMessage = errorMessage;
	}

	public int getCartTotalPrice() {
		return cartTotalPrice;
	}

	public void setCartTotalPrice(int cartTotalPrice) {
		this.cartTotalPrice = cartTotalPrice;
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
}


