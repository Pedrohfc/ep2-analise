class AddMediaHAndVarAndCvpToMonth < ActiveRecord::Migration[5.0]
  def change
    add_column :months, :mediah_temp, :decimal
    add_column :months, :var_temp, :decimal
    add_column :months, :cvp_temp, :decimal
    add_column :months, :mediah_dewp, :decimal
    add_column :months, :var_dewp, :decimal
    add_column :months, :cvp_dewp, :decimal
    add_column :months, :mediah_w, :decimal
    add_column :months, :var_w, :decimal
    add_column :months, :cvp_w, :decimal
  end
end
