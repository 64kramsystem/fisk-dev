# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction VGATHERPF1QPD
    forms = []
    operands = []
    encodings = []
    # vgatherpf1qpd: vm64z{k}
    operands << OPERAND_TYPES[91]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_EVEX buffer, operands
        add_opcode buffer, 0xC7, 0
        add_modrm(buffer, operands,
              0,
              2,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    VGATHERPF1QPD = Instruction.new("VGATHERPF1QPD", forms)
  end
end
