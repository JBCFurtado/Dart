/**
 * 3 – Crie uma função que receba uma String com o valor “Olá mundo”, essa 
 * função deve imprimir um caractere por vez na tela.
 */

void separado(String a) {
    for (int i = 0; i < a.length; i++) {
        print(a[i]);
    }
}
  
void main() {
    separado('Olá mundo');
} 