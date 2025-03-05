require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should create a book with name and author" do
    book = Book.new(name: "1984", author: "George Orwell")
    assert book.valid?
    assert_equal "1984", book.name
    assert_equal "George Orwell", book.author
  end

  test "should save and retrieve a book" do
    book = Book.create(name: "Animal Farm", author: "George Orwell")
    retrieved_book = Book.find(book.id)
    assert_equal "Animal Farm", retrieved_book.name
    assert_equal "George Orwell", retrieved_book.author
  end
end
