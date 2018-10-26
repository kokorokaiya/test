package jp.co.internous.action;

public class Test3 {
	public static void main(String[] args){
		Person3 mina = new Person3();
		mina.name = "mina";
		mina.age = 89;
		System.out.println(mina.name);
		System.out.println(mina.age);
		
		
		Person3 taro = new Person3();
		taro.name = "taro";
		taro.age = 18;
		System.out.println(taro.name);
		System.out.println(taro.age);
		
		
		Person3 jiro = new Person3("jiro", 20);
		System.out.println(jiro.name);
		System.out.println(jiro.age);
		
		
		
		
		Person3 saburo = new Person3("三郎");
		saburo.age = 44;
		System.out.println(saburo.name);
		System.out.println(saburo.age);
		
		
		
		
		Person3 sakura = new Person3(22);
		System.out.println(sakura.name);
		System.out.println(sakura.age);
		
		
		
		
		Person3 hanako = new Person3(17, "花子");
		System.out.println(hanako.name);
		System.out.println(hanako.age);
		
		
		
	}

}
