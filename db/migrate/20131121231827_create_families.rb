class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :fam_name
      t.string :h_o_h
      t.string :address

      t.timestamps
    end
  end
end
