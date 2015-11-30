class Sale < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :usuario
  has_many :sale_producto
  has_many :producto, :through => :sale_producto
end
