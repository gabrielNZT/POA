package example2;

import org.springframework.aop.Pointcut;

import javax.swing.*;

public aspect Mensagem {

    private pointcut Salvar():
            execution(public String getNome());

    before(): Salvar(){
        JOptionPane.showMessageDialog(null, "tentando fazer operação de salvar ");
    }

    after() : Salvar (){
        JOptionPane.showMessageDialog(null, "salvo! ");
    }

}
