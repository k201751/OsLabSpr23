# Multi-threaded Merge Sort Algorithm

This repository contains a C program that implements the merge sort algorithm using multi-threading. The program sorts an array of integers using a multi-threaded approach, which can potentially improve performance on systems with multiple processor cores.

## Algorithm Description

The merge sort algorithm is a divide-and-conquer algorithm that recursively divides the array into smaller subarrays, sorts them, and then merges them back together to obtain the final sorted array. In this program, we utilize multi-threading to parallelize the sorting process, allowing for improved efficiency on multi-core systems.

The program uses the POSIX threads library (`pthread`) to create and manage threads. It divides the array into two halves and spawns two threads to sort each half independently. The sorted subarrays are then merged together using the `merge` function. This process continues recursively until the entire array is sorted.

## Usage

1. Ensure you have a C compiler installed on your system (e.g., GCC).

2. Clone this repository:

   ```shell
   git clone https://github.com/your-username/mergesort-multithread.git

