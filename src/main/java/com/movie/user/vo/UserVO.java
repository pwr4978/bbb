package com.movie.user.vo;

public class UserVO {
	
	// id
	private String id;
	// pw
	private String pw;
	// �̸�
	private String name;
	// �������
	private String birth;
	// ����
	private String email;
	// ����ó
	private String tel;
	// ���������� Ȯ�ο����� ���� �ƴϸ� �������� ȸ������ 
	// ������ȣ �Է¹���� �ƴѰ��� �������� ȸ��Ȯ�ο����� ����ϴµ� 
	// �׷��� ���� ��� �׳� ���������� �ƴ��� �����ڴ� 1, �Ϲ��� 0
	// ���ڷ� �Ұ�� ������ ������������ ��밡��
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
