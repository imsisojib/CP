//accepted
import java.util.Scanner;

public class Uri1180 {
    public static void main(String[] args) {
        int totalNumber;
        Scanner input = new Scanner(System.in);
        totalNumber=input.nextInt();

        int[] storeElement = new int[totalNumber];
        for(int i=0; i<totalNumber;i++){
            storeElement[i]=input.nextInt();
        }
        int smallElement=storeElement[0];
        int smallElementIndex=0;
        for(int i=1; i<totalNumber;i++){
            if(storeElement[i]<smallElement){
                smallElement=storeElement[i];
                smallElementIndex=i;
            }
        }
        System.out.println("Menor valor: "+smallElement);
        System.out.println("Posicao: "+smallElementIndex);

    }
}
