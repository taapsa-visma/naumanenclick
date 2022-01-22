import React from 'react';
import { render, screen } from '@testing-library/react';
import App from './App';

test('renders learn react link', () => {
  render(<App />);
  const linkElement = screen.getByText(/react/i);
  expect(linkElement).toBeInTheDocument();
});

test('renders shrug ascii emoji', () => {
  render(<App />);
  expect(screen.getByTestId('content')).toHaveTextContent("¯\\\_(ツ)_/¯");
});