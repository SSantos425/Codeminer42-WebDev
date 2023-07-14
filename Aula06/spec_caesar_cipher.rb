require_relative 'caesar_cipher'

RSpec.describe "caesar_cipher" do
  
  it "returns the correct ciphered string" do
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

  it ("retuns te correc ciphere string with a negative number") do
    expect(caesar_cipher("What a string!", -5)).to eq("Rcvo v nomdib!")
  end

  it "return an empty string if the input is empty" do
    expect(caesar_cipher("",5)).to eq("")
  end

end
