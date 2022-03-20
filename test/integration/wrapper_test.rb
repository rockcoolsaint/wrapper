require "test_helper"

class WrapperTest < ActionDispatch::IntegrationTest
  test "Submit button success" do
    post root_url, params: {
      columns: "4",
      content: "one two three four five six seven eight nine"
    }
    assert_response(:success)
  end
end
