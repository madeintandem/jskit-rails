require "rails_helper"

describe JSKitRails::Config do
  it "has an app_namespace" do
    expect(JSKitRails::Config.app_namespace).to eq("App")
  end

  describe "app_namespace=" do
    it "sets the app_namespace" do
      JSKitRails::Config.app_namespace = "Foo"
      expect(JSKitRails::Config.app_namespace).to eq("Foo")
      JSKitRails::Config.app_namespace = "App"
    end
  end
end
