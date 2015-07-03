class CreateNewsSources < ActiveRecord::Migration
  def change
    create_table :news_sources do |t|
      t.string :name
      t.string :language
      t.string :rss_url

      t.timestamps null: false
    end
  end
end
