class AddIdeaPosition < ActiveRecord::Migration
  def change
    add_column :ideas, :x, :integer
    add_column :ideas, :y, :integer
  end
end
