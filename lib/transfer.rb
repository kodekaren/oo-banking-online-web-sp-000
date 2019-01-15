class Transfer
attr_accessor :sender, :receiver, :status, :amount
attr_reader :account
  def initialize(sender,receiver,amount)
  @sender = sender
  @receiver = receiver
  @status = "pending"
  @amount = amount
end

def valid?
sender.valid? && receiver.valid? && balance < amount
end

def execute_transaction
if sender.balance > amount
sender.balance = balance-amount
receiver.balance = balance+ amount
status = "complete"
else
puts "Transaction rejected. Please check your account balance."
status = "rejected"
end
end

def reverse_transfer

end
end
  