import { useState } from 'react';
import './App.scss';
import User from './components/User'
import PrivateText from './components/PrivateText'
const App=()=>{
  const [currUser, setCurrUser]=useState(null);
  return (
    <div className="App container">
      <User/>
    </div>
  );
}
export default App;