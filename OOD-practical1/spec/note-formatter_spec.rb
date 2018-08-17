require 'note-formatter'

describe NoteFormatter do

  describe '#{format}' do
    it 'returns a string' do
      note_double = double :note, title: "Title", body: "Body"
      expect(subject.format(note_double)).to eq "Title: #{note_double.title}\n#{note_double.body}"
    end
  end

end
