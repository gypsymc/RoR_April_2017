# class BankAccount
#   attr_reader :account_number, :checking, :saving
#
#   @@bank_accounts = 0
#
#   def initialize
#     @account_number = create_account
#     @checking = 0
#     @saving = 0
#     @@bank_accounts += 1
#     # not accessible since we do not have a reader for it
#     @interest_rate = 0.01
#   end
#
#   def deposit(account, amount)
#     if account.downcase == "checking"
#       @checking += amount
#     else
#       @saving += amount
#     end
#   end
#
#   def withdrawal(account, amount)
#     if account.downcase == "checking"
#       if @checking - amount < 0
#         raise "Insufficient Funds, you have #{@checking} in this account"
#       else
#         @checking -= amount
#       end
#     else
#       if @saving - amount < 0
#         raise "Insufficient Funds, you have #{@saving} in this account"
#       else
#         @saving -= amount
#       end
#     end
#   end
#
#   def total
#     "Checking Balance: #{@checking}\nSaving Balance: #{@saving}\nTotal Balance: #{@checking + @saving}"
#   end
#
#   def account_information
#     "Account Number: #{@account_number}\nInterest Rate: #{@interest_rate}\n#{self.total}"
#   end
#
#   def self.number_of_accounts
#     @@bank_accounts
#   end
#
#   private
#     def create_account
#       Array.new(10).map { rand(1..9) }.join
#     end
# end

class BankAccount
   @@accounts = 0

   attr_reader :name, :accountnum, :bal_Check, :bal_Save, :interest_Rate

	def initialize(name)
		@name = name
		@bal_Check = 25
		@bal_Save = 1
		generateAccountNumber
		@interest_Rate = 1.125
		@@accounts += 1
	end

	def deposit(account, amount)
		if account == "checking"
			@bal_Check += amount
			puts "$#{amount} deposited into #{account}, current balance $#{@bal_Check}"
		elsif account == "savings"
			@bal_Save += amount
			puts "$#{amount} deposited into #{account}, current balance $#{@bal_Save}"
		end
		self
	end

	def withdraw(account, amount)
		if account == "checking"
			if @bal_Check - amount < 1
				puts "You do not have sufficient funds, current balance $#{@bal_Check}"
        return "You do not have sufficient funds, current balance $#{@bal_Check}"
			else
				@bal_Check -= amount
				puts "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Check}"
        return "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Check}"
			end
		elsif account == "savings"
			if @bal_Save - amount < 1
				puts "You do not have sufficient funds, current balance $#{@bal_Save}"
			else
				@bal_Save -= amount
				puts "$#{amount} widthdrawn from #{account}, current balance $#{@bal_Save}"
			end
		end
		self
	end

	def account_information
		puts "Hello #{@name} ( Account ##{@accountnum} )"
		puts "Your current Checking account balance is $#{bal_Check}"
		puts "Your current Savings account balance is $#{bal_Save}"
		puts "Your total available balace is $#{bal_Check + bal_Save}"
		puts
		puts "Current Interest rate is #{@interest_Rate}%"
		self
	end

	def balance(account)
		if account == "checking"
			puts "Your current Checking account balance is $#{@bal_Check}"
      return "Your current Checking account balance is $#{@bal_Check}"
		elsif account == "savings"
			puts "Your current Savings account balance is $#{@bal_Save}"
		elsif account == "total"
			puts "Your current deposit balance is $#{@bal_Save + @bal_Check}"
      return "Your current deposit balance is $#{@bal_Save + @bal_Check}"
		end
		self
	end

	private
	def generateAccountNumber	# 8 digits long
		@accountnum = ( (0..9).to_a.shuffle[0,8].join ).to_i
	end

end

# bryan = BankAccount.new("Bryan")    #.deposit("checking", 40).balance("total").withdraw("checking", 10).account_information()
# bryan.bal_Check = 1000	#fails with error





# bank = BankAccount.new(1_000, 2_000)
# bank.get_acct_num
# puts bank.acct_balance
# puts bank.savings_balance
# puts bank.deposit("Savings", 100).acct_balance
#
# puts bank.withdraw("Checking", 300).acct_balance
#
# bank.total_in_bank
#
# bank.account_information
