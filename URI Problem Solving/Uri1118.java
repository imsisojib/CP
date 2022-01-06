//accepted
import java.util.Scanner;

public class Uri1118{
    public static void main(String[] args) {
        double sum=0;
        double number;
        int returnBy=1;
        byte breakLoop=0;
        Scanner input = new Scanner(System.in);

        while(returnBy!=67890){
            if(returnBy==2) return;
            else if(returnBy==1){
                while(input.hasNext()){
                    number = input.nextDouble();
                    if(number>=0 && number<=10){
                        sum+=number;
                        breakLoop++;
                    }
                    else System.out.println("nota invalida");
                    if(breakLoop==2){
                        System.out.printf("media = %.2f\n",(sum/2));
                        sum=0;
                        breakLoop=0;
                        System.out.println("novo calculo (1-sim 2-nao)");
                        returnBy= input.nextInt();
                        break;
                    }
                }
            }
            else{
                System.out.println("novo calculo (1-sim 2-nao)");
                returnBy=input.nextInt();
            }


        }
    }
}