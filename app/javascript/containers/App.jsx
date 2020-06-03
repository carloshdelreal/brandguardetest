import React from 'react'
import Restaurants from '../components/restaurants'


const App = props => (
  <div>
    <h3>Hello {props.name}!</h3>
    <a className="btn btn-danger" rel="nofollow" href="/sign_out">Sign out</a>
    <p>This is react</p>
    <Restaurants />
  </div>
)

export default App;
