import React from 'react';
import './App.css';
import Hello from 'common';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>naumanen.click</h1>
      </header>
      <div data-testid="content" className="App-content">
        <code>Hello World</code>
        <p>
          You should learn <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">React</a> ¯\_(ツ)_/¯ ?
        </p>
      </div>
      <Hello text="World" />
    </div>
  );
}

export default App;
