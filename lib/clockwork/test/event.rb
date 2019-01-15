module Clockwork
  module Test
    class Event < Clockwork::Event
      attr_reader :block

      def reset
        @last = nil
      end

      private

      def execute
      end
    end
  end
end
