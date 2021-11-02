package example3;

public class HelloWorld {

    public static void setanIntVar(int newValue) {
        System.out.println("Value passed to setanIntVar() " + newValue);
        anIntVar = newValue;
    }

    public static int getanIntVar() {
        return anIntVar;
    }

    public static void anotherMethod() {
        System.out.println("Hello World from anotherMethod()");

        //We’ll now change the value of anIntVar
        setanIntVar(anIntVar + 1);
    }

    public static void main (String[] args) {
        System.out.println("Hello World from main()!");
        setanIntVar(500);
        anotherMethod();
    }

    static int anIntVar;
}