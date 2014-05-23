require 'faker'
require 'json'

module FakeDataCreator
  def self.generate
    Hash[
        2.times.map do
          [
              Faker::Name.name,
              10.times.map{ Faker::Company.bs }
          ]
        end
    ]
  end
end

fake_data = FakeDataCreator.generate

File.delete('data/names_bs.json') if File.exist?('data/names_bs.json')
File.open('data/names_bs.json', 'w') do |file|
  file << fake_data.to_json
end
