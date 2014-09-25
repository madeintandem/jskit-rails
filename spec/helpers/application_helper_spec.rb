require "rails_helper"

describe JSKitRails::ApplicationHelper do
  describe "jskit" do
    before do
      allow(ActionController::Metal).to receive(:controller_name).and_return("test_controller")
      module JSKitRails::ApplicationHelper
        def action_name
          "test_action"
        end
      end
    end

    it "returns a script tag that triggers the controller event" do
      expect(helper.jskit).to include('App.Dispatcher.trigger("controller:test_controller:test_action");')
    end

    it "returns a script tag with the json payload" do
      JSKitRails::Payload.value = ["foo", "bar", 0]
      expect(helper.jskit).to include('App.Dispatcher.trigger("controller:test_controller:test_action", "foo", "bar", 0);')
    end

    it "resets the json payload" do
      JSKitRails::Payload.value = ["foo", "bar", 0]
      helper.jskit
      expect(JSKitRails::Payload.value).to be_nil
    end

    it "accepts a namespace configuration" do
      expect(helper.jskit(namespace: "admin")).to include('App.Dispatcher.trigger("admin:controller:test_controller:test_action");')
    end
  end
end
