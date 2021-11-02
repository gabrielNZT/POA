package example1;

import javax.swing.*;

public aspect Tracing {
    private pointcut mainMethod () :
            execution(public static void main(java.lang.String[]));

    before () : mainMethod() {
        JOptionPane.showMessageDialog(null, "> Before mainMethod() " + thisJoinPoint);
        //System.out.println("> Before mainMethod() " + thisJoinPoint);
    }

    after () : mainMethod() {
        JOptionPane.showMessageDialog(null, "< After mainMethod() " + thisJoinPoint);
        //System.out.println("< After mainMethod() " + thisJoinPoint);
    }
}