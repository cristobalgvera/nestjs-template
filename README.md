# NestJS Template

<!-- TODO: Complete this section with information about the project -->

This template is a starting point for building a RESTful API with
NestJS using AWS Lambda and API Gateway.

## :exclamation: First time usage <!-- TODO: Remove this section -->

1. Clone this template.

   ```bash
   # Clone the base branch
   npx tiged --mode git git@github.com:cristobalgvera/nestjs-template.git <YOUR_PROJECT_NAME>
   ```

1. Look for all the `TODO:` comments or strings in the project and try to solve them.
1. Create your initial commit.

   ```bash
   git add .
   git commit -m "chore: initial commit"
   ```

## TL;DR

Choose one of the following options to run the project:

- Locally:

  ```bash
  # Install dependencies
  pnpm install

  # Run the app
  pnpm start:dev

  # If you want to debug the app
  pnpm start:debug
  ```

  Then open the [Swagger UI](http://localhost:3000/api).

- Serverless Offline:

  ```bash
  # Install dependencies
  pnpm install

  # Run the app
  pnpm start:offline
  ```

  Then open the [Swagger UI](http://localhost:3000/local/api).

- Docker container:

  ```bash
  # Start the app
  docker compose up -d main
  ```

  Then open the [Swagger UI](http://localhost:3000/api).

## Base project information

## Technologies

This project is focused on give an easy-to-use alternative when creating an API,
following the latest standards of the industry and the company, with a mindset
in simplify the initial process related to setup the base project.

It uses the following technologies:

- [TypeScript](https://www.typescriptlang.org)
- [NestJS](https://nestjs.com)
- [Serverless](https://www.serverless.com)
- [Docker](https://www.docker.com) _(easily launch locally)_
- [ESLint](https://eslint.org)
- [Prettier](https://prettier.io)
- [Husky](https://typicode.github.io/husky)
  - [Lint-staged](https://github.com/lint-staged/lint-staged)
  - [Commitlint](https://commitlint.js.org)
- [Jest](https://jestjs.io)

### Code structure

In general, the project can be managed in the same way that a JavaScript
project can, feel free to structure the code as you want.

With this in mind, the project has examples of some types of implementations
that can be used. Those are located inside the branches starting with `example/`.

There are no better or worse alternatives, it just depends on the kind
of project.

## What to do next?

- Create an account in AWS.
  - Create a service account to deploy the application.
    - Set the access key and secret in the repository secrets under the names:
      - `AWS_ACCESS_KEY_ID`
      - `AWS_SECRET_ACCESS_KEY`
- Create an account in Serverless Framework.
  - Generate an API key.
  - Set the API key in the repository secrets
    - `SERVERLESS_API_KEY`.
