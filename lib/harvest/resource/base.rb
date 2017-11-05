module Harvest
  module Resource
    class Base
      class << self
        def attributes *attrs
          if attrs.any?
            @@attributes = attrs
            attr_reader *attrs
            self
          else
            @@attributes
          end
        end
      end

      def initialize attr_map
        attr_map.each do |attribute, value|
          instance_variable_set("@#{attribute}", value)
        end
      end

      def attributes
        self.class.attributes
      end
    end
  end
end
