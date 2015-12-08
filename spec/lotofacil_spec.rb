require 'spec_helper'

describe Lotofacil do

  describe '.generate' do

    let(:lotofacil_15) { Lotofacil::Raffle.new }
    let(:lotofacil_16) { Lotofacil::Raffle.new(16) }
    let(:lotofacil_17) { Lotofacil::Raffle.new(17) }
    let(:lotofacil_18) { Lotofacil::Raffle.new(18) }
    let(:lotofacil_19) { Lotofacil::Raffle.new(19) }

    describe 'generate game lotofacil without args' do

      it { expect(lotofacil_15.generate.flatten.size).to eq(15) }
      it { expect(lotofacil_16.generate.flatten.size).to eq(16) }
      it { expect(lotofacil_17.generate.flatten.size).to eq(17) }
      it { expect(lotofacil_18.generate.flatten.size).to eq(18) }
      it { expect(lotofacil_19.generate.flatten.size).to eq(15) }
    end

    describe 'generate game lotofacil with args' do
      it { expect(lotofacil_15.generate(1,1,2).flatten.size).to eq(15) }
      it { expect(lotofacil_16.generate(1,22,23,24).flatten.size).to eq(16) }
      it { expect(lotofacil_17.generate(1,37,22).flatten.size).to eq(17) }
      it { expect(lotofacil_18.generate(1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18).flatten.size).to eq(18) }
      it { expect(lotofacil_19.generate(1,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18).flatten.size).to eq(15) }
    end

  end

  describe '.last_raffle' do
    it { expect(Lotofacil::Raffle.new.last_raffle[:number_raffle].size).to eq(15) }
    it { expect(Lotofacil::Raffle.new(18).last_raffle[:number_raffle].size).to eq(15) }
  end
end
