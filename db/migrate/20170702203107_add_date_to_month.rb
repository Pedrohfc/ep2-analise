class AddDateToMonth < ActiveRecord::Migration[5.0]
  def change
    add_column :months, :mes_ano, :date
  end
end
