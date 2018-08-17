class EmailClient
  def initialize(message = Message.new)
    @message = message
  end

  def message
    @message
  end
end

class Message
  def send(to, body)
    puts "#{to},#{body}"
    # Imagine I'm sending an email
  end
end


class SayHelloToMyLittleFriend

  def initialize(email = EmailClient.new)
    @email = email
  end

  def run
    email = @email
    email.message.send(
      "friend@example.com",
      "HELLO!"
    )
  end
end
