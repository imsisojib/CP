import java.util.Scanner;

public class Uri1154 {
    public static void main(String[] args) {
        int sum = 0;
        int count = 0;
        Scanner input = new Scanner(System.in);
        int age;
        while(true){
            age = input.nextInt();
            if(age<0) break;
            sum+=age;
            count++;
        }
        float average;
        average = (float)sum/count;
        if(average*100%100==0) System.out.println((int)average);
        else System.out.printf("%.2f\n",average);
    }
}
