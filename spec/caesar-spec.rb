# spec/caesar_spec.rb
require '../cipher'

describe "#caesar_cipher" do
  it "shifts string by one character" do
    expect(subject.caesar_cipher('cat', 1)).to eql('dbr')
  end



end