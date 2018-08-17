require 'EmailClient'

describe EmailClient do
  it 'returns the initialized variable with #message' do
    email_client = EmailClient.new("test")
    expect(email_client.message).to eq "test"
  end
end

describe Message do
  it '#sends takes two arguments and outputs them to terminal as a string' do
    expect { subject.send('to', 'body') }.to output("to,body\n").to_stdout
  end
end

describe SayHelloToMyLittleFriend do
  it 'return a message that is to be sent' do
    # message_double = double :message
    # message_klass_double = double :Message, send: ("")
    # email_double = double :EmailClient, new: message_double
    # expect(subject.run).to eq "friend@example.com,HELLO!"
  end
end
