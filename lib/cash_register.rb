class CashRegister

  attr_accessor :discount, :total :title :price :quantity

  def initialize(discount=0)
    @total = 0
    self.discount = discount
  end

  def total
    @total
  end

  def add_item

  end
  # def describe
  #   @total = 0
  # end

end
