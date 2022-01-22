#ifndef __LINKED_LIST_H__
#define __LINKED_LIST_H__

#include "types.h"

#ifdef __cplusplus
    extern "C" {
#endif

        typedef struct LinkedListNode {
            struct LinkedListNode* first;
            struct LinkedListNode* next;
            struct LinkedListNode* last;

            size_t dataSize;
            byte* data; 
        } LinkedListNode;


#ifdef __cplusplus
    }
#endif

#endif
