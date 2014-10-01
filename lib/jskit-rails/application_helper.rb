module JSKit
  module ApplicationHelper
    def jskit(config={namespace: nil})
      payload = JSKit::Payload.to_args
      JSKit::Payload.value = nil
      event_name = [config[:namespace], "controller", controller_name, action_name].compact.join(":")
      javascript_tag do
        "#{JSKit::Config.app_namespace}.Dispatcher.trigger(\"controller:all\");\n#{JSKit::Config.app_namespace}.Dispatcher.trigger(\"#{event_name}\"#{payload});".html_safe
      end
    end
  end
end
