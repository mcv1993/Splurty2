class AlterQuotesDoAll < ActiveRecord::Migration[5.2]
  def change
    Quote.delete_all
    Quote.connection.execute('ALTER SEQUENCE quotes_id_seq RESTART WITH 1')
    Quote.create(:saying => 'It is what it is.', :author => 'The World')
  end
end
