class PagesController < ApplicationController
  def index
    JSKit.set_payload("foo", "bar", [1,2,3], { some: "object" })
  end
end
