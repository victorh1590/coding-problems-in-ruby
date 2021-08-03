require 'string_manipulation'

describe StringManipulation do
  let(:hello) { "Hello!" }
  let(:hello_world) { "Hello World!" }
  let(:terminator) { "I'll be back..." }

  context "When given a string" do
    before do
      subject = StringManipulation.new
    end

    it "should count the number of duplicate characters." do
      expect(subject.count_characters(hello)).to eq(1)
      expect(subject.count_characters(hello_world)).to eq(2)
      expect(subject.count_characters(terminator)).to eq(3)
    end

    
  end
end