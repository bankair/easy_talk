require_relative 'base_builder'

module EasyTalk
  module Builders
    class NullBuilder < BaseBuilder
      VALID_OPTIONS = {}

      sig { params(name: Symbol, options: T::Hash[Symbol, T.nilable(T.any(String, Integer))]).void }
      def initialize(name, options = {})
        super(name, { type: 'null' }, options, VALID_OPTIONS)
      end
    end
  end
end
