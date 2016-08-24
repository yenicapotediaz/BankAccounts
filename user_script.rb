
require_relative 'account'

id = rand(111111..999999)
lucy = Bank::Account.new("Lucy", id, 235.00)
puts lucy.initial_bal
puts lucy.deposit(25)
puts lucy.withdraw(240.00)
puts lucy.balance
