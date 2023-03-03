require_relative 'lib/database_connection'

# We need to give the database name to the method `connect`.
DatabaseConnection.connect('music_library')

# Print out each record from the result set .
books_repository = BooksRepository.new
result = books_repository.all
result.each do |record|
  p record
end