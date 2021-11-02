package example2;


import javax.swing.*;

public class Main {

    public static void main(String[] args) {
        String nome = JOptionPane.showInputDialog("qual é o nome");
        String sobrenome = JOptionPane.showInputDialog("qual é o sobrenome");

        try{

            Pessoa pessoa = new Pessoa();
            pessoa.setNome(nome);
            pessoa.setSobrenome(sobrenome);
            pessoa.salvar(nome, sobrenome);

            //System.out.println(pessoa.getSobrenome());
            //System.out.println(pessoa.getNome());
            JOptionPane.showMessageDialog(null, pessoa.getNome());

        } catch (Exception e) {

            e.printStackTrace();

        }
    }
}
