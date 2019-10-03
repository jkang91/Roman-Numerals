require 'roman'

RSpec.describe Roman do

  describe ".to_int" do
    describe 'returns the Roman version of the integer' do
      context 'single digit numbers' do
        context 'when the digits are base numeral units' do
          it { expect(Roman.to_int(1)).to eq("I") }
          it { expect(Roman.to_int(5)).to eq("V") }
        end

        context 'when the digits are not base numeral units' do
          it { expect(Roman.to_int(3)).to eq("III") }
          it { expect(Roman.to_int(4)).to eq("IV") }
          it { expect(Roman.to_int(6)).to eq("VI") }
          it { expect(Roman.to_int(9)).to eq("IX") }
        end

        context 'two digit numbers' do
          context 'when the digits are base numeral units' do
            it { expect(Roman.to_int(10)).to eq("X") }
            it { expect(Roman.to_int(50)).to eq("L") }
          end

          context 'when the digits are not base numeral units' do
            it { expect(Roman.to_int(11)).to eq("XI") }
            it { expect(Roman.to_int(39)).to eq("XXXIX") }
            it { expect(Roman.to_int(42)).to eq("XLII") }
            it { expect(Roman.to_int(57)).to eq("LVII") }
            it { expect(Roman.to_int(99)).to eq("XCIX") }
          end
        end

        context 'three digit numbers' do
          context 'when the digits are base numeral units' do
            it { expect(Roman.to_int(100)).to eq("C") }
            it { expect(Roman.to_int(500)).to eq("D") }
          end
          context 'when the digits are not base numeral units' do
            # it { expect(Roman.to_int(300)).to eq("CCC") }
          end
        end

        context 'four digits numbers' do
          # 1000 => M
          # it { expect(Roman.to_int(1000)).to eq("M") }
        end

        context "when not given a base number" do
        end
      end
    end
  end
  describe ".print_string" do
    it do
      expect(
        Roman.print_string(1000, 1000)
      ).to eq("M")
    end
  end
end

# context "when given a ones digit"
#   context 'that is a base number' do
#   end
#   context 'that is not a base number' do
#   end
