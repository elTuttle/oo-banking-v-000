class Transfer
  attr_reader :sender,:receiver,:status,:transfer_amount

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount

  end
end
