class BankAccount
    attr_reader :name, :status
    attr_accessor :balance, :status

    def initialize(name)
        @name = name
        @balance = 1000
        @status = "open"
    end

    def deposit(deposit_amount)
        self.balance += deposit_amount
    end

    def display_balance
        "Your balance is $#{balance}."
    end

    

    def valid?
        balance > 0 && status == "open"
    end

    def close_account
        self.status = "closed"
    end
end

# class BankAccount
#     attr_reader :name
#     attr_accessor :balance, :status
#     def initialize(name)
#         @name = name
#         @balance = 1000
#         @status = "open"
#     end
#     def deposit(amount)
#         self.balance += amount
#     end
#     def display_balance
#         "Your balance is $#{balance}."
#     end
#     def close_account
#         self.status = "closed"
#     end
#     def valid?
#         if @balance <= 0
#             false
#         elsif @status == "closed"
#             false
#         else
#             true
#     end
#     end
#     end