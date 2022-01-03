defmodule GreeetingServiceTest do
  use ExUnit.Case
  doctest GreeetingService

  describe "When a greeting message is requested" do
    test "Then the system will reply with \"Hello my friend!\"" do
      assert GreeetingService.greet() == "Then the system will reply with \"Hello my friend!\""
    end
  end
end
