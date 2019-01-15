module Clockwork
  module Test
    class Event < Clockwork::Event
      attr_reader :block

      def reset
        @last = nil
      end

      def reinit_last_ran
        @last = with_skipping_first_run ? convert_timezone(Time.now) : nil
      end

      private
      def with_skipping_first_run
        self.instance_variable_get('@skip_first_run')
      end

      def execute
      end
    end
  end
end
