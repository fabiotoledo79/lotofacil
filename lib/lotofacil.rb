require 'httparty'

class Lotofacil
  include HTTParty

  def generate(qtde = 1)
    (0..(qtde.to_i - 1)).map{raffle_number}
  end

  def last_raffle
    response = raffle["concurso"]
    response ? mount_response(response) : []
  end
private
  def raffle_number
    Array(1..25).sample(15).sort
  end

  def raffle
    HTTParty.get('http://developers.agenciaideias.com.br/loterias/lotofacil/json')
  end

  def mount_response(response)
    {
      date: response["data"],
      number: response["numero"],
      number_raffle: response["numeros_sorteados"]
    }
  end
end
