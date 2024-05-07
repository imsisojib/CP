import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int count = 0;
        int contNo = input.nextInt();
        int position = input.nextInt();

        int[] scores = new int[contNo];

        for (int i=0; i<contNo; i++){
            scores[i] = input.nextInt();
        }

        for (int score: scores){
            if (score>=scores[position-1] && score>0) count++;	//k'th position score is the reference to next round qualification
        }

        System.out.println(count);

        return;
    }
}

