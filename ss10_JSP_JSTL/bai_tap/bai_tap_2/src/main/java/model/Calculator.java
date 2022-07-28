package model;

public class Calculator {
    public static float calculate(float firstOperand, float secondOperand, char Operator) {
        switch (Operator) {
            case '+' :
               return firstOperand + secondOperand;
            case '-':
                return firstOperand - secondOperand;
            case '*':
                return firstOperand * secondOperand;
            case '/':
                return firstOperand / secondOperand;
        }
    }
}
