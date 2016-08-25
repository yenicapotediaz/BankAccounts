require 'account'
class CheckingAccount < Account

  def initialize

  end

  def withdraw(amount)
    @balance = (@balance - amount) - 1
    while @balance < 10
      puts "Error: Your account must have at least $10."
      @balance = (@balance + amount) + 1
    end
    return "Your balance is $#{@balance}."
  end

  def withdraw_using_check(amount)
    @balance =
    while @balance < -10
      puts "Error: Your account cannot go under -$10.00"
    if check > 3
      @balance = @balance - 2
      puts "You've used your 3 free checks per month, you will now be charged $2 per check transaction."
    end

    check += 1

end
