//not accepted
import java.util.Scanner;

public class Uri1179 {
    public static void main(String[] args) {
        int[] store = new int[15];
        Scanner input = new Scanner(System.in);
        //taking input
        for(int i=0; i<15; i++){
            store[i] = input.nextInt();
        }
        //printing even numbers
        byte evenIndex;
        byte printIndex=0;
        for(evenIndex=0; evenIndex<15; evenIndex++){
            if(store[evenIndex]%2==0) System.out.println("par["+evenIndex+"] = "+store[evenIndex]);
            printIndex++;
            if(printIndex>4) break;
        }

    }
}
