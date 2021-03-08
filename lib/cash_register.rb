class CashRegister
  attr_accessor :total, :price, :discount, :items, :quantity

  def initialize(discount = 0)
    @total = 0
    @price = price
    @quantity = quantity
    @discount = discount
    @items = []
    @transactions = []
  end

  def total
    @total
  end

  def add_item(item, price, quantity = 1)
    @total += (price * quantity)
    @transactions << price
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
    self.total -= (0.01 * @discount * @total).to_i
    "After the discount, the total comes to $#{self.total}."
    else
    "There is no discount to apply."
  end
  end

  def items
    @items
  end

def void_last_transaction
  self.total = @total - @transactions.pop
  if @items = 0
    return 0.0
  end 
end

end
