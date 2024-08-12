import java.util.Scanner;

public class Bubblesort {

    public void sorting(int[] arr) {
        for (int i = 0; i < arr.length-1; i++) {
            for (int j = i+1; j < arr.length; j++) {
                if (arr[i] > arr[j]) {
                    int temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }
    } 

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.println("enter size of array");
        int size = sc.nextInt();
        int[] arr = new int[size];
        System.out.println("enter element of array");
        for (int i = 0; i < size; i++) {
            arr[i] = sc.nextInt();
        }
        Bubblesort b1 = new Bubblesort();
        b1.sorting(arr);
        System.out.println("sorting is :");
        for (int i = 0; i < size; i++) {
            System.out.print(arr[i] + " ");
        }
        sc.close();
    }
}