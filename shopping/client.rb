class Client
  attr_accessor :list
  attr_reader :money, :name, :bag

  def initialize(name, money)
    @name = name
    @money = money
    @bag = []
    @list = []
  end

  def perform_shopping(shop)
    while product_name = list.pop
      product = shop.take(product_name)
      bag << product
    end
    true
  end
end
