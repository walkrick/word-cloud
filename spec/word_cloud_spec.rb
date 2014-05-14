require 'rspec'
require 'rspec/autorun'
require_relative '../names_and_bs'


describe 'Popular words' do
  it 'lists people' do

    expect(list_people).to eq <<-EOS
      Charley Steuber
      Oral Rath
    EOS
  end
end