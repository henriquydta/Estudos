/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package listaencadeada;

import java.util.Random;

/**
 *
 * @author estudante1
 */
public class ListaEncadeada {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
       DynamicList<String> alunos = new DynamicList<>();
       DynamicList<Integer> nunmeros = new DynamicList<>();
       
       alunos.add("Ana Luiza");
       alunos.add("Carlos ");
       alunos.add("Mariana");
       alunos.add("João");
       
       System.out.println(alunos.size());
        for (int i = 0; i < alunos.size(); i++) {
            System.out.print(alunos.get(i) + " ");
            
        }
        Random r = new Random();
        for (int i = 0; i < 50; i++) {
            System.out.print(" \nadd " + (i+1));
            nunmeros.add(r.nextInt());
            
        }
        
        for (int i = 1; i < nunmeros.size(); i++) {
            System.out.print(nunmeros.get(i) + " ");
            
        }
        
        
    }
    
}
