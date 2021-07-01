# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction RDTSC
    forms = []
    operands = []
    encodings = []
    # rdtsc: 
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_opcode buffer, 0x0F, 0
        add_opcode buffer, 0x31, 0
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    RDTSC = Fisk::Machine::Instruction.new("RDTSC", forms)
  end
end
