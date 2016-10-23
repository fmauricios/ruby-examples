module MonkeyPatch
  refine String do
    def length
      50
    end
  end
end

class TestMonkeyPatch
  using MonkeyPatch

  def string_length(string)
    string.length
  end
end

string = "Mauricio"
p string.length

p TestMonkeyPatch.new.string_length(string)
