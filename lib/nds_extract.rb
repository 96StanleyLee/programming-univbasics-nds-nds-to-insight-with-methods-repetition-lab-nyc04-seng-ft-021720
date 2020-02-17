$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'


def directors_totals(source)
hash = {} 

i = 0 
total = 0 

while i < source.length do 
  name = source[i]
  total = gross_for_director(name)
  hash[name[:name]] = total 
  total = 0 
  i += 1 
end 
hash
end 

def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end

def list_of_directors(source)
  # Write this implementation
  array = []
  i = 0 
  while i < source.length do 
    array.push(source[i][:name])
    i += 1 
  end 
  array
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  
  
  
  
   i = 0 
  total = 0 
  names = list_of_directors(source)
  earnings_hash = directors_totals(source)
  while i < source.length do 
      x = names[i]
      total += earnings_hash[x]
      i += 1 
  end 
total
end
