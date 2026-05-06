defmodule EmberMoveUciMark.DomainReviewTest do
  use ExUnit.Case

  test "domain review lane" do
    item = %{signal: 64, slack: 53, drag: 17, confidence: 87}
    assert EmberMoveUciMark.DomainReview.score(item) == 217
    assert EmberMoveUciMark.DomainReview.lane(item) == "ship"
  end
end
