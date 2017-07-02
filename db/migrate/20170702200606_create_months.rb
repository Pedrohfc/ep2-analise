class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.decimal :media_temp
      t.decimal :desvio_temp
      t.decimal :media_dewp
      t.decimal :desvio_dewp
      t.decimal :media_w
      t.decimal :desvio_w
      t.decimal :a_temp
      t.decimal :b_temp
      t.decimal :a_dewp
      t.decimal :b_dewp
      t.decimal :a_w
      t.decimal :b_w

      t.timestamps
    end
  end
end
