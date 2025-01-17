<img src="https://github.com/openpipe/openpipe/assets/41524992/ca59596e-eb80-40f9-921f-6d67f6e6d8fa" width="72px" />

# OpenPipe

OpenPipe is a flexible playground for comparing and optimizing LLM prompts. It lets you quickly generate, test and compare candidate prompts with realistic sample data.

## Sample Experiments

These are simple experiments users have created that show how OpenPipe works.

- [Country Capitals](https://app.openpipe.ai/experiments/11111111-1111-1111-1111-111111111111)
- [Reddit User Needs](https://app.openpipe.ai/experiments/22222222-2222-2222-2222-222222222222)
- [OpenAI Function Calls](https://app.openpipe.ai/experiments/2ebbdcb3-ed51-456e-87dc-91f72eaf3e2b)
- [Activity Classification](https://app.openpipe.ai/experiments/3950940f-ab6b-4b74-841d-7e9dbc4e4ff8)

<img src="https://github.com/openpipe/openpipe/assets/176426/fc7624c6-5b65-4d4d-82b7-4a816f3e5678" alt="demo" height="400px">

You can use our hosted version of OpenPipe at [https://openpipe.ai]. You can also clone this repository and [run it locally](#running-locally).

## High-Level Features

**Configure Multiple Prompts**  
Set up multiple prompt configurations and compare their output side-by-side. Each configuration can be configured independently.

**Visualize Responses**  
Inspect prompt completions side-by-side.

**Test Many Inputs**  
OpenPipe lets you _template_ a prompt. Use the templating feature to run the prompts you're testing against many potential inputs for broader coverage of your problem space than you'd get with manual testing.

**🪄 Auto-generate Test Scenarios**  
OpenPipe includes a tool to generate new test scenarios based on your existing prompts and scenarios. Just click "Autogenerate Scenario" to try it out!

**Prompt Validation and Typeahead**  
We use OpenAI's OpenAPI spec to automatically provide typeahead and validate prompts.

<img alt="typeahead" src="https://github.com/openpipe/openpipe/assets/176426/acc638f8-d851-4742-8d01-fe6f98890840" height="300px">

**Function Call Support**  
Natively supports [OpenAI function calls](https://openai.com/blog/function-calling-and-other-api-updates) on supported models.

<img height="300px" alt="function calls" src="https://github.com/openpipe/openpipe/assets/176426/48ad13fe-af2f-4294-bf32-62015597fd9b">

## Supported Models

- All models available through the OpenAI [chat completion API](https://platform.openai.com/docs/guides/gpt/chat-completions-api)
- Llama2 [7b chat](https://replicate.com/a16z-infra/llama7b-v2-chat), [13b chat](https://replicate.com/a16z-infra/llama13b-v2-chat), [70b chat](https://replicate.com/replicate/llama70b-v2-chat).
- Anthropic's [Claude 1 Instant](https://www.anthropic.com/index/introducing-claude) and [Claude 2](https://www.anthropic.com/index/claude-2)

## Running Locally

1. Install [Postgresql](https://www.postgresql.org/download/).
2. Install [NodeJS 20](https://nodejs.org/en/download/current) (earlier versions will very likely work but aren't tested).
3. Install `pnpm`: `npm i -g pnpm`
4. Clone this repository: `git clone https://github.com/openpipe/openpipe`
5. Install the dependencies: `cd openpipe && pnpm install`
6. Create a `.env` file (`cp .env.example .env`) and enter your `OPENAI_API_KEY`.
7. Update `DATABASE_URL` if necessary to point to your Postgres instance and run `pnpm prisma db push` to create the database.
8. Create a [GitHub OAuth App](https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/creating-an-oauth-app) and update the `GITHUB_CLIENT_ID` and `GITHUB_CLIENT_SECRET` values. (Note: a PR to make auth optional when running locally would be a great contribution!)
9. Start the app: `pnpm dev`.
10. Navigate to [http://localhost:3000](http://localhost:3000)
