class History < ActiveRecord::Base
	attr_accessor :name :email :phone :address :status

	def create

		@History = History.new

	end	


end
