# solidity-example

## 1. Basic Book Store

`BasicBookStore.sol` is a Solidity smart contract that allows you to manage a bookstore. It has the following features:

- You can add a book with a title and price using the `addBook` function.
- You can update the price of a book using the `updateBookPrice` function.
- You can retrieve the price of a book using the `getBookPrice` function.
- You can check if a book is registered using the `isBookRegistered` function.

The contract uses a mapping to store books, where each book is identified by its title and has a price and an existence flag. The contract also emits events when a book is added or its price is updated.

## Additional Links

- https://remix.ethereum.org/
- https://eth-converter.com/
