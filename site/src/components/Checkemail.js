import React, { useState } from 'react';
import { EmailAddressValidator } from 'common'

function CheckEmail() {
    const [inputValue, setInputValue] = useState('');
    const [resultValue, setResultValue] = useState('');

    const handleInputChange = (event) => {
      setInputValue(event.target.value);
      console.log('Email checked!');
      if (EmailAddressValidator.isValid(inputValue)) {
        setResultValue('It is valid \\,,/ !');
      } else {
        setResultValue('Not valid :(');
      }
    };

    inputValue === '' && setTimeout(() => setResultValue(''), 1);
  
    return (
      <div className='email-checker'>
        <h5>Is your email valid?</h5>
        <input value={inputValue} onChange={handleInputChange} />
        <p>{ resultValue }</p>
      </div>
    );
  }

  export default CheckEmail;