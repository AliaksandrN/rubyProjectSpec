
def gcd(a, b)
  g = b.zero? ? a : gcd(b, a % b)
  g.abs
end

def lcm(a, b)
  return nil if a.kind_of?(Integer) == false || b.kind_of?(Integer) == false 
  l = a.zero? || b.zero? ? 0 : a * b / gcd(a, b)
  l.abs
end
