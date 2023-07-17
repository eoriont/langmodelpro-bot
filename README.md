# LangModelPro Bot: A chatbot built with the LangModelPro API

Find the original chatbot here: https://github.com/david-j-wu/gpt-chatbot

## EASY: Deploy with Vercel

[![Deploy with Vercel](https://vercel.com/button)](https://vercel.com/new/clone?repository-url=https%3A%2F%2Fgithub.com%2Feoriont%2Flangmodelpro-bot&env=OPENAI_API_KEY&project-name=langmodelpro-example-chatbot&repository-name=langmodelpro-example-chatbot)

## Local: Use docker

Note: this method is quick but not meant for development.

1. Clone this repository and `cd langmodelpro-bot`

2. Make sure docker is on your system. https://docs.docker.com/engine/install/

3. Add openai key to `.env.local`:
```
OPENAI_API_KEY=my-openai-api-key
```

4. Run the docker image
```
docker build -t langmodelpro-bot . && docker run -p 3000:3000 langmodelpro-bot
```


## Local: Use node

This project requires Node.js 14.6.0 or higher.

For information on how to download, install and update Node.js, see their official website: [https://nodejs.org/](https://nodejs.org/).

You can run the terminal commands `node -v` and `npm -v` to check what versions you have installed of Node.js and the associated package manager NPM.

### How to launch the web app locally

1. Change the present working directory to the `langmodelpro-bot` folder. If you're using Visual Studio Code ([https://code.visualstudio.com/](https://code.visualstudio.com/)), then create a new window and open the folder. Alternatively, you can use the `cd` terminal command to do this. You can run the command `pwd` to check you have done this correctly.

2. Install the dependencies for the web app:

```
npm install
```

3. Create a copy of the sample environment variables files, `.env.sample`, either manually or by running the following command:

```
cp .env.sample .env.local
```

4. Add openai key to `.env.local`:
```
OPENAI_API_KEY=my-openai-api-key
```

6. Run the local development server:

```
npm run dev
```

7. Open your browser of choice and head to [http://localhost:3000](http://localhost:3000) to see the web app live locally.

8. Make desired changes to the web app. Next.js will automatically update the web app when you save changes to the source code.
