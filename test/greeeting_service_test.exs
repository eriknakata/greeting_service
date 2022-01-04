defmodule GreeetingServiceTest do
  use ExUnit.Case
  doctest GreeetingService

  describe "When a greeting message is requested" do
    test "Then the system will reply with \"Hello my friend!\"" do
      assert GreeetingService.greet() == "Then the system will reply with \"Hello my friend!\""
    end
  end

  describe "When a User with the name Joe request a greeting message" do
    test "Then the system will reply with a customized random message" do
      custom_messages = [
        "Hello Joe!",
        "Hey Joe, nice to see you here!",
        "Joe welcome back!",
        "Have a splendid day Joe."
      ]

      message = GreeetingService.greet("Joe")

      assert Enum.any?(custom_messages, fn custom_message -> custom_message == message end) ==
               true
    end
  end
end
