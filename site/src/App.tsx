import React, { useState, ChangeEvent, MouseEvent } from 'react';
import './App.css';
import { EmailAddressValidator } from 'common'

function SubmitEmail() {
  const [inputValue, setInputValue] = useState('');

  const handleInputChange = (event: ChangeEvent<HTMLInputElement>) => {
    setInputValue(event.target.value);
  };

  const handleClick = (event: MouseEvent) => {
    console.log('Email checked!');
    console.log(EmailAddressValidator.isValid(inputValue))
  };

  return (
    <div className='email-checker'>
      <h5>Is your email valid?</h5>
      <input value={inputValue} onChange={handleInputChange} />
      <button onClick={handleClick}>Submit</button>
    </div>
  );
}

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
      <SubmitEmail />
    </div>
  );
}

export default App;
