require 'greeter'

describe Greeter do

  let(:kernel_double) { double :kernel}

  describe '#greet' do
    it 'asks for name and greets' do
      allow(kernel_double).to receive(:gets).and_return("Jimmy")
      expect { subject.greet(kernel_double) }.to output("What is your name?\nHello, Jimmy\n").to_stdout
    end
  end
end
