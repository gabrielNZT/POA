package example3;

public aspect Tracing2 {

    private pointcut setanIntVar () :
            execution(static void setanIntVar(int));

    before () : setanIntVar() {
        System.out.println("> Before setanIntVar() value is " + HelloWorld.getanIntVar());
    }

    after () : setanIntVar() {
        System.out.println("< After setanIntVar() value is " + HelloWorld.getanIntVar());
    }
}