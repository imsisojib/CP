import java.util.Scanner;

public class Uri1181 {
    public static void main(String[] args) {
        double[][] doubleArray = new double[12][12];
        byte inputNumber ;
        Scanner input = new Scanner(System.in);
        inputNumber=input.nextByte();
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
                sum+=doubleArray[inputNumber][i];
            }
            System.out.printf("%.1f\n",sum);
        }
        else {
            double sum=0;
            for(byte i =0; i<12; i++){
                sum+=doubleArray[inputNumber][i];
            }
            sum/=12.0;
            System.out.printf("%.1f\n",sum);
        }
    }
}
