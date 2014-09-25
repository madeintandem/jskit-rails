%w(config payload application_helper engine).each do |lib|
  require "jskit_rails/#{lib}"
end

module JSKit
  def set_payload(*payload)
    JSKit::Payload.value = payload
  end

  module_function :set_payload
end
