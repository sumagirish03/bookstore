class BookstoreController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        #render html: "hello Book"
        @BookStoreData = Bookstore.all
        render json: @BookStoreData
    end
    def show
        v = Bookstore.find(params[:id])
        render json: v
    end
    def create
        puts params[:bookName]
        puts params[:bookAuthor]
        puts params[:bookQuantity]

        v = !params[:bookName].empty?
        if (v)
            p = Bookstore.create(
                'bookName': params[:bookName], 
                'bookAuthor': params[:bookAuthor], 
                'bookQuantity': params[:bookQuantity]
            )
            puts p
            render json: "New Book added"
        else
            render json: "Book not added"
        end
    end
    def update
        p = Bookstore.find(params[:id].to_i)
        p.update('bookName': params[:bookName])
        render json: "New Book added"
    end  
       
    def destroy
        p = Bookstore.find(params[:id].to_i)
        p.destroy
        render json: "Delete the New Book"
    end
end
