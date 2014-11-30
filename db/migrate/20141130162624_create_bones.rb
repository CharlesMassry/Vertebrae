class CreateBones < ActiveRecord::Migration
  def change
    create_table :bones do |t|
      t.string :name
      t.text :description
      t.belongs_to :region, index: true

      t.timestamps
    end
  end
end
