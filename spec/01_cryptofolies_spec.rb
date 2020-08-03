require_relative '../lib/01_cryptofolies'

describe "#caesar_cipher" do
#si l'argument "arg" donné est egale à 5, alors le programme doit afficher chaque lettre qui est décalé à 5 par rapport au position initiale de la lettre
  it "'What a string!' offset by 5" do
    s = caesar_cipher("What a string!",5)
    expect(s).to eq("Bmfy f xywnsl!")
  end
#si l'argument "arg"  est egale à 7, alors le programme doit afficher chaque lettre qui est décalé à 7 par rapport au position initiale de la lettre
  it "'Je m'appelle Eric' offset by 7" do
    s = caesar_cipher("Je m'appelle Eric",7)
    expect(s).to eq("Ql t'hwwlssl Lypj")
  end
#si l'argument "arg"  est egale à -25, alors le programme doit afficher chaque lettre de la chaine décalée à -25 par rapport au position initiale de la lettre
  it "'Ave Caesar, ceux qui vont mourir te saluent !' offset by -25" do
    s = caesar_cipher("Ave Caesar, ceux qui vont mourir te saluent !",-25)
    expect(s).to eq("Bwf Dbftbs, dfvy rvj wpou npvsjs uf tbmvfou !")
  end
end

describe "#cipher_letter" do
#Si l'argument est égale à 2 et que la lettre est 'a' alors le programme doit afficher 'c'
  it "(a,2) give c" do
    s = cipher_letter("a",2)
    expect(s).to eq("c")
  end
#Si l'argument est égale à 5 et que la lettre est 'Z' alors le programme doit afficher 'E'
  it "(Z,5) give E" do
    s = cipher_letter("Z",5)
    expect(s).to eq("E")
  end
#Si la lettre n'est pas defini alors le programme renvoi rien
  it "( ,9) give  " do
    s = cipher_letter(" ",9)
    expect(s).to eq(" ")
  end
#Si ce n'est pas une lettre alors le programme renvoi juste le caractére
  it "(',3) give '" do
    s = cipher_letter("'",3)
    expect(s).to eq("'")
  end
#Si l'argument est égale à -2 et que la lettre est 'a' alors le programme doit afficher 'y' 
  it "(a,-2) give y" do
    s = cipher_letter("a",-2)
    expect(s).to eq("y")
  end
end