import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        int[] container = new int[25];
        int indexOfOne = 0;

        for (int i=0; i<25; i++){
            container[i] = input.nextInt();
            if (container[i] == 1) indexOfOne = 1+i;
        }

        //getting the matrix position for 1
        int currentRow;
        int currentColumn;
        if (indexOfOne%5==0){
            currentRow = indexOfOne/5;
            currentColumn = 5;
        }else{
            int vagfol = indexOfOne/5;
            currentRow = vagfol+1;
            currentColumn = indexOfOne%5;
        }


        //calculating move
        int move = 0;
        if (currentColumn>=3){
            move += currentColumn - 3;
        }else move += 3-currentColumn;

        if (currentRow>=3){
            move += currentRow - 3;
        }else move += 3-currentRow;

        System.out.println(move);


        return;
    }
}

