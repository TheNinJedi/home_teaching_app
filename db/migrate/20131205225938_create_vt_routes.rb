class CreateVtRoutes < ActiveRecord::Migration
  def change
    create_table :vt_routes do |t|
      t.belongs_to :district
      t.timestamps
    end
  end
end
