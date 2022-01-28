import React, { useState } from 'react';
import { EmailAddressValidator } from '@naumanenclick/common'

export default function CheckEmail() {
    const [inputValue, setInputValue] = useState('');
    const [resultValue, setResultValue] = useState('');

    const handleInputChange = (event) => {
      setInputValue(event.target.value);
    };

    const handleClick = () => {
      console.log('Email checked!');
      const result = EmailAddressValidator.isValid(inputValue)
      if (inputValue === '') {
        setResultValue("You didn't give any email!");
      }
      else if (result) {
        setResultValue('It is valid \\,,/ !');
      } else {
        setResultValue('Not valid :(');
      }
    };

    const handleKeyPress = (event) => {
      if(event.key === 'Enter'){
        handleClick();
      }
    }

    return (
      <div className='email-checker'>
        <h5>Is your email valid?</h5>
        <input value={inputValue} onChange={handleInputChange} onKeyPress={handleKeyPress}/>
        <button onClick={handleClick}>Submit</button>
        <p>{ resultValue }</p>
      </div>
    );
  }