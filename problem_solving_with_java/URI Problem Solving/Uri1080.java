import java.util.Scanner;

public class Uri1080 {
    public static void main(String[] args) {
        byte testCase = 100;
        Scanner input = new Scanner(System.in);
        int inputNumber;
        int storeValue;

        byte checkIndex = 1;
        inputNumber = input.nextInt();
        storeValue = inputNumber;
        int storeIndex = checkIndex;
        testCase-=1;

        while(testCase!=0){
            inputNumber = input.nextInt();
            checkIndex++;
            if(inputNumber>storeValue) {
                storeValue = inputNumber;
                storeIndex = checkIndex;
            }
            testCase--;
        }
        System.out.println(storeValue);
        System.out.println(storeIndex);
    }
}
