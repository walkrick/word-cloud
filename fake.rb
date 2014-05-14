require 'faker'

class FakeDataCreator

  def create_file
    File.delete('names_and_bs.rb')
    File.open('names_and_bs.rb', 'w') do |f|
      f << "NAMES_AND_BS = "

      names_bs = {}
      2.times do
        bs = []
        10.times do
          bs << Faker::Company.bs
        end
        names_bs[Faker::Name.name] = bs
      end
      f.puts names_bs
    end
  end
end

FakeDataCreator.new.create_file
