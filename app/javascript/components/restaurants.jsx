import React from 'react';
import axios from 'axios';

const csrfToken = document.querySelector('[name=csrf-token]').content;
axios.defaults.headers.common['X-CSRF-TOKEN'] = csrfToken;

class Restaurants extends React.Component{
  state = {
    restaurants: [{id: 1, name: "pozzeto"}]
  }

  async componentDidMount() {
    const res = await axios.get('/api/v1/restaurants');
    console.log(res)
  }


  render () {
    const { restaurants } = this.state;

    return (
      <ul>
        { restaurants.map(restaurant => <li key={restaurant.id}>{ restaurant.name }</li>)}
      </ul>
    )
  }
}

export default Restaurants;
