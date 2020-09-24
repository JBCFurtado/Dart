/**
 * 6 – Crie uma classe Agenda que pode armazenar 10 pessoas (utilizando a classe pessoa do
 *exercício anterior) e que seja capaz de realizar as seguintes operações:
 *1.
 *2.
 *3.
 *4.
 *5.
 *Adicionar Pessoa
 *Remover Pessoa
 *Procurar Pessoa por nome
 *Imprimir os dados da Pessoa quando passado o seu nome
 *Imprimir todos da Agenda
 */

class Pessoa {
  String _nome;
  DateTime _data;
  double _altura;

  Pessoa({String nome, DateTime nascimento, double altura}) {
    _nome = nome;
    _data = nascimento;
    _altura = altura;
  }
  
  String getNome() {
    return _nome;
  }

  int idade() {
    return DateTime.now().year - _data.year;
  }

  String dados() {
    String data = '${_data.day}/${_data.month}/${_data.year}';
    return 'Nome: $_nome, Nascimento: $data, Altura: $_altura';
  }
}

class Agenda {
  List lista = new List();

  // Adicinar pessoa a agenda
  void adicionar(int index, Pessoa pessoa) {
    lista.insert(index, pessoa);
  }

  // Remover pessoa da agenda
  String remover(String nome) {
    for (int i = 0; i < lista.length; i++) {
      if (lista[i].getNome() == nome) {
        lista.removeAt(i);
        return '$nome foi removido(a) da agenda.';
      }
    }
    return '$nome não foi encontado(a) na agenda!';
  }
  
  // Procurar pessoa por nome
  Pessoa procurar(String nome) {
    for (Pessoa pessoa in lista) {
      if (pessoa.getNome() == nome) {
        return pessoa;
      }
    }
    return null;
  }
  
  // Imprimir os dados da pessoa
  void dados(String nome) {
    lista.forEach((pessoa) {
      if (pessoa.getNome() == nome) {
        print(pessoa.dados());
      }
    });
  }
  
  // Imprime todos da agenda
  void imprimeTodos() {
    lista.forEach((pessoa) => print(pessoa.dados()));
  }
}

void main() {
  Agenda agenda = Agenda();
  // Adiciona 10 pessoas na genda
  for (int i = 0; i < 10; i++) {
    agenda.adicionar( i, Pessoa(
      nome: 'Pessoa$i',
      nascimento: DateTime.now(),
      altura: i.toDouble())
    );
  }
  print(agenda.remover('Pessoa3'));
  print(agenda.procurar('Pessoa2')?.getNome() ?? 'Não encontrado!');
  agenda.dados('Pessoa1');
  agenda.imprimeTodos();
}
