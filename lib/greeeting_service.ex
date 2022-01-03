defmodule GreeetingService do
  def greet do
    "Then the system will reply with \"Hello my friend!\""
  end

  def greet(name) when name == "Joe" do
    "Hello Joe!"
  end
end
