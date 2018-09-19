require "./crystalapp/*"

module Crystalapp
  def hello(name : String?)
    if name # validates nil
      cad = name + name
      puts "Hola #{cad}"
    end
  end
end

include Crystalapp

hello("Demo")
hello(nil)
