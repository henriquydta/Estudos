import java.util.Scanner;

public class Main {
    public static Scanner sc = new Scanner(System.in);
    public static String frase;

    public static void main(String[] args) {
        int n = 1;

        System.out.println("Digite uma frase:");
        frase = sc.nextLine().trim();

        while(frase.isEmpty()){
            System.out.println("Frase inválida! Digite uma frase com pelo menos uma palavra.");
            frase = sc.nextLine().trim();
        }

        for (int i = 0; i < frase.length(); i++) {
            char caractere = frase.charAt(i);

            if (caractere == ' '){
                n++;
            }
        }

        System.out.println("O número de palavras na sua frase é: "+ n);
        System.out.println(frase);
    }
}
