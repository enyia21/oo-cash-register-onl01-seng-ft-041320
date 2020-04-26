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
    titles << title
    prices << price
    quantities << quantity
    
    self.total = self.total + (price * quantity)
    
    
  end
  # def describe
  #   @total = 0
  # end

end
