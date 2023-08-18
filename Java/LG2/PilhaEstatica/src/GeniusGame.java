/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author estudante1
 */
import java.util.ArrayList;
import java.util.Random;
import java.util.Scanner;

public class GeniusGame {
    private ArrayList<Integer> sequence;
    private int round;
    private boolean gameOver;
    private Scanner scanner;

    public GeniusGame() {
        sequence = new ArrayList<Integer>();
        round = 1;
        gameOver = false;
        scanner = new Scanner(System.in);
    }

    public void play() {
        System.out.println("Bem-vindo ao jogo Genius!");
        System.out.println("Reproduza a sequência de cores e sons para avançar para a próxima rodada.");
        System.out.println("Boa sorte!");

        while (!gameOver) {
            System.out.println("Rodada " + round + ":");
            generateSequence();
            playSequence();
            if (!gameOver) {
                System.out.println("Parabéns, você passou para a próxima rodada!");
                round++;
            }
        }

        System.out.println("Fim de jogo! Sua pontuação foi de " + (round - 1) + " rodadas.");
    }

    private void generateSequence() {
        Random random = new Random();
        int color = random.nextInt(4) + 1;
        sequence.add(color);
    }

    private void playSequence() {
        for (int i = 0; i < sequence.size(); i++) {
            int color = sequence.get(i);
            playSound(color);
            System.out.println("Digite o número correspondente à cor e som reproduzidos:");
            int guess = scanner.nextInt();
            if (guess != color) {
                gameOver = true;
                System.out.println("Você errou! Fim de jogo.");
                break;
            }
        }
    }

    private void playSound(int color) {
        // Implemente a reprodução de som para cada cor aqui
    }
}
