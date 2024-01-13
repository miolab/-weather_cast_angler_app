defmodule WeatherCastAngle.Services.MoonStatusCalculatorTest do
  use ExUnit.Case

  describe "Calculates the moon phase and returns it's notation." do
    @tokyo_latitude 35.689499
    @tokyo_longitude 139.691711

    test "Can return new moon." do
      actual =
        WeatherCastAngle.Services.MoonStatusCalculator.get_moon_phase(
          "2024-01-11",
          @tokyo_latitude,
          @tokyo_longitude
        )

      assert actual == "new-moon"
    end

    test "Can return full moon." do
      actual =
        WeatherCastAngle.Services.MoonStatusCalculator.get_moon_phase(
          "2024-01-26",
          @tokyo_latitude,
          @tokyo_longitude
        )

      assert actual == "full-moon"
    end

    test "If it is neither a full nor a new moon, returns a empty character." do
      actual =
        WeatherCastAngle.Services.MoonStatusCalculator.get_moon_phase(
          "2024-01-18",
          @tokyo_latitude,
          @tokyo_longitude
        )

      assert actual == ""
    end
  end
end
