class EmailParser
  attr_accessor :address
  
  def initialize(address)
    @address = address
    @addresses = Array.new
    @addresses << @address
  end
  
  def parse
    @addresses.map { |addr|
      addr.split(/[, ]/)
    }.flatten.reject { |e| 
      e.empty? 
    }.uniq
  end
end
