class CashRegister

    attr_reader :total
    attr_reader :discount
    attr_accessor :item
    attr_accessor :price
    attr_accessor :quantity
    attr_accessor :items
  
  
    def initialize(discount = 0)
      @discount = discount
      @total = 0
      @items = []
    end
  
    def total=(total) 
      @total = total
    end
  
    def add_item(name, price, quantity = 1)
      self.item = name
      self.price = price
      self.quantity = quantity
      self.quantity.times {|i | self.items.push(self.item)}
      # self.items.push("#{self.item}"* self.quantity)
      @total  += self.price * self.quantity
    end
  
    def apply_discount
      if @discount !=  0
        @total = @total * (100 - @discount)/100
  
         "After the discount, the total comes to $#{@total}."
      else
        "There is no discount to apply."
      end
  
    end
  
    def void_last_transaction
      @total -= self.price * self.quantity
    end
  end
