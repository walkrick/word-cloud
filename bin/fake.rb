require 'faker'
require 'json'

class FakeDataCreator

  def self.generate_hash
    names_bs = {}
    35.times do
      bs = []
      rand(2..20).times do
        bs << [Faker::Company.bs, Faker::Company.bs.upcase].sample
      end
      names_bs[Faker::Name.name] = bs
    end
    JSON.pretty_generate names_bs
  end
end

json_file = File.open('../data/names_bs.json', 'w')
json_file.write(FakeDataCreator.generate_hash)
json_file.close

names_bs =  JSON.parse(File.read('../data/names_bs.json'))
jj names_bs
