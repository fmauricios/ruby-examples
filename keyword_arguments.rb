require "pp"

def my_method(**opts)
  return opts[:foo]
end

# With one argument
pp my_method(foo: "baz")

# Without arguments
pp my_method
