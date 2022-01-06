import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int count = 0;
        int caseNo = input.nextInt();
        while (caseNo>0){
            
            String op = input.next();
            if (op.equals("X++") || op.equals("++X")) count++;
            else count--;

            caseNo--;
        }

        System.out.println(count);

        return;
    }
}

