/**
 * 5 – Crie uma classe para representar uma pessoa, com os atributos privados de nome, data de
 *nascimento e altura. Crie os métodos públicos para calcular a idade da pessoa e imprimir todos
 *os seus dados.
 */
class Pessoa {
    String _nome;
    DateTime _data;
    double _altura;

    Pessoa({String nome, DateTime nascimento, double altura}){
        _nome = nome;
        _data = nascimento;
        _altura = altura;
    }

    int idade() {
        return DateTime.now().year - _data.year;
    }

    String dados() {
        String data = '${_data.day}/${_data.month}/${_data.year}';
        return 'Nome: $_nome, Nascimento: $data, Altura: $_altura';
    }
}

void main() {
    Pessoa joao = Pessoa(
      nome: "João",
      nascimento: DateTime(1990, 08, 25),
      altura: 1.74
    );
    print('Idade: ${joao.idade()}');
    print(joao.dados());
}
