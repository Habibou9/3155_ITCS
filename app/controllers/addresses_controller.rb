class AddressesController < ApplicationController
    def index
        @addresses = Address.all
    end
    def new
        @address = Address.new
    end
    def show
        @address = Address.find(params[:id])
    end
    def create
        @address = Address.new(address_params)
        
       if @address.save
             redirect_to @address
            else
             render 'new'
       end
    end
end

private
def address_params
    params.require(:address).permit(:FirstName, :LastName, :PhoneNumber, :EmailAddress, :HomeAddress, :Company)
end
