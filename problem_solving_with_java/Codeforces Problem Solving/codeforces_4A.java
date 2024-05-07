import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int weight = input.nextInt();
        if (weight%2==0 && weight!=2) System.out.println("YES"); //any even weight but not 2/2=1 is not an even number
        else System.out.println("NO");

        return;
    }
}

