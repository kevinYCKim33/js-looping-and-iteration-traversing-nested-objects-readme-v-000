def deep_iterator(target)
  target.each_with_index do |elem, index|
    if elem.class == Array
      deep_iterator(elem)
    else
      puts elem
    end
  end
end

def iterate(h)
  h.each do |k,v|
    # If v is nil, an array is being iterated and the value is k.
    # If v is not nil, a hash is being iterated and the value is v.

    value = v || k

    if value.is_a?(Hash) || value.is_a?(Array)
      iterate(value)
    else
      puts v
    end
  end
end
