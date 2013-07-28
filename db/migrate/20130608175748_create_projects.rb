class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      # t.integer :user_id
      t.string :name
      t.text :description
      t.integer :status_code
      t.integer :percent_complete
      t.string :token_for_disqus
      t.timestamps
    end
  end
end
