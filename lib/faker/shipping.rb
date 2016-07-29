module Faker
  class Shipping < Base
    flexible :shipping

    class << self



      def fedex_account_number
        Faker::Number.number(9).to_s
      end

      def ups_account_number
        Faker::Lorem.characters(6).upcase
      end

      def fedex_invoice_number
        Faker::Number.number(9).to_s
      end

      def ups_invoice_number(account_number, invoice_date)
        account_number + ups_invoice_date_code(invoice_date)
      end

      def fedex_tracking_number

      end

      def ups_tracking_number

      end

    private

      def ups_invoice_date_code(invoice_date)
        jan_first = ::Date.new(invoice_date.year, 1, 1)
        first_invoice_date = jan_first+(6-jan_first.wday)
        invoice_date_saturday = invoice_date + (6-invoice_date.wday)
        week_number = ((invoice_date_saturday - first_invoice_date).to_i / 7) + 1
        week_number.to_s + invoice_date.year.to_s[-1..-1]
      end

    end
  end
end
