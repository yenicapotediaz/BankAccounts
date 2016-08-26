require_relative 'account'

module Bank
  class CheckingAccount < Account
    attr_accessor :check, :id, :balance, :date_created
    FEE = 1

    def initialize(id, balance, date_created)
      @id = id
      @balance = balance
      @check = 0
      @date_created = date_created
    end

    # def withdraw(amount)
    #   @balance = @balance - 1
    #   super
    # end

    def withdraw_using_check(amount)
      while @balance < -10
        puts "Error: Your account cannot go under -$10.00"
      end

      if @check < 3
        @balance = @balance - amount
      else
        @balance = (@balance - amount) - 2
        puts "You've used your 3 free checks per month, you will now be charged $2 per check transaction."
      end
      @check += 1
      return "Your balance is #{@balance}"
    end

    def reset_checks
      @checks = 0
      return @checks
    end
  end
end
