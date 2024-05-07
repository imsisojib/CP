import java.util.ArrayList;
import java.util.Scanner;

public class Uri1151 {
    public static void main(String[] args) {
        int number;
        Scanner input = new Scanner(System.in);
        number = input.nextInt();
        Uri1151 obj = new Uri1151();
        ArrayList<Integer> store = new ArrayList<>();
        for(int i = 0; i<number ; i++){
            store.add(obj.fibonacci(i));
        }
        int check = 0;
        for(int n:store){
            check++;
            if(check==number) System.out.print(n);
            else System.out.print(n+" ");

        }
        System.out.println();

    }

    private int fibonacci(int n){
        if(n==0) return 0;
        if(n==1) return 1;
        else return fibonacci(n-1)+fibonacci( n-2 );
    }
}
