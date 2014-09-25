require "rails_helper"

describe JSKitRails do
  describe "set_payload" do
    after do
      JSKitRails::Payload.value = nil
    end

    it "sets the payload value to an array of the arguments passed" do
      JSKitRails.set_payload("foo")
      expect(JSKitRails::Payload.value).to eq(["foo"])
      JSKitRails.set_payload("foo", "bar", "baz")
      expect(JSKitRails::Payload.value).to eq(["foo", "bar", "baz"])
    end
  end
end
