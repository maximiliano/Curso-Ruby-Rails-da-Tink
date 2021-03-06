class Agenda

  def initialize
    puts "Agenda criada"
  end

  def cadastrar
    puts "Digite os dados da pessoa:"
    puts "Nome: " ; nome = gets.chomp
    puts "- Dados para contato -"
    puts "Telefone fixo" ; fixo = gets.chomp
    puts "Telefone celular" ; celular = gets.chomp
    puts "Telefone ramal" ; ramal = gets.chomp
    puts "- Dados residenciais - "
    puts "Rua" ; rua = gets.chomp
    puts "Bairro" ; bairro = gets.chomp
    puts "Numero" ; numero = gets.chomp
    puts "Sala" ; sala = gets.chomp
    puts "Complemento" ; complemento = gets.chomp
    Contato.new({"Nome" => nome}, Telefone.new(celular, fixo, ramal), Endereco.new(rua, bairro, numero, sala, complemento))
  end

  def consultar
    File.open("teste.yml") do |txt|
      YAML::load_documents( txt ) do |objs|
        objs.each do |k, v|
          puts "#{k}: #{v}" unless v.empty?
        end
        puts
      end
    end
  end

  def buscar(tipo, buscado)
    File.open("teste.yml") do |txt|
      YAML::load_documents( txt ) do |objs|
        if objs[tipo] =~ /#{buscado}/i
          objs.each do |k, v|
            puts "#{k}: #{v}" unless v.empty?
          end
        end
        puts
      end
    end
  end

end
