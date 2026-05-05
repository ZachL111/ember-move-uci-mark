defmodule EmberMoveUciMarkTest do
  use ExUnit.Case

  test "fixture decisions" do
    signal_case_1 = %{demand: 92, capacity: 97, latency: 26, risk: 24, weight: 11}
    assert EmberMoveUciMark.score(signal_case_1) == 166
    assert EmberMoveUciMark.classify(signal_case_1) == "accept"
    signal_case_2 = %{demand: 60, capacity: 73, latency: 10, risk: 21, weight: 10}
    assert EmberMoveUciMark.score(signal_case_2) == 119
    assert EmberMoveUciMark.classify(signal_case_2) == "review"
    signal_case_3 = %{demand: 104, capacity: 77, latency: 14, risk: 18, weight: 9}
    assert EmberMoveUciMark.score(signal_case_3) == 212
    assert EmberMoveUciMark.classify(signal_case_3) == "accept"
  end
end
