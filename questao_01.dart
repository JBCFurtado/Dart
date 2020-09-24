/**
 * 1 – Crie uma função que receba dois valores inteiros e retorne a soma dos 
 * valores passados em String, imprima na tela o retorno dessa função.
 */

String soma(int a, int b) {
    return '${a + b}';
}
  
void main() {
    print(soma(2, 3));
}