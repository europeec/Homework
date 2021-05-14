public class Main {
	public static void main(String[] args) {
		System.out.println("Hello World");
		String s1 = "Hello";
		String s2 = "Hello";
		String s3 = new String("Hello");
		
		System.out.println(s1 == s2); 
		// true 
		
		System.out.println(s1 == s3);
		// false 
		
		String s4 = "Hel" + "lo";
		System.out.println(s1 == s4);
		// true 
		
		char[] helloArray = { 'H', 'e', 'l', 'l', 'o' };
		String s5 = "";
		for (int i = 0; i < helloArray.length; i++) {
		    s5 += helloArray[i];
		}
		System.out.print("after cycle: " + s5 + "\n");
		System.out.print(s1 == s5);
		// false 
		
	    if (s1 == "Hello") { }
        // true 
	}
}
