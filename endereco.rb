class Endereco
  def initialize(rua, bairro, numero, sala, complemento)
    @rua = rua
    @bairro = bairro
    @numero = numero
    @sala = sala
    @complemento = complemento
  end

  def to_s
    "Rua: #{@rua} \nBairro: #{@bairro} \nNumero: #{@numero} \nSala: #{@sala} \nComplemento: #{@complemento}"
  end

  def to_yml
    {"Rua" => @rua, "Bairro" => @bairro, "Numero" => @numero, "Sala" => @sala, "Complemento" => @complemento}
  end
end
