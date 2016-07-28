module Faker
  class Shipping < Base
    flexible :shipping

    class << self

      def fedex_account_number
        Faker::Number.number(9).to_s
      end

      def ups_account_number

      end

      def fedex_invoice_number

      end

      def ups_invoice_number

      end

      def fedex_tracking_number

      end

      def ups_tracking_number

      end

    private



    end
  end
end
