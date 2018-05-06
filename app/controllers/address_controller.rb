class AddressController < ApplicationController
  def index
    @meetings = Meeting.all
  end
end
