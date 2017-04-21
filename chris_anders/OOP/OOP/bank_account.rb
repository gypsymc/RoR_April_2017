class BankAccount

	@@total_accounts = 0

	attr_reader :acct_balance, :savings_balance

	def initialize(checking_balance, savings_balance)
		@acct_balance = checking_balance
		@savings_balance = savings_balance
		@@total_accounts += 1
	end
	def get_acct_num
		puts generate_account_num
	end
	def deposit(acct_type, dollars)
		if acct_type == "Savings"
			@savings_balance += dollars
		elsif acct_type == "Checking"
			@acct_balance += dollars
		else
			puts "You don't have that kind of account"
		end
		return self
	end

	def withdraw(acct_type, dollars)
		if acct_type == "Savings"
			if @savings_balance >= dollars
				@savings_balance -= dollars
			else
				puts "You have insufficient funds"
			end
		elsif acct_type == "Checking"
			if @acct_balance >= dollars
				@acct_balance -= dollars
			else
				puts "You have insufficient funds"
			end
		else
			puts "You don't have that kind of account"
		end
		return self
	end

	def total_in_bank
		puts "Bank total: #{@acct_balance + @savings_balance}"
		return self
	end

	def account_information
		puts "Account Number: #{@acct_num}"
		puts "Total Money in Bank: #{@acct_balance + @savings_balance}"
		puts "Checking Account Balance: #{@acct_balance}"
		puts "Savings Account Balance: #{@savings_balance}"
		puts "Interest Rate: #{interest_rate}"
	end

	private

	def generate_account_num
		@acct_num = 10_000_000 + Random.rand(89_999_999)
		return @acct_num
	end

	def interest_rate
		@interest_rate = 0.03
		return @interest_rate
	end

end

bank = BankAccount.new(1_000, 2_000)
bank.get_acct_num
puts bank.acct_balance
puts bank.savings_balance
puts bank.deposit("Savings", 100).acct_balance

puts bank.withdraw("Checking", 300).acct_balance

bank.total_in_bank

bank.account_information
