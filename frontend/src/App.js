import React from 'react';
import logo from './logo.svg';
import './App.css';

function App() {
  return (
    <div className="App">
      <header className="App-header">
        <img src={logo} className="App-logo" alt="logo" />         
        <h3>The front end</h3>
        <h3><a href="/api/foo" className="App-link" target="_blank">A backend link</a></h3>
      </header>
    </div>
  );
}

export default App;
