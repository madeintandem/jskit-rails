require "rails_helper"

describe JSKit::Config do
  it "has an app_namespace" do
    expect(JSKit::Config.app_namespace).to eq("App")
  end

  describe "app_namespace=" do
    it "sets the app_namespace" do
      JSKit::Config.app_namespace = "Foo"
      expect(JSKit::Config.app_namespace).to eq("Foo")
      JSKit::Config.app_namespace = "App"
    end
  end
end
