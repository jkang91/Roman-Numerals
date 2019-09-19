require 'roman'

RSpec.describe Roman, ".to_int" do

  describe 'returns the Roman version of the integer' do
    context "when given a base number" do
      # 1 => I
      it { expect(Roman.to_int(1)).to eq("I") }

      # 5 => V
      it { expect(Roman.to_int(5)).to eq("V") }

      # 10 => X
      it { expect(Roman.to_int(10)).to eq("X") }

      # 50 => L
      it { expect(Roman.to_int(50)).to eq("L") }

      # 100 => C
      it { expect(Roman.to_int(100)).to eq("C") }
      #
      # # 500 => D
      # it { expect(Roman.to_int(500)).to eq("D") }

      # 1000 => M
      # it { expect(Roman.to_int(1000)).to eq("M") }
    end

    context "when not given a base number" do
      it { expect(Roman.to_int(3)).to eq("III") }

      it { expect(Roman.to_int(4)).to eq("IV") }
      it { expect(Roman.to_int(6)).to eq("VI") }

      it { expect(Roman.to_int(9)).to eq("IX") }

      it { expect(Roman.to_int(11)).to eq("XI") }

      it { expect(Roman.to_int(39)).to eq("XXXIX") }
      it { expect(Roman.to_int(42)).to eq("XLII") }

      it { expect(Roman.to_int(57)).to eq("LVII") }

      it { expect(Roman.to_int(99)).to eq("XCIX") }
    end
  end

end
