class PagesController < ApplicationController
  def index
    JSKitRails.set_payload("dicks", "balls", [1,2,3], { some: "object" })
  end
end
