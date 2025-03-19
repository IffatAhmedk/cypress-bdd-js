Feature: Core Scenarios for TodoMVC Home page

    Scenario: As a user, I should be able to create todos
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        Then a new todo item with the text "Buy groceries" should appear in the list

    Scenario: As a user, I should be able to delete an existing todo
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user clicks on the delete button for the todo item with the text "Buy groceries"
        Then the todo item list should disappear

    Scenario: As a user, I should be able to create multiple todos
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user enters "Buy milk" in the input field and presses Enter
        Then a new todo item with the text "Buy groceries" should appear in the list
        And a new todo item with the text "Buy milk" should appear in the list

    Scenario: As a user, I should be able to mark a Todo as complete
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user clicks on the checkbox for the todo item with the text "Buy groceries"
        Then the todo item with the text "Buy groceries" should be marked as complete

    Scenario: As a user, I should be able to mark a Todo as incomplete
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user clicks on the checkbox for the todo item with the text "Buy groceries"
        And the user clicks on the checkbox for the todo item with the text "Buy groceries"
        Then the todo item with the text "Buy groceries" should be marked as incomplete

    Scenario: As a user with multiple todos, I should be able to filter active todos
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user enters "Buy milk" in the input field and presses Enter
        And the user clicks on the checkbox for the todo item with the text "Buy groceries"
        And the user clicks on the filter "Active"
        Then the todo item with the text "Buy groceries" should not appear in the list
        And the todo item with the text "Buy milk" should appear in the list

    Scenario: As a user with multiple todos, I should be able to filter completed todos
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user enters "Buy milk" in the input field and presses Enter
        And the user clicks on the checkbox for the todo item with the text "Buy groceries"
        And the user clicks on the filter "Completed"
        Then the todo item with the text "Buy groceries" should appear in the list
        And the todo item with the text "Buy milk" should not appear in the list

    Scenario: As a user with multiple todos, I should be able to mark all todos as done
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user enters "Buy milk" in the input field and presses Enter
        And the user marks all todos as complete
        Then the todo item with the text "Buy groceries" should be marked as complete
        And the todo item with the text "Buy milk" should be marked as complete

    Scenario: As a user with multiple todos, I should be able mark all todos as undone
        Given the user is on the TodoMVC app
        When the user enters "Buy groceries" in the input field and presses Enter
        And the user enters "Buy milk" in the input field and presses Enter
        And the user marks all todos as complete
        And the user marks all todos as incomplete
        Then the todo item with the text "Buy groceries" should be marked as incomplete
        And the todo item with the text "Buy milk" should be marked as incomplete
