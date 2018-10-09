
def echo(x)
  x
end

def shout(x)
  x.upcase
end

def repeat(x,n=2)
  n.times.collect { x }.join(' ')
end

def start_of_word(s,n)
  s[0,n]
end

def first_word(s)
  s.split.first
end

def titleize(s)
  small_words = %w[on and]
  t = s.split.map { |x|
    LITTLE_WORDS.include?(x) ? x : x.capitalize!
  }
  t.first.capitalize!
  t.join(' ')
end

