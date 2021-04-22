//
//  memory.cpp
//  Object
//
//  Created by Дмитрий Юдин on 22.04.2021.
//

#include "iostream"
using namespace std;

int main() {
    int* a = new int(3);
    cout << "new int a. adress: " << a << " value: " << *a << "\n";
    // new int a. adress: 0x103825f00 value: 3
    
    delete a;
    a = NULL;

    cout << "delete int a. adress: " << a << "\n";
    // delete int a. adress: 0x0
    
    a = new int(7);
    // a = 0x100653490, *a = 7
    int *adress = a;
    // adress = 0x100653490, *adress = 7
    
    delete a;
    cout << *adress;
    // 7;
    
    delete adress;
}
