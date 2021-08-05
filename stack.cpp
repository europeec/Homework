#include <iostream>
using namespace std;

class StackElem {
public:
    int value = 0;
    StackElem* next = nullptr;
    StackElem* previous = nullptr;
    
    StackElem(int value) {
        this -> value = value;
    }
};

class Stack {
public:
    int count = 0;
    
    StackElem* first = NULL;
    StackElem* current = NULL;
    StackElem* last = NULL;
    
    int counter = 0;
    
    int getSize() {
        return count;
    }
    
    void push(int value) {
        StackElem* elem = new StackElem(value);
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
                    last = nullptr;
                    count--;
                } else {
                    last -> previous  -> next = nullptr;
                    last = last -> previous;
                    count--;
                }
            }
        }

    StackElem* getElement() {
        if (count != 0) {
            return last;
        }
    }
    
    void showAllValues() {
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
    Stack stack = Stack();
    
    for (int i = 0; i < 5; i++) {
        stack.push(i);
    }
    
    stack.showAllValues();
    // 0: 0
    // 1: 1
    // 2: 2
    // 3: 3
    // 4: 4
    
    cout << stack.getSize() << endl;
    // 5
    
    stack.pop();
    
    stack.showAllValues();
    // 0: 0
    // 1: 1
    // 2: 2
    // 3: 3
    
    cout << stack.getElement() -> value << endl;
    // 4
    
    cout << stack.getSize() << endl;
    // 4
}
