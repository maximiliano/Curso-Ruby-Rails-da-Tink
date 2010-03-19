class Agenda

  def initialize
    puts "Agenda criada"
  end

  #teste
  
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

    contato = Contato.new({"Nome" => nome}, Telefone.new(celular, fixo, ramal), Endereco.new(rua, bairro, numero, sala, complemento))
  end

  def consultar
    File.open("teste.yml") do |txt|
      YAML::load_documents( txt ) do |obj|
	obj.each do |k, v|
	  if v == "" ; next ; end
	    puts "#{k}: #{v}"
	end
      end
    end
  end

  def buscar_por_nome
    buscar "nome"
  end

  def buscar_por_bairro
    buscar "bairro"
  end

  def buscar_por_rua
    buscar "rua"
  end

  def buscar_por_celular
    buscar "celular"
  end

  private

  def buscar(tipo)
    puts "Digite o #{tipo} que procura"
    buscado = gets.chomp
    File.open("teste.yml") do |txt|
      YAML::load_documents( txt ) do |obj|
        if obj[tipo.capitalize] =~ /#{buscado}/i
          obj.each do |k, v|
            puts "#{k}: #{v}" unless v == ""
          end
        end
      end
    end
  end


end










       # puts "Celular: #{obj['Celular']}, Fixo: #{obj['Fixo']}, Ramal: #{obj['Ramal']}, Rua: #{obj['Rua']}, Bairro: #{obj['Bairro']}, Numero: #{obj['Numero']}, Sala: #{obj['Sala']}, Complemento: #{obj['Complemento']}"
	#end