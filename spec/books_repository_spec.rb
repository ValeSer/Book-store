require 'books_repository'

describe BooksRepository do

  def reset_books_table
    seed_sql = File.read('spec/seeds_seeds_books.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'book_store_test' })
    connection.exec(seed_sql)
  end
  
  describe BooksRepository do
    before(:each) do 
      reset_books_table
    end
  end

  
  it 'returns two books' do
    repo = BooksRepository.new
  
    books = repo.all
    
    expect(books.first.id).to eq ('1')
    expect(books.first.title).to eq('Nineteen Eighty-Four')
    expect(books.first.author_name).to eq('George Orwell')
  end


end