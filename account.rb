require 'csv'
module Bank
  class Account
    attr_accessor :id, :check_balance, :saving_balance, :date_created

    def initialize(id, check_balance, saving_balance, date_created)
      @id = id
      @check_balance = check_balance/100.00
      sa
      @date_created = date_created    #.strftime("%b %d, %Y")

      while balance <= 0
        puts "Invalid: Cannot create an account without any funds yo!"
      #TODO: figure out the Argument Error stuff...
      end
    end

    # def self.store_acccount_info
    #   info = []
    #   CSV.read('accounts.csv').each do |line|
    #     id = line[0].to_i
    #     balance = line[1].to_i
    #     date_created = line[2]
    #     info << self.new(id, balance, date_created)
    #   end
    #   return info
    # end

    def self.all
      info = {}
      CSV.read('accounts.csv').each do |line|
        id = line[0].to_i
        check_balance = line[1].to_i
        saving_balance = line[2].to_i
        date_created = line[3]
        info[id] = self.new(id, check_balance, saving_balance, date_created)
      end
      return info
    end

    def self.find(id)
      return self.all[id]
    end


    def balance
      return "Your balance is $#{@balance}."
    end

    def withdraw(amount)
      @balance = @balance - amount
      while @balance < 0
        puts "Error: You cannot withdraw more than your current balance."
        @balance = @balance + amount
      end
      return "Your balance is $#{@balance}."
    end

    def deposit(amount)
      @balance = @balance + amount
      return "Your balance is $#{@balance}."
    end
  end
end
