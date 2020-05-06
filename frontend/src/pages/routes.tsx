import React from 'react';
import { Route, Switch, BrowserRouter } from 'react-router-dom';

import Login from './Login';
import Content from './Content';

const Routes = (): JSX.Element => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/" component={Login} />
        <Route
          path="*"
          component={(): JSX.Element => <div> Página não encontrada </div>}
        />
      </Switch>
      <Route path="/user/:id" component={Content} />
    </BrowserRouter>
  );
};

export default Routes;
