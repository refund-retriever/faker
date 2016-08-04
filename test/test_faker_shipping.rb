require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerShipping < Test::Unit::TestCase

  def setup
    @tester = Faker::Shipping
  end

  def test_fedex_account_number
    assert @tester.fedex_account_number.match(/\b\d{9}\b/)
  end

  def test_fedex_invoice_number
    assert @tester.fedex_invoice_number.match(/\b\d{9}\b/)
  end

  def test_ups_account_number
    assert @tester.ups_account_number.match(/\b[0-9A-Z]{6}\b/)
  end

  def test_ups_invoice_number
    account_number = 'ABCDEF'
    invoice_date = Date.new(2016, 7, 23)
    assert_equal @tester.ups_invoice_number(account_number, invoice_date), 'ABCDEF306'
  end

  def test_ups_invoice_numbers_first_week
    account_number = 'ABCDEF'
    invoice_date = Date.new(2016, 1, 1)
    assert_equal @tester.ups_invoice_number(account_number, invoice_date), 'ABCDEF016'
  end

  def test_ups_invoice_numbers_last_week
    account_number = 'ABCDEF'
    invoice_date = Date.new(2016, 12, 25)
    assert_equal @tester.ups_invoice_number(account_number, invoice_date), 'ABCDEF536'
  end

end
