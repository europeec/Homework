#include <iostream>
using namespace std;

class QueueElem {
public:
    int value = 0;
    QueueElem* next = nullptr;
    QueueElem* previous = nullptr;
    
    QueueElem(int value) {
        this -> value = value;
    }
};

class Queue {
public:
    int count = 0;
    
    QueueElem* first = NULL;
    QueueElem* current = NULL;
    QueueElem* last = NULL;
    
    int counter = 0;
    
    int getSize() {
        return count;
    }
    
    void push(int value) {
        QueueElem* elem = new QueueElem(value);
        switch (count) {
            case 0:
                first = elem;
                last = elem;
                break;

            default:
                elem -> previous = last;
                last -> next = elem;
                last = elem;
                break;
        }
        
        count++;
    }
    
    void pop() {
            if (count != 0) {
                if (count == 1) {
                    first = nullptr;
                    count--;
                } else {
                    first -> next -> previous = nullptr;
                    first = first -> next;
                    count--;
                }
            }
        }

    void show() {
        if (count != 0) {
            current = first;
            for (int i = 0; i < count; i++) {
                
                cout << i << ": " << current -> value << "\n";
                current = current -> next;
            }
        }
    }
    
    
};



int main(){
    Queue queue = Queue();
    
    for (int i = 0; i < 5; i++) {
        queue.push(i);
    }
    
    queue.show();
    // 0: 0
    // 1: 1
    // 2: 2
    // 3: 3
    // 4: 4
    
    cout << queue.getSize() << endl;
    // 5
    
    queue.pop();
    
    queue.show();
    // 0: 1
    // 1: 2
    // 2: 3
    // 3: 4
    
    cout << queue.getSize() << endl;
    // 4
}
