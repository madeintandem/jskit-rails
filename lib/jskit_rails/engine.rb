module JSKit
  class Engine < ::Rails::Engine
    isolate_namespace JSKit
    config.to_prepare do
      ApplicationController.helper(JSKit::ApplicationHelper)
    end
  end
end
