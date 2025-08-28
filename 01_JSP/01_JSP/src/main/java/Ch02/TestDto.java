package Ch02;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

public class TestDto {
	
	private String username;
	private int age;
	private LocalDateTime date;
	
	// 디폴트 생성자
	public TestDto() {}
	// 모든인자 생성자

	public TestDto(String username, int age, LocalDateTime date) {
		super();
		this.username = username;
		this.age = age;
		this.date = date;
	}
		
	// setter & getter
		
	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public int getAge() {
		return age;
	}

	public void setAge(String age) {
		
		this.age = Integer.parseInt(age);	// 문자열로 들어온 age를 정수형으로 변환
	}

	public LocalDateTime getDate() {
		return date;
	}

//	public void setDate(String date) {
//		DateTimeFormatter fmtin = DateTimeFormatter.ofPattern("yyyy-mm-dd'T'HH:MM");	// "yyyy-mm-dd'T'HH:MM" 이 형식으로 날짜데이터가 들어온다	
//		this.date = LocalDateTime.parse(date,fmtin);
//	}
	
	public void setStringtoDate(String date) {
		System.out.println("setStringtoDate: " + date);
		DateTimeFormatter fmtin = DateTimeFormatter.ofPattern("yyyy-MM-dd'T'HH:mm");
		this.date = LocalDateTime.parse(date, fmtin);
	}
	
	// toString()
	
	@Override
	public String toString() {
		return "TestDto [username=" + username + ", age=" + age + ", date=" + date + "]";
	}

	
}
