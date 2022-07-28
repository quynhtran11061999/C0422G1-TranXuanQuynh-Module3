package model;

public class Calculator {
    public static String calculate(double firstNumber, double secondNumber, String operator) {
        double result = 0;
        switch (operator) {
            case "+":
                result = firstNumber + secondNumber;
                break;
            case "-":
                result = firstNumber - secondNumber;
                break;
            case "*":
                result = firstNumber * secondNumber;
                break;
            case "/":
                if (secondNumber == 0) {
                    return "Không chia được cho 0";
                }
                result = firstNumber / secondNumber;
                break;
        }
        return "Kết quả: " + result;
    }
}
