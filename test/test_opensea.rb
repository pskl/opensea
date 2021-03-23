require 'test/unit'
require 'opensea'

class OpenSea < Test::Unit::TestCase
  def test_english_hello
    assert_equal "hello world", OpenSea.hi("english")
  end

  def test_any_hello
    assert_equal "hello world", OpenSea.hi("ruby")
  end

  def test_spanish_hello
    assert_equal "opensea mundo", OpenSea.hi("spanish")
  end
end
