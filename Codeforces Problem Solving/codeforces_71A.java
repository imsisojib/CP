import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int caseNo = input.nextInt();
        while (caseNo>0){
            String word = input.next();
            if (word.length()>10){
                System.out.println(word.charAt(0)+String.valueOf(word.length()-2)+word.charAt(word.length()-1));
            }else{
                System.out.println(word);
            }
            caseNo--;
        }

        return;
    }
}

