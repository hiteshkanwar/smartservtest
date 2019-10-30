class Api::V1::ProductsController < ApplicationController

  def fetch_data
	begin
      Product.save_data_from_api if Product.all.count === 0
      render :json => Product.order(popularity: :desc), :status => 200
    rescue JSON::ParserError, TypeError => e
       render :json => e, :status => :bad_request
    end
  end


  def search
    if  params["query"].split(" ").length === 1
      query = params[:query]
    else
       new_query = []
       params["query"].split(" ").map do |qr|
         if qr != "AND" && qr != "OR"
           qr = "title  LIKE ?"
           new_query << qr
         else
            new_query << qr
         end
       end
        query = new_query.join(" ")
    end
     search_text = []
    params[:query].gsub('AND',"").gsub("OR","").split(" ").map do |text|
       search_text << "%#{text}%"
    end   
   @products = Product.where(query, *search_text) 
    render :json => @products, :status => 200
  end

end
