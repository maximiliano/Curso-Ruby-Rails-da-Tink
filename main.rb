require 'agenda'
require 'contato'
require 'telefone'
require 'endereco'

agenda = Agenda.new
continue = true

while continue
  puts ".:: Mini Agenda Ruby ::."
  puts "1. Cadastrar novo contato"
  puts "2. Consultar agenda inteira"
  puts "3. Procurar por nome"
  puts "4. Procurar por bairro"
  puts "5. Procurar por rua"
  puts "6. Procurar por celular"
  puts "7. Sair"
  opcao = gets.chomp
  case opcao
  when '1'
    agenda.cadastrar
  when '2'
    agenda.consultar
  when '3'
    puts "Digite o nome que procura"
    buscado = gets.chomp
    agenda.buscar "Nome", buscado
  when '4'
    puts "Digite o bairro que procura"
    buscado = gets.chomp
    agenda.buscar "Bairro", buscado
  when '5'
    puts "Digite a rua que procura"
    buscado = gets.chomp
    agenda.buscar "Rua", buscado
  when '6'
    puts "Digite o celular que procura"
    buscado = gets.chomp
    agenda.buscar "Celular", buscado
  when '7'
    continue = false
  else
    puts "Opcao invalida"
  end
  
end
