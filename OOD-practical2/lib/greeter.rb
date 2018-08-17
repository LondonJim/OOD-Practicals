class Greeter

  def greet (kernel = Kernel)
    puts "What is your name?"
    name = kernel.gets.chomp
    puts "Hello, #{name}"
  end

end
