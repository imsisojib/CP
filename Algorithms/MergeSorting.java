public class MergeSorting {

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter number of element: ");
        int elementNumber;
        elementNumber = input.nextInt();
        int[] mainArray = new int[elementNumber];
        //inserting element into mainArray
        System.out.println("Enter elements in Array: ");
        for(int i = 0; i<elementNumber; i++){
            mainArray[i] = input.nextInt();
        }

        MergeSorting obj = new MergeSorting();
        obj.mergeSort(mainArray);

        for(int i = 0; i<elementNumber; i++){
            System.out.print(mainArray[i]+" ");
        }
    }

    private void mergeSort(int [] mainArray){
        int element =mainArray.length;
        if(element<2) return;
        int mid = element/2;
        int rightArraySize = element-mid;
        int[] leftArray = new int[mid];
        int[] rightArray = new int[rightArraySize];
        //assigning left array elements
        for(int leftArrayFirstIndex = 0; leftArrayFirstIndex<mid; leftArrayFirstIndex++)
            leftArray[leftArrayFirstIndex] = mainArray[leftArrayFirstIndex];
        //assigning rightArray elements
        for(int rightArrayFirstIndex=0; rightArrayFirstIndex<rightArraySize; rightArrayFirstIndex++)
            rightArray[rightArrayFirstIndex] = mainArray[mid+rightArrayFirstIndex];

        mergeSort(leftArray);
        mergeSort(rightArray);

        merge(leftArray,rightArray,mainArray);

    }

    private void merge(int[] leftArray, int[] rightArray, int[] mainArray){
        int elementOfLeftArray = leftArray.length;
        int elementOfRightArray = rightArray.length;
        int indexOfLeftArray=0;
        int indexOfRightArray = 0;
        int indexOfMainArray = 0;
        while(indexOfLeftArray<elementOfLeftArray && indexOfRightArray<elementOfRightArray){
            if(leftArray[indexOfLeftArray]<= rightArray[indexOfRightArray]){
                //assigning leftArray element to it's actual position
                mainArray[indexOfMainArray] = leftArray[indexOfLeftArray];
                indexOfLeftArray++;
            }
            else{
                //assigning rightArray element to it's actual position
                mainArray[indexOfMainArray] = rightArray[indexOfRightArray];
                indexOfRightArray++;
            }
            indexOfMainArray++; //increasing mainArray index
        }
        //when rightArray all element inserted but leftArray element remain in leftArray
        while(indexOfLeftArray<elementOfLeftArray){
            mainArray[indexOfMainArray] = leftArray[indexOfLeftArray];
            indexOfLeftArray++;
            indexOfMainArray++;
        }
        //when leftArray all element inserted but rightArray element remain left
        while(indexOfRightArray<elementOfRightArray){
            mainArray[indexOfMainArray] = rightArray[indexOfRightArray];
            indexOfRightArray++;
            indexOfMainArray++;
        }

    }
}
