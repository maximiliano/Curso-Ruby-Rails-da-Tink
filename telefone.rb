class Telefone
  
  def initialize(celular, fixo, ramal)
    @celular = celular
    @fixo = fixo
    @ramal = ramal
  end

  def to_s
    "Celular: #{@celular} \nFixo: #{@fixo} \nRamal: #{@ramal}\n"
  end

  def to_yml
    {"Celular" => @celular, "Fixo" => @fixo, "Ramal" => @ramal}
  end

end
