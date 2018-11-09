class ContractsController < ApplicationController
	def index
		if params[:query].present?
	      @contracts = Contract.joins(:user).where("email ILIKE ?", "%#{params[:query]}%")
	    else
	      @contracts = Contract.all
	    end
	end

	def new
		@contract = Contract.new
	end

	def show
		@contract = Contract.find(params[:id])
	end
end
