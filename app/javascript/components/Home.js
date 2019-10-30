import React from "react"
import PropTypes from "prop-types"
import  AllProducts from './AllProducts'

class Home extends React.Component {

  constructor(props) {
    super(props);
    this.state = {
      products: []
    };
  }

  componentDidMount(){
    fetch('/api/v1/products/fetch_data')
      .then((response) => {return response.json()})
      .then((data) => {this.setState({ products: data }) });
  }

  render () {
    return(
      <div>
        <h1>Product Lists!</h1>
        <AllProducts products={this.state.products}/>
      </div>
    )
  }
}


export default Home
