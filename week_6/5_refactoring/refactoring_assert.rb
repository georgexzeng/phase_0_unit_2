def message(actual, expected)
  p "*"*50
  puts "Expected #{expected} but actually got #{actual}"
  p "*"*50
end

def assert_class(actual, expected)
  unless actual == expected 
    message(actual, expected)
  end
end

def assert_check_card(actual, expected)
  unless actual == expected
    message(actual, expected)
  end
end