
require_relative 'account'


# all_accounts = Bank::Account.all
# p all_accounts
# puts all_accounts[0].id
# puts lucy.initial_bal
# puts lucy.deposit(25)
# puts lucy.withdraw(13240.00)
# puts lucy.balance
# puts all_accounts.find(15156)
# p all_accounts[1214]
look = Bank::Account.find(15152)

p look

p look.balance
