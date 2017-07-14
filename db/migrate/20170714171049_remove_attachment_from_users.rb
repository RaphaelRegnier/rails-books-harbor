class RemoveAttachmentFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :Attachment, :string
  end
end
