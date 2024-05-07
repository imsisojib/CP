import java.util.Scanner;
//timeLimit Exit
public class Uri1176 {

    public static void main(String[] args) {
        int testCase;
        Scanner input = new Scanner(System.in);
        testCase = input.nextInt();
        int number;
        Uri1176 obj = new Uri1176();
        long storage;
        while(testCase!=0){
            number = input.nextInt();
            storage = obj.fibonacci(number);
            System.out.printf("Fib(%d) = %d\n",number,storage);

            testCase--;
        }

    }

    private long fibonacci(int n){
        if(n==0) return 0;
        if(n==1) return 1;
        else return fibonacci(n-1)+fibonacci( n-2 );
    }
}
