require 'diary'

describe Diary do

  let(:entry_double) { double :entry_double, title: 'title', body: 'body' }
  let(:entry_double_two) { double :entry_double_two, title: 'title2', body: 'body2' }
  let(:entry_class_double) { double :entry_class_double }
  subject { described_class.new(entry_class_double) }


  describe '#add' do
    it 'adds new class to array' do
      allow(entry_class_double).to receive(:new).and_return(entry_double)
      expect(subject.add("title", "body")).to eq [entry_double]
    end
  end

  describe '#index' do
     it 'joins titles together' do
       allow(entry_class_double).to receive(:new).and_return(entry_double)
       subject.add(entry_double.title, entry_double.body)
       allow(entry_class_double).to receive(:new).and_return(entry_double_two)
       subject.add(entry_double_two.title, entry_double_two.body)
       expect(subject.index).to eq "title\ntitle2"
     end
   end

end

describe Entry do
  subject { described_class.new('title', 'body') }

  it 'stores a title and a body' do
    expect(subject.title).to eq 'title'
    expect(subject.body).to eq 'body'
  end

end
