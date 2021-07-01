# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction PFRSQRT
    forms = []
    operands = []
    encodings = []
    # pfrsqrt: mm, mm
    operands << OPERAND_TYPES[35]
    operands << OPERAND_TYPES[36]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              (operands[0].value >> 3),
              0,
              (operands[1].value >> 3))
        add_opcode buffer, 0x0F, 0
        add_opcode buffer, 0x0F, 0
        add_modrm(buffer, operands,
              3,
              operands[0].value,
              operands[1].value)
        add_opcode buffer, 0x97, 0
      end

      def bytesize; 4; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    operands = []
    encodings = []
    # pfrsqrt: mm, m64
    operands << OPERAND_TYPES[35]
    operands << OPERAND_TYPES[18]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              (operands[0].value >> 3),
              (operands[1].value >> 3),
              (operands[1].value >> 3))
        add_opcode buffer, 0x0F, 0
        add_opcode buffer, 0x0F, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
        add_opcode buffer, 0x97, 0
      end

      def bytesize; 4; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    PFRSQRT = Fisk::Machine::Instruction.new("PFRSQRT", forms)
  end
end
