class Transfer

attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount)
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = "pending"
end

def valid?
  if self.sender.valid? && self.receiver.valid?
    true
  else false
  end
end

def execute_transaction
  if self.valid?
    self.sender.balance -= self.amount
    self.receiver.balance += self.amount
  else "reject"
  end
end

def reverse_transfer


end

end
