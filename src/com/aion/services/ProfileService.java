package com.aion.services;

import java.util.ArrayList;

import com.aion.javabean.ProfileBean;
import com.aion.javabean.UserBean;

public class ProfileService {

	public ArrayList getSelectedUser(String a){
		ArrayList<ProfileBean> userbeanlists = new ArrayList<>();
		String sql = "SELECT FROM " + UserBean.TABLE_NAME + " WHERE " + 

		UserBean.NAME + " LIKE" + " ? ";
		
		return userbeanlists;
	}
}
