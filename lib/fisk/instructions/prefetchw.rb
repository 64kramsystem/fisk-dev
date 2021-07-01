# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction PREFETCHW
    forms = []
    operands = []
    encodings = []
    # prefetchw: m8
    operands << OPERAND_TYPES[4]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0x0F, 0
        add_opcode buffer, 0x0D, 0
        add_modrm(buffer, operands,
              0,
              1,
              operands[0].value)
      end

      def bytesize; 3; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    PREFETCHW = Fisk::Machine::Instruction.new("PREFETCHW", forms)
  end
end
