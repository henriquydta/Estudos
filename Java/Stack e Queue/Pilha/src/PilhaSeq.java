public class PilhaSeq {
    private int[] pilha;
    private int tamanhoMaximo, topo;

    public PilhaSeq(int tamanhoMaximo) {
        this.tamanhoMaximo = tamanhoMaximo;
        this.pilha = new int [tamanhoMaximo];
        this.topo = -1;
    }

    public void empilha (int elemento) {
        if(cheia()) {
            System.out.println("A pilha está cheia.");
        } else {
            topo++;
            pilha[topo] = elemento;
        }
    }

    public void desempilha(){
        if(vazia()){
            System.out.println("A pilha está vazia.");
            return -1;
        } else {
            return pilha[topo--];
        }
    }

    public boolean vazia(){
        return topo == -1;
    }

    public boolean cheia(){
        return topo == tamanhoMaximo - 1;
    }

    public int tamanho(){
        return topo + 1;
    }
}
