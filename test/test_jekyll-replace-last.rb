require 'minitest/autorun'
require 'jekyll-replace-last'

class ReplaceLastTest < Minitest::Test
  include Jekyll::ReplaceLastFilter
  def test_nbsp
    assert_equal "only one non-breaking space, and at the very&nbsp;end",
      replace_last("only one non-breaking space, and at the very end", " ", "&nbsp;")
  end
end