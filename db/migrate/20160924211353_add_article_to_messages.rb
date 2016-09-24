class AddArticleToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :article, index: true, foreign_key: true
  end
end
