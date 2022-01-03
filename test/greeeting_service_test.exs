defmodule GreeetingServiceTest do
  use ExUnit.Case
  doctest GreeetingService

  describe "When a greeting message is requested" do
    test "Then the system will reply with \"Hello my friend!\"" do
      assert GreeetingService.greet() == "Then the system will reply with \"Hello my friend!\""
    end
  end

  describe "When a User with the name Joe request a greeting message" do
    test "Then the system will reply with a customized message that says: \"Hello Joe!\"" do
      assert GreeetingService.greet("Joe") == "Hello Joe!"
    end
  end
end
