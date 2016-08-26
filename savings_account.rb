require_relative 'account'

module Bank
  class SavingsAccount < Account
    attr_accessor :interest, :id, :balance, :date_created
    MIN_BAL = 10
    FEE = 2
    def initialize(id, balance, date_created)
      @id = id
      @balance = balance
      @check = 0
      @date_created = date_created
      @interest = 0

      while balance < 10
        raise ArgumentError, "Starting balance cannot be uner $10"
      end
    end

    # def withdraw(amount)
    #
    #   super
    #
    # end

    def add_interest(percent)
      @interest = @balance * percent / 100.00
      @balance = @balance + @interest
      return "The interest is $#{@interest}"
    end
  end
end
