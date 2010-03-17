# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'agenda'
require 'contato'
require 'telefone'
require 'endereco'

agenda = Agenda.new
sair = true

while sair 
  puts ".:: Mini Agenda Ruby ::."
  puts "1. Cadastrar novo contato"
  puts "2. Consultar agenda inteira"
  puts "3. Procurar por nome"
  puts "4. Procurar por bairro"
  puts "5. Procurar por rua"
  puts "6. Procurar por celular"
  puts "7. Sair"
  opcao = gets.chomp
  if opcao == '1'
    agenda.cadastrar
  elsif opcao == '2'
    agenda.consultar
  elsif opcao == '3'
    agenda.buscar_por_nome
  elsif opcao == '4'
    agenda.buscar_por_bairro
  elsif opcao == '5'
    agenda.buscar_por_rua
  elsif opcao == '6'
    agenda.buscar_por_celular
  elsif opcao == '7'
    sair = false
  else
    puts "Opcao invalida"
  end
end

