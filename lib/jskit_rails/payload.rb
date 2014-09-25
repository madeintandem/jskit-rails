module JSKit
  module Payload
    mattr_accessor :value

    def to_json
      [*value].map(&:to_json)
    end

    def to_args
      value.present? ? ", #{to_json.join(", ")}" : ""
    end

    module_function :to_json, :to_args
  end
end
