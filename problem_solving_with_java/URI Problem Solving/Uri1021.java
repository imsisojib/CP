//accepted
import java.util.Scanner;

public class Uri1021 {
    public static void main(String[] args) {
        int number;
        double num;
        Scanner input = new Scanner(System.in);
        num = input.nextDouble();
        number=(int)(num*1000.0);
        number/=10;
        System.out.println("NOTAS:");
        System.out.printf("%d nota(s) de R$ 100.00\n",result(number,10000));
        number-=10000*(result( number,10000 ));
        System.out.printf("%d nota(s) de R$ 50.00\n",result(number,5000));
        number-=5000*(result( number,5000 ));
        System.out.printf("%d nota(s) de R$ 20.00\n",result(number,2000));
        number-=2000*(result( number,2000 ));
        System.out.printf("%d nota(s) de R$ 10.00\n",result(number,1000));
        number-=1000*(result( number,1000 ));
        System.out.printf("%d nota(s) de R$ 5.00\n",result(number,500));
        number-=500*(result( number,500 ));
        System.out.printf("%d nota(s) de R$ 2.00\n",result(number,200));
        number-=200*(result( number,200 ));
        System.out.println("MOEDAS:");

        System.out.printf("%d moeda(s) de R$ 1.00\n",result(number,100));
        number-=100*(result( number,100 ));
        System.out.printf("%d moeda(s) de R$ 0.50\n",result(number,50));
        number-=50*(result( number,50 ));
        System.out.printf("%d moeda(s) de R$ 0.25\n",result(number,25));
        number-=25*result( number,25 );
        System.out.printf("%d moeda(s) de R$ 0.10\n",result(number,10));
        number-=10*(result( number,10 ));
        System.out.printf("%d moeda(s) de R$ 0.05\n",result(number,5));
        number-=5*(result( number,5 ));
        System.out.printf("%d moeda(s) de R$ 0.01\n",number);


    }
    private static int result(int number,int div){
        return (number/div);
    }
}
