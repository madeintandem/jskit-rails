require "rails_helper"

describe JSKit::ApplicationHelper do
  describe "jskit" do
    before do
      allow(ActionController::Metal).to receive(:controller_name).and_return("test_controller")
      module JSKit::ApplicationHelper
        def action_name
          "test_action"
        end
      end
    end

    it "returns a script tag that triggers the controller event" do
      expect(helper.jskit).to include('App.Dispatcher.trigger("controller:test_controller:test_action");')
    end

    it "returns a script tag with the json payload" do
      JSKit::Payload.value = ["foo", "bar", 0]
      expect(helper.jskit).to include('App.Dispatcher.trigger("controller:test_controller:test_action", "foo", "bar", 0);')
    end

    it "resets the json payload" do
      JSKit::Payload.value = ["foo", "bar", 0]
      helper.jskit
      expect(JSKit::Payload.value).to be_nil
    end

    it "accepts a namespace configuration" do
      expect(helper.jskit(namespace: "admin")).to include('App.Dispatcher.trigger("admin:controller:test_controller:test_action");')
    end
  end
end
