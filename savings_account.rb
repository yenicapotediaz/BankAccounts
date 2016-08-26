require_relative 'account'

module Bank
  class SavingsAccount < Account
    attr_accessor :savings_bal, :interest

    def initialize(savings_bal)
      @interest = interest
      @savings_bal = savings_bal.to_f
      # super()
      # while @savings_bal < 10
      #   puts" Cannot open an account with an amount lower than $10"
      # end
    end

    def balance
      @savings_bal = savings_bal
      return " Your balance is $#{@savings_bal}"
    end



    def withdraw(amount)
      @savings_bal = (@savings_bal - amount) - 2
      while @savings_bal < 10
        puts "Error: Cannot withdraw $#{amount}. Your account must have at least $10."
        @savings_bal = (@savings_bal + amount) + 2
      end
      return "Your balance is $#{@savings_bal}."
    end

    def deposit(amount)
      @savings_bal = @saving_bal + amount
      return "You balance is $#{@saving_bal}"
    end

    def add_interest(percent)
      @interest = @savings_bal * percent.to_f
      @savings_bal = @savings_bal + @interest
      return "The interest is $#{@interest}"
    end
  end
end


#Testing testing 123
sav = Bank::SavingsAccount.new(23.40)
puts sav.balance
puts sav.add_interest(0.25)
puts sav.withdraw(23)
puts sav.cat_lover("Y")
