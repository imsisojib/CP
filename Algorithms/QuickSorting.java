import java.util.Scanner;
public class QuickSorting {
    public static void main(String[] args) {
        System.out.println("Enter how many numbers? ");
        int size;
        int[] element;
         Scanner input = new Scanner(System.in);
            size = input.nextInt();
            element = new int[size];
            for (int i = 0; i < size; i++) {
                element[i] = input.nextInt();
            }

        QuickSorting obj = new QuickSorting();
        obj.divide(element,0,size-1);

        for (int i = 0; i < size; i++) {
            System.out.print(element[i]+" ");
        }
    }

    public static void divide(int element[],int start,int end){
        int pivot;
        if(start>=end) return;
        pivot = QuickSort(element,start,end);
        divide(element,start,pivot-1);
        divide(element,pivot+1,end);
    }


    public static int QuickSort(int element[],int start,int end ){
        int i,j,pivot;
        i = start;
        j = end;
        pivot = element[start];
        boolean moveRight = true;
        while(i<j) {
            if(moveRight) {
                if (element[j] < pivot) {
                    element[i] = element[j];
                    i++;
                    moveRight = false;
                } else {
                    j--;
                }
            }else {

                if (element[i] > pivot) {
                    element[j] = element[i];
                    j--;
                    moveRight = true;
                } else {
                    i++;
                }
            }


        }
        element[j] = pivot;
        return j;
    }
}