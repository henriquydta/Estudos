package Pilhas;

public class TestePilhaSeq {
    public static void main(String[] args) {
        PilhaSeq pilha = new PilhaSeq(5);

        pilha.empilha(10);
        pilha.empilha(20);
        pilha.empilha(30);

        System.out.println("Elemento do topo: " + pilha.topo());
        System.out.println("Tamanho da pilha: " + pilha.tamanho());

        int elementoRemovido = pilha.desempilha();
        System.out.println("Elemento removido: " + elementoRemovido);

        System.out.println("Elemento do topo após remoção: " + pilha.topo());
        System.out.println("Tamanho da pilha após remoção: " + pilha.tamanho());

        pilha.empilha(40);
        pilha.empilha(50);

        System.out.println("Elemento do topo: " + pilha.topo());
        System.out.println("Tamanho da pilha: " + pilha.tamanho());

        pilha.empilha(60); // A pilha está cheia, deve exibir uma mensagem de aviso

        System.out.println("Elemento do topo: " + pilha.topo());
        System.out.println("Tamanho da pilha: " + pilha.tamanho());
    }
}
