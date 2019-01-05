package com.internousdev.ecsite.dao;



import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.internousdev.ecsite.util.DBConnector;
import com.internousdev.ecsite.util.DateUtil;


public class BuyItemCompleteDAO {
	private DateUtil dateUtil = new DateUtil();



	public int buyItemInfo(String item_transaction_id, String user_master_id, String total_price, String total_count, String pay)throws SQLException {

		String sql = "INSERT INTO user_buy_item_transaction (item_transaction_id, total_price, total_count, user_master_id, pay, insert_date)VALUES(?,?,?,?,?,?)";
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int count  = 0;
		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setString(1, item_transaction_id);
			preparedStatement.setString(2, total_price);
			preparedStatement.setString(3, total_count);
			preparedStatement.setString(4,user_master_id);
			preparedStatement.setString(5, pay);
			preparedStatement.setString(6, dateUtil.getDate());
			count = preparedStatement.executeUpdate();

		} catch(Exception e){
			e.printStackTrace();
		}finally {
			connection.close();
		}
		return count;
	}

//	在庫管理のためのUpdate文を以下に付け足した。どの商品（id)の在庫(stock)に対してアップデートをかけてあげるのか。在庫マイナス機能なければ上のだけ。

	public int updateItemStock(int itemStock, String id)throws SQLException {

		String sql = "update item_info_transaction set item_stock = ? where id = ?";
		DBConnector dbConnector = new DBConnector();
		Connection connection = dbConnector.getConnection();
		int count  = 0;
		try {

			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1, itemStock);
			preparedStatement.setString(2, id);
			count = preparedStatement.executeUpdate();

		} catch(Exception e){
			e.printStackTrace();
		}finally {
			connection.close();
		}
		return count;
	}

}
