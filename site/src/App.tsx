import React from 'react';
import './App.css';
import { EmailAddress } from 'common'

function App(this: any) {
  return (
    <div className="App">
      <header className="App-header">
        <h1>naumanen.click</h1>
      </header>
      <div data-testid="content" className="App-content">
        <code>Hello World</code>
        <p>
          You should learn <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">React</a> ¯\_(ツ)_/¯ ?<br/>
          { console.log(EmailAddress.isValid('oikea@email.com')) }
          { console.log(EmailAddress.isValid('loller@com')) }
        </p>
      </div>
    </div>
  );
}

export default App;
