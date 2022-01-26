import React, { useState, ChangeEvent, MouseEvent } from 'react';
import './App.css';
import CheckEmail from  "./components/Checkemail";

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
        </p>
      </div>
      <CheckEmail />
    </div>
  );
}

export default App;
