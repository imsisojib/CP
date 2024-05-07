import java.util.Scanner;

public class Uri1153 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number;
        number = input.nextInt();
        Uri1153 obj = new Uri1153();
        System.out.println(obj.factorial(number));

    }
    private int factorial(int n){
        if(n==1) return 1;
        else return n*factorial(n-1);
    }
}
