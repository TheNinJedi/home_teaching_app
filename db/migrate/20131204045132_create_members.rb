class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.references :multiassignable, polymorphic: true
      t.timestamps
    end
  end
end
