# spec/caesar_spec.rb
require './cipher'

describe Cipher do
  describe "#caesar_cipher" do
    it "shifts string by one character" do
    expect(subject.caesar_cipher('cat', 1)).to eql('dbu')
    end
  
    it "does nothing when shifting by zero" do
    expect(subject.caesar_cipher('Peter', 0)).to eql('Peter')
    end

    it "ignores puntuation" do
    expect(subject.caesar_cipher('?- $', 7)).to eql('?- $')
    end

    it "maintains upper and lower case" do
    expect(subject.caesar_cipher('HeLLo wORLd', 4)).to eql('LiPPs aSVPh')
    end

    it "copes with empty string" do
    expect(subject.caesar_cipher('', 6)).to eql('')
    end
  end
end