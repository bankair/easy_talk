# frozen_string_literal: true

require_relative 'base_builder'

module EasyTalk
  module Builders
    # Builder class for boolean properties.
    class BooleanBuilder < BaseBuilder
      extend T::Sig

      # VALID_OPTIONS defines the valid options for a boolean property.
      VALID_OPTIONS = {
        enum: { type: T::Array[T::Boolean], key: :enum },
        const: { type: T::Boolean, key: :const },
        default: { type: T::Boolean, key: :default }
      }.freeze

      sig { params(context: T.untyped, name: Symbol).void }
      def initialize(context, name)
        constraints = context[name].constraints
        super(name, { type: 'boolean' }, constraints, VALID_OPTIONS)
      end
    end
  end
end
