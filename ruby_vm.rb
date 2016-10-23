require "pp"

pp RubyVM::InstructionSequence.compile("1+1").to_a
