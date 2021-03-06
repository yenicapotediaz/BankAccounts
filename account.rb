require 'csv'
module Bank
  class Account
    attr_accessor :id, :balance, :date_created
    MIN_BAL = 0
    FEE = 0
    def initialize(id, balance, date_created)
      @id = id
      @balance = balance / 100.00
      @date_created = date_created    #.strftime("%b %d, %Y")

      while balance < 0
        raise ArgumentError, "Balance cannot be negative"
      end
    end

    def self.all
      info = {}
      CSV.read('accounts.csv').each do |line|
        id = line[0].to_i
        balance = line[1].to_i
        date_created = line[2]
        info[id] = self.new(id, balance, date_created)
      end
      return info
    end

    def self.find(id)
      return self.all[id]
    end

    def balance
      return @balance
    end

    def withdraw(amount)
      @balance = (@balance - amount) - self.class::FEE
      while @balance < self.class::MIN_BAL
        puts "Error: You cannot withdraw more than your current balance!"
        @balance = @balance + amount + self.class::FEE
      end
      return "Your balance is $#{@balance}."
    end

    def deposit(amount)
      @balance = @balance + amount
      return "Your balance is $#{@balance}."
    end
  end
end
