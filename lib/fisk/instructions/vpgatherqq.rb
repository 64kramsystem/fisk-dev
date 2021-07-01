# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction VPGATHERQQ
    forms = []
    operands = []
    encodings = []
    # vpgatherqq: xmm{k}, vm64x
    operands << OPERAND_TYPES[83]
    operands << OPERAND_TYPES[92]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_EVEX buffer, operands
        add_opcode buffer, 0x91, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    operands = []
    encodings = []
    # vpgatherqq: ymm{k}, vm64y
    operands << OPERAND_TYPES[85]
    operands << OPERAND_TYPES[93]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_EVEX buffer, operands
        add_opcode buffer, 0x91, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    operands = []
    encodings = []
    # vpgatherqq: zmm{k}, vm64z
    operands << OPERAND_TYPES[86]
    operands << OPERAND_TYPES[94]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_EVEX buffer, operands
        add_opcode buffer, 0x91, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    operands = []
    encodings = []
    # vpgatherqq: xmm, vm64x, xmm
    operands << OPERAND_TYPES[23]
    operands << OPERAND_TYPES[92]
    operands << OPERAND_TYPES[23]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_VEX buffer, operands
        add_opcode buffer, 0x91, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    operands = []
    encodings = []
    # vpgatherqq: ymm, vm64y, ymm
    operands << OPERAND_TYPES[82]
    operands << OPERAND_TYPES[93]
    operands << OPERAND_TYPES[82]
    encodings << Class.new(Fisk::Machine::Encoding) {
      def encode buffer, operands
        add_VEX buffer, operands
        add_opcode buffer, 0x91, 0
        add_modrm(buffer, operands,
              0,
              operands[0].value,
              operands[1].value)
      end

      def bytesize; 2; end
    }.new
    forms << Fisk::Machine::Form.new(operands, encodings)
    VPGATHERQQ = Fisk::Machine::Instruction.new("VPGATHERQQ", forms)
  end
end
