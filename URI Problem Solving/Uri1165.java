import java.util.Scanner;

public class Uri1165 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int number;

        boolean foundFlag;
        byte testCase;
        testCase = input.nextByte();

        while(testCase!=0){
            foundFlag = true;
            number = input.nextInt();
            if(number<2) System.out.println(number+" nao eh primo");
            else if(number==2) System.out.println(number+" eh primo");
            else{
                for(int i=2; i<=(number/2); i++){
                    if(number%i==0){
                        System.out.println(number+" nao eh primo");
                        foundFlag = false;
                        break;
                    }

                }
                if(foundFlag==true) System.out.println(number+" eh primo");

            }
            testCase--;
        }

    }
}
