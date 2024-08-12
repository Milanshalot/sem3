import java.util.Scanner;

public class Insertionsort {

    public void Insertionsorting(int[] arr, int size) {
        int i = 0;
        while (i < size - 1) {
            int key = arr[i];
            int j = i - 1;
            while (j >= 0 && arr[j] > key) {
                arr[j + 1] = arr[j];
                j = j - 1;
            }
            arr[j + 1] = key;
            i = i + 1;
        }
        System.out.println("sorting array is  :  ");
        for (i = 0; i < arr.length; i++) {
             System.out.println(arr[i]+"");
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
        Insertionsort i1 = new Insertionsort();
        i1.Insertionsorting(arr, size);
        System.out.println("sorting is :");
        for (int i = 0; i < size; i++) {
            System.out.print(arr[i] + " ");
        }
        sc.close();
    }
}
