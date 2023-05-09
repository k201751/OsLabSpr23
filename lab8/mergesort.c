#include <stdio.h>
#include <stdlib.h>
#include <pthread.h>

#define MAX_SIZE 1000

int arr[MAX_SIZE];
int temp[MAX_SIZE];

typedef struct {
    int start;
    int end;
} thread_args;

void merge(int start, int mid, int end) {
    int i = start;
    int j = mid + 1;
    int k = start;
    while (i <= mid && j <= end) {
        if (arr[i] < arr[j]) {
            temp[k++] = arr[i++];
        } else {
            temp[k++] = arr[j++];
        }
    }
    while (i <= mid) {
        temp[k++] = arr[i++];
    }
    while (j <= end) {
        temp[k++] = arr[j++];
    }
    for (i = start; i <= end; i++) {
        arr[i] = temp[i];
    }
}

void *merge_sort(void *arg) {
    thread_args *args = (thread_args *) arg;
    int start = args->start;
    int end = args->end;
    if (start < end) {
        int mid = (start + end) / 2;
        pthread_t thread1, thread2;
        thread_args args1 = {start, mid};
        thread_args args2 = {mid + 1, end};
        pthread_create(&thread1, NULL, merge_sort, &args1);
        pthread_create(&thread2, NULL, merge_sort, &args2);
        pthread_join(thread1, NULL);
        pthread_join(thread2, NULL);
        merge(start, mid, end);
    }
    pthread_exit(NULL);
}

int main() {
    int n, i;
    printf("Enter the number of elements in the array: ");
    scanf("%d", &n);
    printf("Enter the elements of the array:\n");
    for (i = 0; i < n; i++) {
        scanf("%d", &arr[i]);
    }
    thread_args args = {0, n - 1};
    pthread_t main_thread;
    pthread_create(&main_thread, NULL, merge_sort, &args);
    pthread_join(main_thread, NULL);
    printf("The sorted array is:\n");
    for (i = 0; i < n; i++) {
        printf("%d ", arr[i]);
    }
    printf("\n");
    return 0;
}
