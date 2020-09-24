/**
 * 2 – Crie uma função que receba dois valores em String, sendo um dos valores 
 * opcionais e retorne à concatenação dos valores, imprima na tela o retorno 
 * dessa função.
 */

String concatenacao(String a,[String b = 'vazio']) {
    return '$a $b';
}
  
void main() {
    print(concatenacao('Olá', 'Mundo'));
} 