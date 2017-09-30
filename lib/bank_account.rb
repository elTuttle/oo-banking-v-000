class BankAccount
  attr_reader :name, :status, :balance

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(num)
    @balance += num
  end
end
