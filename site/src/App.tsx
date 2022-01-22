import React from 'react';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <h1>naumanen.click</h1>
      </header>
      <div data-testid="content" className="App-content">
        <code>Hello World</code>
        <p>
          You should probably learn <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">React</a> ¯\_(ツ)_/¯
        </p>
      </div>
    </div>
  );
}

export default App;
