# frozen_string_literal: true

class Fisk
  module Instructions
    # Instruction ROL
    forms = []
    operands = []
    encodings = []
    # rolb: r8, 1
    operands << OPERAND_TYPES[2]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD0, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolb: r8, imm8
    operands << OPERAND_TYPES[2]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xC0, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolb: r8, cl
    operands << OPERAND_TYPES[2]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD2, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: r16, 1
    operands << OPERAND_TYPES[7]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: r16, imm8
    operands << OPERAND_TYPES[7]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: r16, cl
    operands << OPERAND_TYPES[7]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: r32, 1
    operands << OPERAND_TYPES[12]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: r32, imm8
    operands << OPERAND_TYPES[12]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: r32, cl
    operands << OPERAND_TYPES[12]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: r64, 1
    operands << OPERAND_TYPES[16]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: r64, imm8
    operands << OPERAND_TYPES[16]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 4; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: r64, cl
    operands << OPERAND_TYPES[16]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              0,
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              3,
              0,
              operands[0].value)
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolb: m8, 1
    operands << OPERAND_TYPES[19]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD0, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolb: m8, imm8
    operands << OPERAND_TYPES[19]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xC0, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolb: m8, cl
    operands << OPERAND_TYPES[19]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD2, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: m16, 1
    operands << OPERAND_TYPES[20]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: m16, imm8
    operands << OPERAND_TYPES[20]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolw: m16, cl
    operands << OPERAND_TYPES[20]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_prefix buffer, operands, 0x66, false
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: m32, 1
    operands << OPERAND_TYPES[21]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: m32, imm8
    operands << OPERAND_TYPES[21]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # roll: m32, cl
    operands << OPERAND_TYPES[21]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              false,
              0,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 2; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: m64, 1
    operands << OPERAND_TYPES[22]
    operands << OPERAND_TYPES[55]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: m64, imm8
    operands << OPERAND_TYPES[22]
    operands << OPERAND_TYPES[1]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xC1, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
        add_immediate buffer, operands[1].value, 1
      end

      def bytesize; 4; end
    }.new
    forms << Form.new(operands, encodings)
    operands = []
    encodings = []
    # rolq: m64, cl
    operands << OPERAND_TYPES[22]
    operands << OPERAND_TYPES[56]
    encodings << Class.new(Fisk::Encoding) {
      def encode buffer, operands
        add_rex(buffer, operands,
              true,
              1,
              0,
              (operands[0].value >> 3),
              (operands[0].value >> 3))
        add_opcode buffer, 0xD3, 0
        add_modrm(buffer, operands,
              0,
              0,
              operands[0].value)
      end

      def bytesize; 3; end
    }.new
    forms << Form.new(operands, encodings)
    ROL = Instruction.new("ROL", forms)
  end
end
