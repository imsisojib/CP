import java.io.PrintStream;
import java.util.Scanner;

public class Uri1117 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        float sum = 0;
        float number;
        int checkFlag = 0;
        while(input.hasNext()){
            number = input.nextFloat();
            if(number<0) System.out.println("nota invalida");
            else if(number>10) System.out.println("nota invalida");
            else{
                sum+=number;
                checkFlag++;
            }

            if(checkFlag==2) break;
        }
        float media;
        media = sum/2;
        if(media*100%100==0) System.out.printf("media = %d\n",(int)media);
        else System.out.printf( "media = %.2f\n", media );
    }
}
