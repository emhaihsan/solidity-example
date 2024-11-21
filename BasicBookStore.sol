// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract BookStore {
    struct Book {
        string title;
        uint256 price;
        bool exists; 
    }

    mapping(string => Book) private books;
    event BookAdded(string title, uint256 price);
    event BookPriceUpdated(string title, uint256 newPrice);

    function addBook(string memory title, uint256 price) public {
        require(bytes(title).length > 0, "Book title cannot be empty");
        require(price > 0, "Book price must be greater than zero");
        require(!books[title].exists, "This book is already registered");

        books[title] = Book(title, price, true);

        emit BookAdded(title, price);
    }

    function updateBookPrice(string memory title, uint256 newPrice) public {
        require(bytes(title).length > 0, "Book title cannot be empty");
        require(newPrice > 0, "New price must be greater than zero");
        require(books[title].exists, "This book is not registered");

        books[title].price = newPrice;

        emit BookPriceUpdated(title, newPrice);
    }

    function getBookPrice(string memory title) public view returns (uint256) {
        require(bytes(title).length > 0, "Book title cannot be empty");
        require(books[title].exists, "This book is not registered");

        return books[title].price;
    }

    function isBookRegistered(string memory title) public view returns (bool) {
        return books[title].exists;
    }
}
