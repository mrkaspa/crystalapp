struct Int
  def upto(b : Int)
    res = self
    while res <= b
      yield res
      res += 1
    end
  end
end

5.upto(20) do |i|
  puts i
end
