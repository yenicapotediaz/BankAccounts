require 'account'

class SavingsAccount < Account

  def initialize
    super()
    while @balance < 10
      puts" Cannot open an account with an amount lower than $10"

    end
  end

  def withdraw(amount)
    @balance = (@balance - amount) - 2
    while @balance < 10
      puts "Error: Your account must have at least $10."
      @balance = (@balance + amount) + 2
    end
    return "Your balance is $#{@balance}."
  end

  def add_interest(percent)
    interest = @balance * percent.to_f
    @balance = @balance + interest
    return "The interest is #{interest}"
  end

end
