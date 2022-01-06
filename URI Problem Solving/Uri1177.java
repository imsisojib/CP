import java.util.Scanner;

public class Uri1177 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        byte testNumber;
        byte insertValue = 0;
        testNumber=input.nextByte();
        int arrayNumber = 1000;
        int i = 0;
        while(arrayNumber!=0){
            System.out.printf("N[%d] = %d\n",i,insertValue);
            i++;
            insertValue++;
            if(insertValue==testNumber) insertValue=0;
            arrayNumber--;
        }
    }
}
