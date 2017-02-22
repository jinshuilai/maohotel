package com.mao.hotel.system;

import java.util.Date;

import com.mao.hotel.base.ObjectBase;

public class User extends ObjectBase {

	private String nickName;//登录名
	private String password;//密码
	private Date lockedDate;//锁定时间
	private Boolean locked;//是否锁定
	
	public String getNickName() {
		return nickName;
	}
	public void setNickName(String nickName) {
		this.nickName = nickName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Date getLockedDate() {
		return lockedDate;
	}
	public void setLockedDate(Date lockedDate) {
		this.lockedDate = lockedDate;
	}
	public Boolean getLocked() {
		return locked;
	}
	public void setLocked(Boolean locked) {
		this.locked = locked;
	}
}
