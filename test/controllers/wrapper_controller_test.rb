require "./test/test_helper"

class WrapperTest < ActionDispatch::IntegrationTest
  def test_valid_params
    wrapper = Wrapper.new
    wrap_1 = wrapper.wrap("one two three four five six seven eight nine", 3)
    wrap_2 = wrapper.wrap("one two three four five six seven eight nine", 4)
    assert_equal(wrap_1, "one two three\nfour five six\nseven eight nine\n")
    assert_equal(wrap_2, "one two three four\nfive six seven eight\nnine")
  end

  def test_invalid_params
    wrapper = Wrapper.new
    wrap_1 = wrapper.wrap("one two three four five six seven eight nine", "3")
    wrap_2 = wrapper.wrap("one two three four five six seven eight nine", "4")
    assert_equal(wrap_1, "invalid parameters, please ensure you supply valid columns and content")
    assert_equal(wrap_2, "invalid parameters, please ensure you supply valid columns and content")
  end
end
