import { IResolvers } from 'graphql-tools';

const resolverMap: IResolvers = {
  Query: {
    helloWorld(_: void, args: void): string {
      return `Hello World!`;
    },
    teste(_: void, args: void): string {
      return 'teste';
    },
  },
  // Teste: {
  //   Jedi(_: void, args: void): string {
  //     return 'teste';
  //   },
  // },
};

export default resolverMap;
