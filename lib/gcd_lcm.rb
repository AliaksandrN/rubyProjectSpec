
def gcd(a, b)
  b.zero? ? a : gcd(b, a % b)
end

def lcm(a, b)
  a.zero? || b.zero? ? 0 : a * b / gcd(a, b)
end
