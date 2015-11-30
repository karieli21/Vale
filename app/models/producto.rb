class Producto < ActiveRecord::Base
  has_many :sale_producto
  has_many :sale, :through => :sale_producto
end
