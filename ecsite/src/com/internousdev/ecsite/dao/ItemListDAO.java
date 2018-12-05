package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.ItemInfoDTO;
import com.internousdev.ecsite.util.DBConnector;





public class ItemListDAO {


	ArrayList<ItemInfoDTO>itemInfoDTO = new ArrayList<ItemInfoDTO>();



	public ArrayList <ItemInfoDTO>select(){

	 DBConnector dbConnector = new DBConnector();
	 Connection connection = dbConnector.getConnection();




		String sql ="select * from item_info_transaction";





				try {

					PreparedStatement preparedStatement = connection.prepareStatement(sql);
					ResultSet resultSet = preparedStatement.executeQuery();


					while(resultSet.next()){
						ItemInfoDTO dto = new ItemInfoDTO();
						dto.setItemName(resultSet.getString("item_name"));
						dto.setItemPrice(resultSet.getString("item_price"));
						dto.setItemStock(resultSet.getString("item_stock"));
						dto.setInsert_date(resultSet.getString("insert_date"));
						itemInfoDTO.add(dto);

					}


				}catch(SQLException e){
					e.printStackTrace();


				} try {
					connection.close();

				} catch (SQLException e) {
					e.printStackTrace();

				}

		           return itemInfoDTO;


	}




}





