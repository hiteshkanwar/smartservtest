class Product < ApplicationRecord

  validates_presence_of :title, :price, :subcategory, :popularity

  def self.save_data_from_api
      response = HTTParty.get('https://s3.amazonaws.com/open-to-cors/assignment.json')
      product_data = JSON.parse(response&.body || "{}")
      products = product_data["products"].map do |line| 
         product = Product.create(line[1])
      end
  end
  

end
