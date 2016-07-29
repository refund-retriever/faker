require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerShipping < Test::Unit::TestCase

  def setup
    @tester = Faker::Shipping
  end

  def test_fedex_account_number
    assert @tester.fedex_account_number.match(/\b\d{9}\b/)
  end

  def test_ups_account_number
    assert @tester.ups_account_number.match(/\b[0-9A-Z]{6}\b/)
  end

end
