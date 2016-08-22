class CreateExternalLinkTabs < ActiveRecord::Migration
  def change
    create_table :external_link_tabs, primary_key: 'project_id' do |t|
      t.string :name
      t.string :url
    end
    add_foreign_key :external_link_tabs, :projects

  end
end
