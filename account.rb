module Bank
  class Account
    attr_accessor :name, :id, :initial_bal, :balance, :withdraw

    def initialize(name, id, initial_bal)
      @name = name
      @id = id
      @initial_bal = initial_bal
      @balance = initial_bal
      @withdraw
    end

    def initial_bal
      return "Welcome #{@name}! Your initial balance is #{@initial_bal}"
    end

    def balance
      return "Your balance is #{@balance}."
    end

    def withdraw(amount)
      @balance = @balance - amount
      while @balance < 0
        puts "Error: You cannot withdraw more than your current balance."
        @balance = @balance + amount
      end
      return "Your balance is #{@balance}."
    end

    def deposit(amount)
      @balance = @balance + amount
      return "Your balance is #{@balance}."
    end
  end
end
