package com.movie.user.vo;

public class UserVO {
	
	// id
	private String id;
	// pw
	private String pw;
	// 이름
	private String name;
	// 생년월일
	private String birth;
	// 메일
	private String email;
	// 연락처
	private String tel;
	// 관리자인지 확인용으로 쓸지 아니면 메일인증 회원인지 
	// 인증번호 입력방식이 아닌경우는 메일인증 회원확인용으로 사용하는데 
	// 그렇지 않을 경우 그냥 관리자인지 아닌지 관리자는 1, 일반은 0
	// 후자로 할경우 관리자 페이지용으로 사용가능
	private String user_key; 
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getUser_key() {
		return user_key;
	}
	public void setUser_key(String user_key) {
		this.user_key = user_key;
	}
	@Override
	public String toString() {
		return "UserVO [id=\" + id + \", pw=\" + pw +\", name=\" + name + \", birth=\" + birth + \", email=\" + email + \" tel=\" + tel + \", user_key=\" + user_key + \"]";
	}
	
}
