#include <iostream>
using namespace std;

class Element {
public:
    int value = 0;
    
    Element* left = nullptr;
    Element* right = nullptr;
    
    Element(int value) {
        this -> value = value;
    }
};

class BinaryTree {
public:
    BinaryTree(Element* root) {
        this -> root = root;
        counter++;
    }
    
    void add(int value) {
        Element* newElement = new Element(value);
        if (counter == 0) {
            exit(1);
        } else {
            Element* current = root;
            bool isFound = false;
            
            while (!isFound) {
                if (current -> value != value) {
                    if (value < current -> value) {
                        // left
                        if (current -> left != nullptr) {
                            current = current -> left;
                        } else {
                            isFound = true;
                            current -> left = newElement;
                        }
                    } else {
                        // right
                        if (current -> right != nullptr) {
                            current = current -> right;
                        } else {
                            isFound = true;
                            current -> right = newElement;
                        }
                    }
                } else {
                    isFound = true;
                }
            }
        }
    }
    
    bool contains(int value) {
        Element* current = root;
        bool isFound = false;
        
        while (!isFound) {
            if (value == current -> value) {
                return true;
            }
            
            if (value < current -> value) {
                // left
                if (current -> left != nullptr) {
                    current = current -> left;
                } else {
                    return false;
                }
            } else {
                // right
                if (current -> right != nullptr) {
                    current = current -> right;
                } else {
                    return false;
                }
            }
        }
        
        return false;
    }
    
    void show() {
        if (counter != 0) {
            show(root);
        }
    }
private:
    Element* root;
    int counter = 0;
    
    
    void show(Element* element) {
        cout << element -> value << endl;

        if (element -> left != nullptr) {
            show(element -> left);
        }
        
        if (element -> right != nullptr) {
            show(element -> right);
        }
    }
};



int main(int argc, const char * argv[]) {
    Element* root = new Element(4);
    BinaryTree tree = BinaryTree(root);
    
    tree.add(3);
    tree.add(7);
    tree.add(6);
    tree.add(6);
    
    tree.show(); // 4 3 7 6
    cout << tree.contains(3) << endl; // 1 (true)
    cout << tree.contains(9) << endl; // 0 (false)
    
    return 0;
}
