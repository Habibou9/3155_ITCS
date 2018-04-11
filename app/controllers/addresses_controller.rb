class AddressesController < ApplicationController
    def new
    end
    def show
        @address = Address.find(params[:id])
    end
    def create
        @address = Address.new(address_params)
        
        @address.save
        redirect_to @address
    end
end

private
def address_params
    params.require(:address).permit(:FirstName, :LastName, :PhoneNumber, :EmailAddress, :HomeAddress, :Company)
end
