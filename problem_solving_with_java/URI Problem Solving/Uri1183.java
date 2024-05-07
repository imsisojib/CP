import java.util.Scanner;

public class Uri1183 {
    public static void main(String[] args) {
        double[][] doubleArray = new double[12][12];
        Scanner input = new Scanner(System.in);
        char processType;
        processType=input.next().charAt( 0 );
        for(byte i =0; i<12; i++){
            for(byte j=0; j<12; j++){
                doubleArray[i][j]=input.nextDouble();
            }
        }
        if(processType=='S'){
            double sum=0;
            for(byte i =0; i<12; i++){
                for(byte j = (byte)(i+1); j<12 ; j++){
                    sum+=doubleArray[i][j];

                }
            }
            System.out.printf("%.1f\n",sum);
        }
        else {
            double sum=0;
            int totalElement=0;
            for(byte i =0; i<12; i++){
                for(byte j=(byte)(i+1); j<12; j++){
                    sum+=doubleArray[i][j];
                    totalElement++;
                }
            }
            sum/=totalElement;
            System.out.printf("%.1f\n",sum);
        }

    }
}
