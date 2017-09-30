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

  def display_deposit
    "Your balance is $#{balance}."
  end

  def valid?
    if status == "open" && @balance > 0
      return true
    else
      return false
    end
  end

end
