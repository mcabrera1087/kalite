class CreateAttachments < ActiveRecord::Migration
  def self.up
    create_table :attachments do |t|
      t.string      :attach_file_name
      t.string      :attach_content_type
      t.integer     :attach_file_size
      t.datetime    :attach_updated_at
      t.references  :formal_technical_review
      t.timestamps
    end
  end
end
