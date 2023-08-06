package Filas;

public class Fila {
    private int[] elementos;
    private int primeiro;
    private int ultimo;

    public Fila(int tamanho) {
        elementos = new int[tamanho];
        primeiro = 0;
        ultimo = -1;
    }

    public void insere(int elemento) {
        if (ultimo == elementos.length - 1) {
            System.out.println("Fila cheia! Não é possível adicionar mais elementos.");
        } else {
            ultimo++;
            elementos[ultimo] = elemento;
        }
    }

    public int remove() {
        if (primeiro > ultimo) {
            System.out.println("Fila vazia!");
            return -1;
        } else {
            int elemento = elementos[primeiro];
            primeiro++;
            return elemento;
        }
    }

    public int[] getElementos() {
        return elementos;
    }
}