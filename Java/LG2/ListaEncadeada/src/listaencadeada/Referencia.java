/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package listaencadeada;

/**
 *
 * @author estudante1
 */
public class Referencia {
    public static void main(String[] args) {
        Pessoa p1, p2, p3;
        p1 = new Pessoa();
        p2 = p1;
        p3 = p2;
        p1.setNome("Isabela");
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        p2.setNome("Leticia");
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        p3 = null;
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        //p3.setNome("Joao");
        p2.setNome("Joao");
        System.out.println(p1);
        System.out.println(p2);
        System.out.println(p3);
        
        
    }
   
}
