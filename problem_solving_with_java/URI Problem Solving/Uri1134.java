//accepted
import java.util.Scanner;

public class Uri1134{
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int alchl=0,disel=0,gasoline=0;
        int number=0;
        number= input.nextInt();
        while(number!=8888){
            if(number==4) break;
            else if(number==1) {
                alchl++;
                number = input.nextInt();
            }
            else if(number==2) {
                gasoline++;
                number = input.nextInt();
            }
            else if(number==3) {
                disel++;
                number = input.nextInt();
            }
            else number=input.nextInt();
        }
        System.out.println("MUITO OBRIGADO");
        System.out.printf("Alcool: %d\n",alchl);
        System.out.printf("Gasolina: %d\n",gasoline);
        System.out.printf("Diesel: %d\n",disel);
    }
}
