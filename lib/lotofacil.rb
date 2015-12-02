class Lotofacil

  def generate(qtde = 1)
  	(0..(qtde.to_i - 1)).map{raffle_number}
  end

private

  def raffle_number
  	Array(1..25).sample(15).sort
  end
end
