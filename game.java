import java.util.*;


public class Main {
    public static final int size = 10;
    public static Stack <Integer> stack = new Stack<Integer>();
    public static Scanner scanner = new Scanner(System.in);
    public static BackgroundThread thread = new BackgroundThread();
    public static int temp = 0;
    
	public static void main(String[] args) {
	    temp = scanner.nextInt();
	    stack.push(temp);
	    thread.start();
	    showStack();
	    
	    // цикл ввода
	    while (!stack.isEmpty() && stack.size() < size) {
	        temp = scanner.nextInt();
	        // проверка ввода
	        if (temp == stack.lastElement() + 1) {
	           stack.push(temp);
	           showStack(); 
	        }
	    }
	    
	    // проверка победы 
	    if (stack.size() == 10) {
	        System.out.println("Ого, круто!");
	        System.exit(0);
	    }
	    
	}
	
	// Поток для таймера
	public static class BackgroundThread extends Thread {
        @Override public void run(){
            while (stack.size() > 0 && stack.size() <= size) {
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                stack.pop();
                showStack();
            }
            System.out.println("Не в этот раз");
            System.exit(0);
        }
	}
	
	// очистка консоли + вывод стака
	private static void showStack() {
	    cleanConsole();
       	    System.out.println(stack);
	}
	
	// очистка консоли
	private static void cleanConsole() {
            System.out.print("\033[H\033[2J");  
            System.out.flush();  
	}
}
