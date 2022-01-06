import java.util.Scanner;

public class Uri1150 {
    public static void main(String[] args) {
        int x,z;
        Scanner input = new Scanner(System.in);
        x = input.nextInt();
        while(true){
            z = input.nextInt();
            if(z>x) break;
        }
        int sum = x;
        int output = 1;
        while(sum<=z){
            x++;
            sum+=x;
            output++;
        }
        System.out.println(output);

    }
}
