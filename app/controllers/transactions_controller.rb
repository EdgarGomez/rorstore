class TransactionsController < ApplicationController
	def create
		book = Book.find_by!(slug: params[:slug])
		sale = book.sales.create(
			amount: book.price.to_i,
			buyer_email: current_user.email,
			seller_email: book.user.email,
			stripe_token: params[:stripeToken])
		sale.process!
		if sale.finished?
			redirect_to pickup_url(guid_string: sale.guid_string), notice: "Transaction Successful"
		else
			redirect_to book_path(book), notice: "Something went wrong"
		end
	end

	def pickup
		@sale = Sale.find_by!(guid_string: params[:guid_string])
		@book = @sale.book
	end
end