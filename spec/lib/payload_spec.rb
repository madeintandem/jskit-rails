require "rails_helper"

describe JSKitRails::Payload do
  after do
    JSKitRails::Payload.value = nil
  end

  it "has a value" do
    expect(JSKitRails::Payload.value).to eq(nil)
  end

  describe "value=" do
    it "sets the value" do
      JSKitRails::Payload.value = "foo"
      expect(JSKitRails::Payload.value).to eq("foo")
    end
  end

  describe "to_json" do
    context "with nil value" do
      it "returns an empty array" do
        expect(JSKitRails::Payload.to_json).to eq([])
      end
    end

    context "with single value" do
      it "returns an array with the value converted to json" do
        JSKitRails::Payload.value = "foo"
        expect(JSKitRails::Payload.to_json).to eq(['"foo"'])
      end
    end

    context "with an array" do
      it "returns an array with each item converted to json" do
        JSKitRails::Payload.value = ["foo", 1]
        expect(JSKitRails::Payload.to_json).to eq(['"foo"', "1"])
      end
    end
  end

  describe "to_args" do
    context "with nil value" do
      it "returns an empty string" do
        expect(JSKitRails::Payload.to_args).to eq("")
      end
    end

    context "with values" do
      it "returns the json values as a string, comma delimited with a leading comma" do
        JSKitRails::Payload.value = ["foo", 1]
        expect(JSKitRails::Payload.to_args).to eq(', "foo", 1')
      end
    end
  end
end
