# PIZZA-RESTAURANT-API
This is a simple API for managing pizza restaurants and their pizzas.
****
# GETTING STARTED
- Clone the repository to your local machine by running the following command in your terminal:

git clone https://github.com/MuchinaWamburia/pizza_restaurants_api

- Once you have cloned the repository, navigate to the project directory.  
***
-  Install the necessary gems.

To install run  ``` bundle install ```
- Database Setup

To setup the database, run the following commands:
    ``rails db:migrate``
    ``rails db:seed``
-  Running the Server
To start the server, run:
`` rails s``

The API should now be up and running on http://localhost:3000.

****
# PROJECT GUIDELINES
## RELATIONSHIPS 
- A Restaurant has many Pizzas through RestaurantPizza.
- A Pizza has many Restaurants through RestaurantPizza.
- A RestaurantPizza belongs to a Restaurant and also belongs to a Pizza

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
  }``...............
****
  # Contributions
- Fork this repository.
- Create a branch: git checkout -b <branch_name>.
- Make your changes and commit them: git commit -m '<commit_message>'
- Push to the original branch: git push origin <project_name>/<location>
- Create the pull request.

# [LICENSE](LICENSE)
The API is available as open source under the terms of the MIT License

Copyright (c) 2023 MuchinaWamburia
***
# AUTHOR INFO
* EMAIL: (lucymuchina20@gmail.com)
* PhoneNo: +254798038006