# Compatibility shim: String#tainted? removed in Ruby 3.2, required by Liquid 4.0.3
class String
  def tainted?; false; end
  def taint; self; end
  def untaint; self; end
end
class Object
  def tainted?; false; end
  def taint; self; end
  def untaint; self; end
end
