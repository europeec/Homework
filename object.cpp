//
//  main.cpp
//  Object
//
//  Created by Дмитрий Юдин on 21.04.2021.
//

#include <iostream>
using namespace std;

class GPU {
public:
    GPU (int hz) {
        this -> hz = hz;
    }
    
    GPU() {}
private:
    int hz = 0;
};

class CPU {
public:
    CPU (int numberOfCore, int hz) {
        this -> hz = hz;
        this -> numberOfCore = numberOfCore;
    }
    
    CPU() {}
    
private:
    int numberOfCore, hz = 0;
};

class PowerBlock {
public:
    PowerBlock(int voltage) {
        this -> voltage = voltage;
    }
    
    PowerBlock() {}
    
private:
    int voltage = 0;
};

class RAM {
public:
    RAM (int memory) {
        this -> memory = memory;
    }
    
    RAM() {}
    
private:
    int memory = 0;
};

class HDD {
public:
    HDD (int memory) {
        this -> memory = memory;
    }
    
    HDD() {}
    
private:
    int memory = 0;
};

class Motherboard {
public:
    Motherboard (CPU processor, RAM ram, PowerBlock powerBlock, HDD hdd, GPU gpu) {
        this -> processor = processor;
        this -> ram = ram;
        this -> powerBlock = powerBlock;
        this -> hdd = hdd;
        this -> gpu = gpu;
    }
    
    Motherboard() {}
private:
    CPU processor;
    RAM ram;
    PowerBlock powerBlock;
    HDD hdd;
    GPU gpu;
};

class Device {
public:
    Device (string brand) {
        this -> brand = brand;
    }
    
    Device() {}
    
private:
    string brand = "";
};

class Monitor {
public:
    Monitor (int weight, int height) {
        this -> weight = weight;
        this -> height = height;
    }
    
    Monitor() {}
private:
    int weight, height = 0;
    
};

class Computer {
public:
    Computer(Motherboard motherboard, Device device, Monitor monitor) {
        this -> motherboard = motherboard;
        this -> device = device;
        this -> monitor = monitor;
    }
    
    Computer() {}
    
private:
    Motherboard motherboard;
    Device device;
    Monitor monitor;
};



int main(int argc, const char * argv[]) {
    
}
