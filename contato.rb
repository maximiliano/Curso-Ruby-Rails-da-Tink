require 'yaml'

class Contato
  def initialize(nome, telefone, endereco)
    registro = nome.merge(telefone.to_yml)
    registro.merge!(endereco.to_yml)
    File.open("teste.yml", "a") do |file|
      file.write(YAML::dump(registro))
    end
  end
  
end
