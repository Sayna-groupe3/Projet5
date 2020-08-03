require_relative '../lib/02_trader'

describe "#day_trader" do
#De tous les listes dans le tableau, le programme doit sortir seulement le bénéfice obtenu entre le jour 3 et le jour 9
  it "out the profit obtained between the 3rd day and the 9th " do
    s = day_trader([35,45,88,5,59,27,51,34,87,89])
    expect(s).to eq([3,9])
  end
#De tous les listes dans le tableau, le programme doit sortir seulement le bénéfice obtenu entre le jour 2 et le jour 3
  it "out the profit obtained between the 2nd day and the 3rd" do
    s = day_trader([21,51,3,88,64,76,1,51,55,32,20,8])
    expect(s).to eq([2,3])
  end
#De tous les listes dans le tableau, le programme doit sortir seulement le bénéfice obtenu entre le jour 7 et le jour 8
  it "out the profit obtained between the 7th day and the 8th " do
    s = day_trader([51,51,12,87,13,52,20,1,82,54])
    expect(s).to eq([7,8])
  end

end