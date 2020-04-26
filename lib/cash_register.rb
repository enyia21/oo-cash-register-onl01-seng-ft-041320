class CashRegister

  attr_accessor :discount, :total, :last_transation

  # @titles = Array.new

  def initialize(discount=0)
    @total = 0
    @items = []
    @prices = []
    @quantities = Array.new

    self.discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    # self.last_transation(title, price, quantity)
    @quantities << quantity
    while quanity > 0
      @items.push(title)
      quantity--
    end
    @prices << price
    self.total = self.total + (price * quantity)
    # @titles << title
  end

  # def last_transation(title, price, quantity)
  #   @titles << title
  #   @prices << price
  #   @quantities  << quantity
  # end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (100 - self.discount) / 100.0
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  def items
    @items
  end
  def void_last_transaction

    self.total = self.total - (self.quantities.last)*(self.prices.last)
  end
end
#
