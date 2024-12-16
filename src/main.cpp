#include <iostream>
#include "calculator.h"

int main() {
    Calculator calc;
    std::cout << "3 + 3 = " << calc.Add(3, 3) << std::endl;
    std::cout << "8 - 2 = " << calc.Sub(8, 2) << std::endl;
    std::cout << "2 * 3 = " << calc.Mul(2, 3) << std::endl;
    std::cout << "12 / 2 = " << calc.Div(12, 2) << std::endl;

    try {
        std::cout << "12 / 0 = " << calc.Div(12, 0) << std::endl;
    } catch (const char* msg) {
        std::cerr << "Error: " << msg << std::endl;
    }
    
    return 0;
}
