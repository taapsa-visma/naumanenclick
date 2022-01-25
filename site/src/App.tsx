import React from 'react';
import './App.css';
import { EmailAddress } from 'common'

function App() {
  return (
    <div className="app">
      <header className="app-header">
        <h1>naumanen.click</h1>
      </header>
      <div data-testid="content" className="app-content">
        <code>Hello World</code>
        <p>
          You should learn <a className="app-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">React</a> ¯\_(ツ)_/¯ ?<br/>
          { console.log(EmailAddress.isValid('oikea@email.com')) }
          { console.log(EmailAddress.isValid('loller@com')) }
        </p>
      </div>
    </div>
  );
}

export default App;
