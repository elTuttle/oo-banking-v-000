class Transfer
  attr_reader :sender,:receiver,:amount
  attr_accessor :status

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
    end
  end

end
