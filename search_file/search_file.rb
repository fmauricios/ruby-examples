require 'awesome_print'

def search_file(file, term)
  File.open(file) do |file|
    file.each.flat_map(&:split).grep(term)
  end
end

ap search_file("./awesome_file", "Mauricio")
