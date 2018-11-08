class ContractsController < ApplicationController
	def index
		if params[:query].present?
	      @contracts = Contract.joins(:user).where("email ILIKE ?", "%#{params[:query]}%")
	    else
	      @contracts = Contract.all
	    end
	end
end
