class CashRegister

  attr_accessor :discount, :total, :last_transation

  @title = ""
  @price = 0
  @quantity = 0

  def initialize(discount=0)
    @total = 0
    self.discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)
    self.last_transation(title, price, quantity)
    self.total = self.total + (price * quantity)
    # @titles << title
  end

  def last_transation(title, price, quantity)
    @title = title
    @price = price
    @quantity = quantity
  end

  def apply_discount
    if discount == 0
      "There is no discount to apply."
    else
      self.total = self.total * (100 - self.discount) / 100.0
      "After the discount, the total comes to $#{self.total.to_i}."
    end
  end
  #
  # def items
  #
  # end
  # def describe
  #   @total = 0
  # end

end
#
