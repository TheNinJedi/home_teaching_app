class CreateDistricts < ActiveRecord::Migration
  def change
    create_table :districts do |t|
      t.belongs_to :organization

      t.timestamps
    end
  end
end
