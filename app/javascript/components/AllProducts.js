import React from "react"

import { TablePagination } from 'react-pagination-table';
 
const Header = ["Title", "Price", "Subcategory", "Popularity"];
//const Header = ["Name", "Age", 'Gender', 'Phone', 'Size' ];

class AllProducts extends React.Component {

  render () {

      return(
        <div className="table-data">
        {this.props.products && 
          <TablePagination
              headers={ Header }
              data={ this.props.products }
              columns="title.price.subcategory.popularity"
              perPageItemCount={ 10 }
              totalCount={ 1000 }
              arrayOption={ [] }
          />
        }
      </div>
      )
  }

}

export default AllProducts;
