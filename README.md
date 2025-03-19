# 🚀 Cypress BDD Demo

![Test Status](https://github.com/IffatAhmedk/cypress-demo/actions/workflows/e2e.yml/badge.svg)
![Cypress](https://img.shields.io/badge/Tested%20With-Cypress-4E4E4E?style=flat&logo=cypress&logoColor=white)
![Gherkin](https://img.shields.io/badge/BDD-Gherkin-8dc63f?style=flat&logo=gherkin&logoColor=white)

Welcome to the **Cypress BDD Demo** repository! 🎯 This project showcases basic end-to-end testing of the TodoMVC App using **Cypress** integrated with **Behavior-Driven Development (BDD)** practices through **Gherkin syntax**.

## 📌 Features

- ✅ **Behavior-Driven Development**: Write tests in an intuitive Given-When-Then format.
- ✅ **Gherkin Syntax**: Utilize `.feature` files for clear and concise test scenarios.
- ✅ **Cypress Integration**: Leverage Cypress's powerful testing capabilities.
- ✅ **CI/CD Ready**: Seamless integration with GitHub Actions for continuous testing.

---

## 🛠️ Setup & Installation

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/IffatAhmedk/cypress-demo.git
cd cypress-demo
```

2️⃣ Install Dependencies
```bash
yarn install  # or npm install
```

3️⃣ Run Tests Locally
Open Cypress Test Runner
```bash
yarn cypress open  # or npx cypress open
```

Run Tests in Headless Mode
```bash
yarn cypress run  # or npx cypress run

```

🔥 Example Feature

Feature: Todo Management

  Scenario: Add a new todo item
    Given the user is on the TodoMVC app
    When the user enters "Buy groceries" in the input field and presses Enter
    Then a new todo item with the text "Buy groceries" should appear in the list
