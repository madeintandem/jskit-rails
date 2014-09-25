%w(config payload application_helper engine).each do |lib|
  require "jskit_rails/#{lib}"
end

module JSKitRails
  def set_payload(*payload)
    JSKitRails::Payload.value = payload
  end

  module_function :set_payload
end
