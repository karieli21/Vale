class SaleProducto < ActiveRecord::Base
  belongs_to :sale
  belongs_to :producto
end
