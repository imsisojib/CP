package algorithms.search_algo;

import java.util.Scanner;

public class BinarySearch {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter element Number: ");
        int element;
        element = input.nextInt();
        int[] array = new int[element];
        //inserting element into array
        for(int i =0; i<element; i++){
            array[i] = input.nextInt();
        }

        int firstIndex = 0;
        int lastIndex = array.length - 1;

        int lookingElement;
        System.out.println("Enter element to search: ");
        lookingElement = input.nextInt();

        boolean foundFlag = false;

        while(firstIndex<=lastIndex){
            int mid = (firstIndex+lastIndex)/2;

            if(lookingElement==array[mid]){
                System.out.println("Found! Index = "+mid);
                foundFlag = true;
                break;
            }
            else if(lookingElement<array[mid]){
                lastIndex = mid-1;
            }
            else firstIndex = mid+1;
        }
        if(foundFlag==false) System.out.println("Not Found!");
    }
}
