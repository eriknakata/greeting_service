defmodule GreeetingService do
  def greet do
    "Then the system will reply with \"Hello my friend!\""
  end

  def greet(name) when name == "Joe" do
    messages = [
      "Hello %name!",
      "Hey %name, nice to see you here!",
      "%name welcome back!",
      "Have a splendid day %name."
    ]

    Regex.replace(~r{%name}, Enum.random(messages), name)
  end
end
