class Money
  def initialize(value)
    @value = value
  end
end

class Wallet
  attr_reader :balance

  def initialize(balance)
    self.balance = balance
  end

  def take_money(value)
    self.balance -= value
    return Money.new(value)
  end

  def loose_money(value)
    self.balance -= value
    puts "I lost #{value}$ :("
  end

  private

  def balance=(value)
    if value < 0
      raise "Balance can't be negative!"
    end
    @balance = value
  end
end

wallet = Wallet.new(-200)
# wallet.take_money(200)

# puts wallet.balance
# wallet.loose_money(200)
