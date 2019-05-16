# display menu for user- add to cart, display items in cart, remove item 
 #from cart, total cost 
# create array of hashes for grocery store list
require 'pry'

@items = [
  { item: "apple", cost: 1 }, 
  { item: "orange", cost: 2 },
  { item: "bread", cost: 3 },
  { item: "milk", cost: 2 } 
]

@cart = Array.new()
@checkout = Array.new()
def options
  case @input
  when "1"
    puts "Select an item"
    puts @items
    item_input = gets.chomp
    if item_input == "apple"
      @cart << @items[0][:item]
      @checkout << @items[0][:cost]
      menu
    elsif item_input == "orange"
      @cart << @items[1][:item]
      @checkout << @items[1][:cost]
      menu
    elsif item_input == "bread"
      @cart << @items[2][:item]
      @checkout << @items[2][:cost]
      menu
    elsif item_input == "milk"
      @cart << @items[3][:item]   
      @checkout << @items[3][:cost]
      menu
    end
  when "2"
    p @cart
    menu
  when "3"
    puts "Your cart"
    p @cart
    puts "what item do you want to remove?"
    delete_item = gets.chomp
    if delete_item == "apple"
      @cart.delete("apple")
      @checkout.delete(1)
      menu
    elsif delete_item == "orange"
      @cart.delete("orange")
      @checkout.delete(2)
      menu
    elsif delete_item == "bread"
      @cart.delete("bread")
      @checkout.delete(3)
      menu
    elsif delete_item == "milk"
      @cart.delete("milk")
      @checkout.delete(2)
      menu
    end
  when "4"
    puts "Your Total is: $#{@checkout.sum}"
    menu
  end
end

def menu
  puts "1) add to cart"
  puts "2) display items in cart"
  puts "3) remove item from cart"
  puts "4) total cost"
  puts "5) exit"
  @input = gets.chomp
  options
end
  
  menu





