class AddUrlToGithub < ActiveRecord::Migration
  def change
    add_column :githubs, :url, :string
    add_column :githubs, :description, :string

  end
end
