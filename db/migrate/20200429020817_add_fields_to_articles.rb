class AddFieldsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :details, :text
  end
end
