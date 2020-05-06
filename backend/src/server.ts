import express from 'express';

import { ApolloServer } from 'apollo-server-express';

import { Server } from 'http';
import compression from 'compression';
import cors from 'cors';
import schema from './schema';

const app = express();
const server = new ApolloServer({
  schema,
});

const port = 3030;

app.use(cors());
app.use(compression());
server.applyMiddleware({ app, path: '/graphql' });

const http = new Server(app);

http.listen(
  {
    port: port,
  },
  () => console.log(`Rodando na porta ${port}`)
);
