import java.util.Scanner;

public class Uri1178 {
    public static void main(String[] args) {
        double number;
        Scanner input = new Scanner(System.in);
        number = input.nextDouble();
        byte index = 100;
        byte i = 0;
        while(index!=0){
            System.out.printf("N[%d] = %.4f\n",i,number);
            number/=2;
            index--;
            i++;
        }
    }
}
