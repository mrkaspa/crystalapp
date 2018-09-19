require "./crystalapp/*"

abstract class Salute
  abstract def hello : String
end

module Crystalapp
  class Salutator < Salute
    property :name

    def initialize(@name : String?)
    end

    def hello
      if name = @name # validates nil
        cad = name + name
        puts "Hola #{cad}"
      end
    end
  end
end

def main(mod : Salute)
  mod.hello
end

main(Crystalapp::Salutator.new("Demo"))
