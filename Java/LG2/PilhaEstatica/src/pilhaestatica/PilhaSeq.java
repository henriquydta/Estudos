/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package pilhaestatica;

/**
 *
 * @author estudante1
 */
public class PilhaSeq {
    private int[] pilha;
    private int tamanhoMaximo;
    private int topo;

    public PilhaSeq(int tamanhoMaximo) {
        this.tamanhoMaximo = tamanhoMaximo;
        this.pilha = new int[tamanhoMaximo];
        this.topo = -1;
    }

    public void empilha(int elemento) {
        if (cheia()) {
            System.out.println("A pilha está cheia.");
        } else {
           // topo++;
            pilha[++topo] = elemento;
        }
    }

    public int desempilha() {
        if (vazia()) {
            System.out.println("A pilha está vazia.");
            return -1;
        } else {
            int elemento = pilha[topo];
            topo--;
            return elemento;
        }
    }

    public int topo() {
        if (vazia()) {
            System.out.println("A pilha está vazia.");
            return -1;
        } else {
            return pilha[topo];
        }
    }

    public boolean vazia() {
        return topo == -1;
    }

    public boolean cheia() {
        return topo == tamanhoMaximo - 1;
    }

    public int tamanho() {
        return topo + 1;
    }
}
