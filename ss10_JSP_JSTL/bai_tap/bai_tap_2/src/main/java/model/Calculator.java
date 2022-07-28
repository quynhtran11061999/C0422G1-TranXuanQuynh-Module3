package model;

public class Calculator {
    public static float calculate(float firstOperand, float secondOperand, char Operator) {
        switch (Operator) {
            case '+' :
               return firstOperand + secondOperand;
               break;
            case '-':
                return firstOperand - secondOperand;
                break;
            case '*':
                return firstOperand * secondOperand;
                break;
            case '/':
                if (secondOperand != 0){
                    return firstOperand / secondOperand;
                } else {
                    try {

                    }catch ()
                }
        }
    }
}
