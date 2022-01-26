import React, { useState } from 'react';
import { EmailAddressValidator } from 'common'

function CheckEmail() {
    const [inputValue, setInputValue] = useState('');
    const [resultValue, setResultValue] = useState('');
  
    const handleInputChange = () => {
      setInputValue(inputValue);
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
  
    return (
      <div className='email-checker'>
        <h5>Is your email valid?</h5>
        <input value={inputValue} onChange={handleInputChange} />
        <button onClick={handleClick}>Submit</button>
        <p>{ resultValue }</p>
      </div>
    );
  }

  export default CheckEmail;