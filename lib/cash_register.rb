
class CashRegister

    attr_accessor :discount, :total, :items, :transaction, :last_item

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    
        
    end

    def add_item(title, price, quantity = 1)
      self.total += price * quantity
      quantity.times do 
        items << title
      end
      self.transaction = price * quantity
    end

    def apply_discount
        if discount == 0
        "There is no discount to apply."
        else
            price_discount = self.discount / 100.0
            self.total = self.total - (self.total * price_discount).to_i
            "After the discount, the total comes to $#{self.total}."
        end
    end


    def void_last_transaction
        self.total = self.total - self.transaction
    end
end
