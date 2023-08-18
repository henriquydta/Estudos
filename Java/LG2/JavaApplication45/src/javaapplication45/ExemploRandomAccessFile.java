/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package javaapplication45;

/**
 *
 * @author estudante1
 */
import java.io.IOException;
import java.io.RandomAccessFile;

public class ExemploRandomAccessFile {
    public static void main(String[] args) {
        try {
            // Abre o arquivo para leitura e escrita
            RandomAccessFile arquivo = new RandomAccessFile("arquivo.txt", "rw");

            // Escreve no arquivo na posição 0
            arquivo.seek(0);
            arquivo.writeBytes("Exemplo de escrita em arquivo de acesso aleatório");

            // Lê do arquivo na posição 0
            arquivo.seek(0);
            byte[] buffer = new byte[25];
            arquivo.read(buffer);

            // Imprime o conteúdo lido do arquivo
            System.out.println(new String(buffer));
            arquivo.read(buffer);
            System.out.println(new String(buffer));

            // Fecha o arquivo
            arquivo.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
