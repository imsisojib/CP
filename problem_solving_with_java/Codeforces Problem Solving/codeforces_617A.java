import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int cordX = input.nextInt();
        if (cordX<=5) System.out.println(1);
        else{
            int steps = cordX/5;
            if (steps * 5 == cordX) {
                System.out.println(steps);
            } else {
                System.out.println(steps + 1);
            }
        }

        return;
    }
}

