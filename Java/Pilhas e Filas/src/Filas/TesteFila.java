package Filas;

public class TesteFila {
    public static void main(String[] args) {
        Fila fila = new Fila(5); // cria uma fila com capacidade para 5 elementos

        fila.insere(10);
        fila.insere(20);
        fila.insere(30);
        fila.insere(40);
        fila.insere(50);
        fila.insere(60); // tenta inserir um elemento a mais do que a capacidade da fila

        fila.remove();
        fila.remove();
        fila.remove();
        fila.remove();
        fila.remove();
        fila.remove();
    }
}

