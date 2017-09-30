class Transfer
  attr_reader :sender,:receiver
  attr_accessor :status,:amount

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    if @sender.valid? && @receiver.valid?
      return true
    else
      return false
    end
  end

  def execute_transaction
    if @sender.valid?
      @sender.balance -= @amount
      @receiver.balance += @amount
      @status = "complete"
    else
      "Transaction rejected. Please check your account balance."
    end
  end

  def reverse_transfer
    if @status == "complete"
      new_transfer = Transfer.new(@receiver,@sender,@amount)
    end
  end



end
