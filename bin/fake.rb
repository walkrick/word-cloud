require 'faker'
require 'json'

class FakeDataCreator

  def generate_hash
    names_bs = {}
    2.times do
      bs = []
      10.times do
        bs << Faker::Company.bs
      end
      names_bs[Faker::Name.name] = bs
    end
    names_bs.to_json
  end
end

fjson = File.open('names_bs.json', 'w')
fjson.write(FakeDataCreator.new.generate_hash)
fjson.close

names_bs =  JSON.parse(File.read('names_bs.json'))
jj names_bs
