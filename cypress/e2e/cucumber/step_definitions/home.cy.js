/// <reference types="cypress" />
import { Given, When, Then, And } from "cypress-cucumber-preprocessor/steps";

Given("the user is on the TodoMVC app", () => {
  cy.visit("");
});

When(
  "the user enters {string} in the input field and presses Enter",
  (todoText) => {
    cy.get('[data-testid="text-input"]').click().type(`${todoText} {enter}`);
  }
);

Then(
  "a new todo item with the text {string} should appear in the list",
  (todoText) => {
    cy.get('[data-testid="todo-item-label"]')
      .each((todo, index) => {
        if(todo === todoText){
          cy.wrap(todo).should("have.text", todoText);
        }
      });
  }
);

And(
  "the user clicks on the delete button for the todo item with the text {string}",
  (todoText) => {
    cy.get(".destroy").invoke("show").click();
  }
);

Then("the todo item list should disappear", () => {
  cy.get(".view").should("not.exist");
});

Then(
  "the todo item with the text {string} should not appear in the list",
  (todoText) => {
    cy.get('[data-testid="todo-item-label"]').each((todo, index) => {
      cy.wrap(todo).should("not.have.text", todoText);
    });
  }
);

Then(
  "there should be {string} todos in the list, namely, {string}, {string}",
  (expectedTodosCount, firstTodo, secondTodo) => {
    const expectedTodos = [firstTodo, secondTodo];

    cy.get('[data-testid="todo-item-label"]')
      .should("have.length", Number(expectedTodosCount))
      .each((todo, index) => {
        cy.wrap(todo).should("have.text", expectedTodos[index]);
      });
  }
);

And(
  "the user clicks on the checkbox for the todo item with the text {string}",
  (todoText) => {
    cy.get(".view").each(($todo) => {
      if ($todo.text().trim() === todoText) {
        cy.wrap($todo).children().first().click();
      }
    });
  }
);

Then(
  "the todo item with the text {string} should be marked as complete",
  (todoText) => {
    cy.get('[data-testid="todo-item-label"]').each((todo, index) => {
        if (todo.text().trim() === todoText) {
            cy.wrap(todo).should("have.text", todoText)
            .invoke("css", "text-decoration")
            .should("contain", "line-through");
          }
    })
  }
);

Then(
  "the todo item with the text {string} should be marked as incomplete",
  (todoText) => {
    cy.get('[data-testid="todo-item-label"]').each((todo, index) => {
        if (todo.text().trim() === todoText) {
            cy.wrap(todo).should("have.text", todoText)
            .invoke("css", "text-decoration")
            .should("not.contain", "line-through");
          }
    })
  }
);

And("the user clicks on the filter {string}", (selectedFilter) => {
  cy.get('[data-testid="footer-navigation"] li a').each(($el) => {
    if ($el.text().trim() === selectedFilter) {
      cy.wrap($el).click();
    }
  });
});

And(
  "the todo item with the text {string} should appear in the list",
  (todoText) => {
    cy.get(".view").each(($todo) => {
      cy.wrap($todo.text()).should("eq", todoText);
    });
  }
);

And("the user marks all todos as complete", () => {
    cy.get('[data-testid="toggle-all"]').click()
})

And("the user marks all todos as incomplete", () => {
    cy.get('[data-testid="toggle-all"]').click()
})

