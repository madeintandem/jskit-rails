require "rails_helper"

describe JSKit do
  describe "set_payload" do
    after do
      JSKit::Payload.value = nil
    end

    it "sets the payload value to an array of the arguments passed" do
      JSKit.set_payload("foo")
      expect(JSKit::Payload.value).to eq(["foo"])
      JSKit.set_payload("foo", "bar", "baz")
      expect(JSKit::Payload.value).to eq(["foo", "bar", "baz"])
    end
  end
end
