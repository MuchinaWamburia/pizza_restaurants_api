# pizza_restaurants_api
This is a simple API for managing pizza restaurants and their pizzas.

# Getting Started
To get started with the project, you can fork the repository and clone it to your local machine. Here are the steps:

- Fork the repository by clicking on the "Fork" button on the top right corner of the page.
- Clone the repository to your local machine by running the following command in your terminal:
[https://github.com/MuchinaWamburia/pizza_restaurants_api]

- Once you have cloned the repository, navigate to the project directory.
***
### Install the necessary gems:
To install , run:
``` bundle install ``
### Database Setup
To setup the database, run the following command:

    ``rails db:create``

    ``rails db:migrate``

    ``rails db:seed``
### Running the Server
To start the server, run:
`` rails s``

The API should now be up and running on http://localhost:3000.
****
## Endpoints
Restaurants
- GET /restaurants

Returns a list of all restaurants.

Response
Response:

``[  {    "id": 1,    "name": "Pizza Palace",    "address": "123 Main St"  }, ``

- GET /restaurants/:id

Returns details for a specific restaurant.

``{
      "id": 2,
      "name": "Pepperoni",
      "ingredients": "Tomato sauce, mozzarella cheese, pepperoni",
      "price": 12.99
    }``

  - POST /restaurants

Creates a new restaurant.
 Request:
    ``{
      "name": "Pizza Hut",
      "address": "789 Elm St"
    }``
 Response:

  ``{
  "id": 3,
  "name": "Pizza Hut",
  "address": "789 E}``

- DELETE /restaurants/:id

Deletes a specific restaurant.

- Error Responses
In case of an error, the API will return a JSON response with an "error" key and the HTTP status code.

``
  {
    "error": "Pizza not found"
  }``