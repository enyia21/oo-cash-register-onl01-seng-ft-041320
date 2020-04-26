class CashRegister

  attr_accessor :discount, :total

  @titles = []
  @prices = []
  @quantities = []
  def initialize(discount=0)
    @total = 0
    self.discount = discount
  end

  def total
    @total
  end

  def add_item(title, price, quantity=1)

    self.total = self.total + (price * quantity)
    # @titles << title
    # @prices << price
    # @quantities << quantity
  end

  def apply_discount
    if discount == 0 
      puts "There is no discount to apply."
    else
      self.total = self.total * (100 - self.discount) / 100.0
    end
  end



  # def describe
  #   @total = 0
  # end

end
