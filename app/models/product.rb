class Product < ApplicationRecord
  belongs_to :category
  store_accessor :details, :color
  store_accessor :details, :number
  store_accessor :details, :crochet_needle
  store_accessor :details, :tex
  store_accessor :details, :knitting_needle

  def details=(params)
    params = JSON.parse params.gsub('=>', ':') if params.is_a?(String)
    super(params)
  end
end
