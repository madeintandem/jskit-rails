module JSKitRails
  class Engine < ::Rails::Engine
    isolate_namespace JSKitRails
    config.to_prepare do
      ApplicationController.helper(JSKitRails::ApplicationHelper)
    end
  end
end
