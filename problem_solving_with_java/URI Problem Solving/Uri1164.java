import java.util.Scanner;

public class Uri1164 {
    public static void main(String[] args) {
        byte testCase;
        Scanner input = new Scanner(System.in);
        testCase =  input.nextByte();
        int number;
        while(testCase!=0){
            number = input.nextInt();
            int sum = 0;
            for(int i = 1; i<=(number/2); i++){
                if(number%i==0) sum+=i;
            }
            if(number==sum) System.out.println(number+" eh perfeito");
            else System.out.println(number+" nao eh perfeito");
            testCase--;
        }
    }

}
