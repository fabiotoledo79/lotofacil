require 'httparty'

module Lotofacil
  class Raffle
    attr_accessor :number
    include HTTParty
    ARRAY_NUMBER = Array(1..25)
    NUMBERS_15 = 15
    NUMBERS_16 = 16
    NUMBERS_17 = 17
    NUMBERS_18 = 18

    def initialize(type = 15)
      @number = number_by_type(type)
    end

    def generate(qtde = 1, *args)
      (0..(qtde.to_i - 1)).map{raffle_number(args)}
    end

    def last_raffle
      response = raffle["concurso"]
      response ? mount_response(response) : nil
    end

  private

    def number_by_type(type)
      case type
      when NUMBERS_15
        NUMBERS_15
      when NUMBERS_16
        NUMBERS_16
      when NUMBERS_17
        NUMBERS_17
      when NUMBERS_18
        NUMBERS_18
      else
        NUMBERS_15
      end
    end

    def raffle_number(args)
      if args && !args.empty?
        numbers = verify_numbers_range(args.flatten[0..(@number - 1)])
        (numbers + colletion_number(numbers).sample(@number - numbers.size)).sort
      else
        ARRAY_NUMBER.sample(@number).sort
      end
    end

    def colletion_number(numbers = [])
      array_new = []
      ARRAY_NUMBER.each { |_array| array_new << _array unless numbers.include?(_array)}
      array_new
    end

    def verify_numbers_range(numbers)
      response = []
      numbers.each { |number| response << number if number_in_range?(number.to_i) }
      response
    end

    def number_in_range?(number)
        number > 0 && number <= 25
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
end
