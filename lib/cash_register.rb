
class CashRegister

attr_accessor :discount, :total, :price, :title, :last_item, :items

def initialize(discount = nil, total=0, items =[])
    @discount = discount
    @total = total
    @items=items
end

def add_item(title, price, quantity=1)
    @price = price
    @title = title
    self.last_item = price*quantity
    self.total += price*quantity
end

def apply_discount
    if @discount
        perc_discount = self.discount / 100.0
        self.total = self.total - (self.total * perc_discount).to_i
        "After the discount, the total comes to $#{self.total}."
    else
        "There is no discount to apply."
    end
end

def items(item, price)
    self.items << item
    items
end

end