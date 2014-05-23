require 'rspec'
require_relative '../lib/word_cloud'

input = <<-JSON
  {"Gaylord Mayert":
    ["whiteboard","envisioneer plug-and-play"],
  "Eusebio Mante":
    ["syndicate schemas","whiteboard"]}
JSON

describe 'Word Cloud' do
  it 'lists people' do

    list = WordCloud.new
    returned_data = list.list_people(input)

    expect(returned_data).to eq ["Gaylord Mayert", "Eusebio Mante"]
  end

  it 'sums multiple single use words from a single name' do

    input = <<-JSON
      {"Gaylord Mayert":["whiteboard stupendous confilgration"]}
    JSON

    sum_of_words = WordCloud.new
    returned_data = sum_of_words.sum_words(input)

    expect(returned_data).to eq({1 => ["whiteboard", "stupendous", "confilgration"]})
  end

  it 'sums duplicate words from a single name' do

    input = <<-JSON
      {"Gaylord Mayert":["stupendous stupendous"]}
    JSON

    sum_of_words = WordCloud.new
    returned_data = sum_of_words.sum_words(input)

    expect(returned_data).to eq({2 => ["stupendous"]})
  end

  it 'sums multiple multiple words from a single name' do

    input = <<-JSON
      {"Gaylord Mayert":["stupendous ingenious stupendous", "ingenious stupendous"]}
    JSON

    sum_of_words = WordCloud.new
    returned_data = sum_of_words.sum_words(input)

    expect(returned_data).to eq({2 => ["ingenious"], 3 => ["stupendous"]})
  end

  it 'lists the number of times a word is uttered (key)' do

    input = <<-JSON
      {"Gaylord Mayert":["whiteboard","envisioneer plug-and-play"],
      "Eusebio Mante":["syndicate schemas","whiteboard"]}
    JSON

    list = WordCloud.new
    returned_data = list.sum_words(input)

    expect(returned_data).to eq({1 => ["envisioneer", "plug-and-play", "syndicate", "schemas"], 2 => ["whiteboard"]})
  end

  it 'lists each word and who says it' do

    input = <<-JSON
      {"Gaylord Mayert":["envisioneer"]}
    JSON

    list = WordCloud.new
    returned_data = list.words_names(input)

    expect(returned_data).to eq({"envisioneer" => ["Gaylord Mayert"]})
  end
end
