module ZOMG
  module IDL
    module Nodes
      class Node
        include Visitable
        include Visitors

        attr_accessor :children
        def initialize(children)
          @children = children
        end

        def to_i
          children.to_i
        end

        def to_sexp
          Sexp.new.accept(self)
        end
      end
      %w{ Boolean Char Double Float Long Octet Short String UnsignedLong
        UnsignedShort ElementSpec CaseLabel DefaultLabel IntegerLiteral
        Sequence Typedef
      }.each { |type| const_set(type.to_sym, Class.new(Node)) }
    end
  end
end
