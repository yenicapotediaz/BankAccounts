
require_relative 'account'
require_relative 'savings_account'
require_relative 'checking_account'

#Testing how this runs

#create all accounts from CSV doc
all_accounts = Bank::Account.all

#outputs a hash with all the accounts
p all_accounts

#to see only one accounts, include key
p all_accounts[1212]

#creating a checking account with all values from CSV file
all_checkings = Bank::CheckingAccount.all

#check balance for one specific account
p all_checkings[15156].balance

#withdraw with check
p all_checkings[15156].withdraw_using_check(345)

#check balance and @check instance
p all_checkings[15156]

#withdraw using superclass method and make sure fee is taken out
p all_checkings[15156].withdraw(427)

#running savings account
sav = Bank::SavingsAccount.all
one_acc = sav[15156]
puts one_acc.add_interest(0.25)
puts one_acc.withdraw(430)
puts one_acc.withdraw(3478)
