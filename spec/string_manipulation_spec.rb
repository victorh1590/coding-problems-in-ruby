require 'string_manipulation'

describe StringManipulation do
  let(:subject) { StringManipulation.new }
  let(:hello) { "Hello!" }
  let(:hello_world) { "Hello World!" }
  let(:terminator) { "I'll be back..." }
  let(:whitespaces) { "   " }
  let(:echo1) { "eeeeccchho" }
  let(:echo2) { "eeecchoooo" }
  let(:array_input) { [1,2,3] }

  context "When not given a string" do
    it "should raise a TypeError telling what type was given." do
      expect { subject.count_characters(array_input) }.to raise_error(TypeError, "Expected String but was given Array.")
      expect { subject.generate_histogram(hello) }.to raise_error(TypeError, "Expected Array but was given String.")
      expect { subject.first_char_not_repeated(array_input) }.to raise_error(TypeError, "Expected String but was given Array.")
    end
  end

  context "When given a string" do
    it "should count the number of duplicate characters." do
      expect(subject.count_characters(hello)).to eq(1)
      expect(subject.count_characters(hello_world)).to eq(2)
      expect(subject.count_characters(terminator)).to eq(4)
      expect(subject.count_characters(whitespaces)).to eq(1)
    end

    it "should return the first character not repeated in a srting." do
      expect(subject.first_char_not_repeated(hello)).to eq("H")
      expect(subject.first_char_not_repeated(hello_world)).to eq("H")
      expect(subject.first_char_not_repeated(terminator)).to eq("I")
      expect(subject.first_char_not_repeated(echo1)).to eq("o")
      expect(subject.first_char_not_repeated(echo2)).to eq("h")
      expect(subject.first_char_not_repeated(whitespaces)).to eq(nil)
    end
  end
end