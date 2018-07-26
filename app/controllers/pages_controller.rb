class PagesController < ApplicationController

  def home
     redirect_to books_path if logged_in?
  end

  def cart
    @cart=Cart.all
    @count=Cart.where(customer_id: current_user.id).count
  end

  def remove_books
    @cart=Cart.all
    @c=Cart.find_by_book_id(params[:id])
    @c.delete
    @c.save
    @book=Book.find_by_id(params[:id])
    @book.update_attribute(:lend,false)
    redirect_to pages_cart_path
  end

  def return
     @cart=Cust.all
  end

  def confirmreturn
    @book=Book.find_by_id(params[:id])
    @book.update_attribute(:lend,false)
    @cust=Cust.find_by_book_id(params[:id])
    @bid=@book.id
    @cust=Cust.find_by_book_id(@bid)
    @bookname=@cust.name
    @issue=@cust.issue_date
    @due=@cust.due_date
    @return=Time.now
    @cust.delete
    @cust.save

  end

  def checkout
    @cart=Cart.all
    @cart.each do |c|
        if c.customer_id==current_user.id
          c.update_attribute(:issue_date,Time.now)
          c.update_attribute(:due_date,Time.now+15.days)
        end
        @book=Book.find_by_id(c.book_id)
        @cust=Cust.new(:name =>c.name,:book_id => c.book_id,:customer_id =>c.customer_id,:issue_date =>c.issue_date,:due_date => c.due_date)
        @cust.save
        c.delete
        c.save
    end
    flash[:success] = "Your order is successfully placed"
    redirect_to books_path
  end
end
