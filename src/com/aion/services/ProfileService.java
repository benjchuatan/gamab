package com.aion.services;

import java.util.ArrayList;

import com.aion.javabean.UserBean;

public class ProfileService {

	public ArrayList getSelectedUser(UserBean a){
		ArrayList<UserBean> userbeanlists = new ArrayList<>();
		String sql = "SELECT * FROM " + UserBean.TABLE_NAME + " WHERE " + 

		Artworks.NAME + " LIKE" + " ? ";
		
		return userbeanlists;
	}
}
