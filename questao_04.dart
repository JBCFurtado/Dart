/**
 * 4 – Crie uma matriz que receba 5 valores inteiros, crie uma função que 
 * receba essa matriz imprima seus valores em ordem descente na tela.
 */

void ordena(List a) {
    // Ordem ascendente/crescente
     a.sort();
    print(a);
    // Ordem descendente/decrescente
    a.sort((v1, v2) => v2.compareTo(v1));
    print(a);
}
  
void main() {
    List matriz = [3, 5, 2, 4, 1];
    ordena(matriz);
} 
