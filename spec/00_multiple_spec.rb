require_relative '../lib/00_multiple'

describe "#is_multiple_of_3_or_5?" do
#Si on rentre un entier relatif , le programme doit sortir la somme des multiples
  it "check if 3 or 5 are multiple of 3 or 5" do
    s = is_multiple_of_3_or_5?(3||5)
    expect(s).to eq(true)
  end

  it "check if 51 or 45 are multiple of 3 or 5" do
    s = is_multiple_of_3_or_5?(51||45)
    expect(s).to eq(true)
  end

  it "check if 2, 7 or 64 are not multiple of 3 or 5" do
    s = is_multiple_of_3_or_5?(2||7||64)
    expect(s).to eq(false)
  end
end

describe "#sum_of_3_or_5_multiples" do

  it "check if the sum for 10 give 23" do
    s = sum_of_3_or_5_multiples(10)
    expect(s).to eq(23)
  end

  it "check if the sum for 11 give 33" do
    s = sum_of_3_or_5_multiples(11)
    expect(s).to eq(33)
  end

  it "check if the sum for 0 or 3 give 0" do
    s = sum_of_3_or_5_multiples(0||3)
    expect(s).to eq(0)
  end
  
#Si on rentre pas un entier relatif le programe dit à l'utilisateur qu'il ne prends que des entiers relatifs
  it "check if the sum for -1, 1.23 or 'chiffre' give 0" do
    s = sum_of_3_or_5_multiples(-1||1.23||"chiffre")
    expect(s).to eq("Yo ! Je ne prends que les entiers naturels. TG")
  end
end