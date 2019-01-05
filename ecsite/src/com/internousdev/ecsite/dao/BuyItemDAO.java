package com.internousdev.ecsite.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.internousdev.ecsite.dto.BuyItemDTO;
import com.internousdev.ecsite.util.DBConnector;


public class BuyItemDAO {

	List<BuyItemDTO>buyItemDTOList = new ArrayList<BuyItemDTO>();

	public List<BuyItemDTO>select(){

	 DBConnector dbConnector = new DBConnector();
	 Connection connection = dbConnector.getConnection();

		String sql ="select * from item_info_transaction order by id";

				try {

					PreparedStatement preparedStatement = connection.prepareStatement(sql);
					ResultSet resultSet = preparedStatement.executeQuery();

					while(resultSet.next()){
						BuyItemDTO dto = new BuyItemDTO();
						dto.setId(resultSet.getString("id"));
						dto.setItemName(resultSet.getString("item_name"));
						dto.setItemPrice(resultSet.getString("item_price"));
						dto.setItemStock(resultSet.getString("item_stock"));
						buyItemDTOList.add(dto);
					}

				}catch(SQLException e){
					e.printStackTrace();

				} try {
					connection.close();

				} catch (SQLException e) {
					e.printStackTrace();

				}
		           return buyItemDTOList;
	}

}
