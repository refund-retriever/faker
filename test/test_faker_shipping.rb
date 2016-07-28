require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerShipping < Test::Unit::TestCase

  def setup
    @tester = Faker::Shipping
  end

  def test_fedex_account_number
    assert @tester.fedex_account_number.match(/\b\d{9}\b/)
  end

end
