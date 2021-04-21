//
//  main.cpp
//  LabList
//
//  Created by Дмитрий Юдин
//

#include <iostream>
using namespace std;



class Element {
public:
    int value = 0;
    
    // next element*
    Element* next = NULL;
    
    // prev element*
    Element* previous = NULL;
    
    Element(int value) {
        this -> value = value;
    }
};

class List {
public:
    
    // lenght of list
    int getSize() {
        return count;
    }
    
    // adding with value
    void add(int value) {
        Element* elem = new Element(value);
        switch (count) {
            case 0:
                this -> add(elem);
                break;
            case 1:
                elem -> previous = first;
                first -> next = elem;
                this -> add(elem);
                break;
            case 2:
                elem -> previous = last;
                last -> next = elem;
                this -> add(elem);
                break;
                
            default:
                elem -> previous = last;
                last -> next = elem;
                this -> add(elem);
                break;
        }
    }
    
    // search element by index
    Element getElementByIndex(int index) {
        if (index < count) {
            if (index <= count/2) {
                while (counter != index) {
                    counter++;
                }
                
                // search Element
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
                
                return *current;
            }
            
        } else {
            // out of range
            exit(111);
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
    
    void replaceElementByIndex(int index, Element elem) {
        Element replacingElement = getElementByIndex(index);
        Element* referenceElement = &elem;
        Element* previous = replacingElement.previous;
        Element* next = replacingElement.next;
        
        referenceElement -> next = next;
        referenceElement -> previous = previous;
        
        previous -> next = referenceElement;
        next -> previous = referenceElement;
    }
    
private:
    int count = 0;

    Element* first = NULL;
    Element* current = NULL;
    Element* last = NULL;
    
    int counter = 0;
    
    // adding with element
    void add(Element* element) {
        if (first == NULL) {
            first = element;
            last = element;
        } else {
            last = element;
        }
        
        count++;
    }
    
    
};



int main(){
    List list = List();
    
    list.add(3);
    list.add(2);
    list.add(1);
    list.add(4);
    list.add(2);
    
    cout << list.getSize() << "\n";
    // 5
    
    list.showAllValues();
    // 0: 3, 1: 2, 2: 1, 3: 4, 4: 2
    
    cout << list.getElementByIndex(3).value << "\n";
    // 4
    
    list.replaceElementByIndex(3, Element(2));
    list.showAllValues();
    // 0: 3, 1: 2, 2: 1, 3: 2, 4: 2
    
    cout << list.getSize() << "\n";
    // 5
    
    cout << list.getElementByIndex(5).value << "\n";
    // Program ended with exit code: 111 (code 111 == out of range)

}
