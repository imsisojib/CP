import java.util.Scanner;

public class Uri1159 {
    public static void main(String[] args) {
        int inputNumber;
        Scanner input = new Scanner(System.in);

        while(input.hasNext()){

            byte loop = 5;
            int sumOfNumbers = 0;

            inputNumber = input.nextInt();

            if(inputNumber==0) return;
            else if(inputNumber%2==0){
                while(loop!=0){
                    sumOfNumbers+=inputNumber;
                    inputNumber+=2;
                    loop--;
                }
            }
            else{
                inputNumber+=1;
                while(loop!=0){
                    sumOfNumbers+=inputNumber;
                    inputNumber+=2;
                    loop--;
                }
            }
            System.out.println(sumOfNumbers);
        }
    }
}

