class pessoa {


//CONTRUTOR
constructor(nome, idade, profissao) {
    this.nome = nome;
    this.idade = idade;
    this.profissao = profissao;
  }

 // Método para cumprimentar
 cumprimentar() {
    console.log(`Olá, meu nome é ${this.nome}, tenho ${this.idade} anos e sou ${this.profissao}.`);
  }
}

//criando uma nova instancia da clase pessoa
const pessoal = new pessoa('ana', 30, 'engenheira');

//chamando o método cumprimentar
pessoal.cumprimentar();

