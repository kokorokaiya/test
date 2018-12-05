package com.internousdev.ecsite.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.internousdev.ecsite.dto.UserInfoDTO;
import com.internousdev.ecsite.util.DBConnector;





public class UserListDAO {


	ArrayList<UserInfoDTO>userInfoDTO = new ArrayList<UserInfoDTO>();



	public ArrayList <UserInfoDTO>select(){

	 DBConnector dbConnector = new DBConnector();
	 Connection connection = dbConnector.getConnection();




		String sql ="select * from login_user_transaction";





				try {

					PreparedStatement preparedStatement = connection.prepareStatement(sql);
					ResultSet resultSet = preparedStatement.executeQuery();


					while(resultSet.next()){
						UserInfoDTO dto = new UserInfoDTO();
						dto.setLoginId(resultSet.getString("login_id"));
						dto.setLoginPass(resultSet.getString("login_pass"));
						dto.setUserName(resultSet.getString("user_name"));
						dto.setInsert_date(resultSet.getString("insert_date"));
						userInfoDTO.add(dto);

					}


				}catch(SQLException e){
					e.printStackTrace();


				} try {
					connection.close();

				} catch (SQLException e) {
					e.printStackTrace();

				}

		           return userInfoDTO;


	}




}

