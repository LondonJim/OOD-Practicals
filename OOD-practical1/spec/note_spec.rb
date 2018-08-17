require "note"

describe Note do

  describe '#display' do
    it "returns a string" do
      formatter_double = double :formatter, format: "This is a note"
      note = Note.new("Title", "Body", formatter_double)
      expect(note.display).to eq "This is a note"
    end
  end

end
