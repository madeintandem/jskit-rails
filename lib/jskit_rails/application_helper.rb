module JSKitRails
  module ApplicationHelper
    def jskit(config={namespace: nil})
      namespace = config[:namespace] ? "#{config[:namespace]}:" : ""
      payload = JSKitRails::Payload.to_args
      JSKitRails::Payload.value = nil
      javascript_tag do
        "#{JSKitRails::Config.app_namespace}.Dispatcher.trigger(\"#{namespace}controller:#{controller_name}:#{action_name}\"#{payload});".html_safe
      end
    end
  end
end
