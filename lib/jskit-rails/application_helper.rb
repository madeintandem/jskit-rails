module JSKit
  module ApplicationHelper
    def jskit(config={namespace: nil})
      namespace = config[:namespace] ? "#{config[:namespace]}:" : ""
      payload = JSKit::Payload.to_args
      JSKit::Payload.value = nil
      javascript_tag do
        "#{JSKit::Config.app_namespace}.Dispatcher.trigger(\"#{namespace}controller:#{controller_name}:#{action_name}\"#{payload});".html_safe
      end
    end
  end
end
