#include <stdio.h>

#include "linkedlist.h"

int main(int argc, char** argv)
{
    printf("Hello world!\n");

    LinkedListNode root;
    LinkedListNode next;
    root.next = &next;
    root.first = &next;
    root.last = &next;

    return 0;
}
