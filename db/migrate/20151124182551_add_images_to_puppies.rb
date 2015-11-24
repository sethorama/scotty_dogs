class AddImagesToPuppies < ActiveRecord::Migration
  def up
    add_attachment :puppies, :image
  end

  def down
    remove_attachment :puppies, :image
  end
end
