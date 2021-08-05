#include <iostream>
using namespace std;

class ListElem {
public:
    int value = 0;
    ListElem* next = nullptr;
    ListElem* previous = nullptr;
    
    ListElem(int value) {
        this -> value = value;
    }
};

class List {
public:
    int count = 0;
    
    ListElem* first = NULL;
    ListElem* current = NULL;
    ListElem* last = NULL;
    
    int counter = 0;
    
    int getSize() {
        return count;
    }
    
    void add(int value) {
        ListElem* elem = new ListElem(value);
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
    
    ListElem getListElemByIndex(int index) {
        if (index < count) {
            if (index <= count/2) {
                while (counter != index) {
                    counter++;
                }
                
                // search ListElem
                current = first;
                for (int i = 0; i < counter; i++) {
                    current = current -> next;
                }
                
                return *current;
                
            } else {
                counter = count - 1;
                while (counter != index) {
                    counter--;
                }
                
                // search
                current = last;
                for (int i = count - 1; i > counter; i--) {
                    current = current -> previous;
                }
            }
        }
        
        return *current;
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
    List list = List();
    
    for (int i = 0; i < 5; i++) {
        list.add(i);
    }
    list.showAllValues();
    // 0: 0
    // 1: 1
    // 2: 2
    // 3: 3
    // 4: 4
    
    cout << list.getSize() << "\n";
    // 5
    
    cout << list.getListElemByIndex(3).value << "\n";
    // 3
    
    cout << list.getSize() << "\n";
    // 5
    
}
