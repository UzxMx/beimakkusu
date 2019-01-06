class CreateTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :templates do |t|
      t.string :name, null: false, default: ""
      t.string :url, null: false, default: ""
      t.integer :type, null: false, default: 0
      t.integer :status, null: false, default: 0

      t.integer :user_id

      t.string :item_expr, null: false, default: ""
      t.string :page_expr, null: false, default: ""
      t.string :item_details_expr, null: false, default: ""
      t.string :list_item_details_expr, null: false, default: ""
      t.string :start_index, null: false, default: ""
      t.string :end_index, null: false, default: ""
      t.integer :internal_page_count, null: false, default: 0
      t.integer :page_count, null: false, default: 1000
      t.string :meta_info, null: false, default: ""
      t.string :next_page_element_meta_info, null: false, default: ""

      t.string :remark, null: false, default: ""
      t.string :province, null: false, default: ""
      t.string :info_type, null: false, default: ""      

      t.timestamps
    end

    add_index :templates, :name, unique: true
    add_index :templates, :url, unique: true
  end
end
