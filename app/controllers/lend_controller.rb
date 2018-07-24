class LendController < ApplicationController

before_action :require_user

  def options

  end

  def categories
    @filter=Book.distinct.pluck(:category)
  end

  def authors
     @filter=Book.distinct.pluck(:author)

  end

  def authorshelf
     @book=Book.all
  end

  def categoryshelf
     @book=Book.all
  end

  def cart
   if(Cart.where(customer_id = current_user.id).count>2)
     flash[:danger] = "Cant add more than 2 books in cart"
     redirect_to books_path
   else
     @cart=Cart.new
     @b=Book.find(params[:id])
     @cart.name=@b.name
     @cart.book_id=@b.id
     @cart.customer_id=current_user.id
     @cart.save
     flash[:success] = "Book added to cart successfully"
     redirect_to books_path
   end

 end

end
