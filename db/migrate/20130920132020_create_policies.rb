class CreatePolicies < ActiveRecord::Migration
  def change
    create_table :policies do |t|
      t.string :p_name
      t.string :p_ref
      t.string :c_name
      t.string :c_ref
      t.string :scope
      t.string :objectives

      t.timestamps
    end
  end
end
