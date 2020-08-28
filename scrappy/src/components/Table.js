import React from 'react'
import TableRow from './TableRow'


const Table = (props) => {
    const rows = props.data.map((job, index) => {
        return (
            <TableRow key={job.id} num={index+1} data={job}/>
        )
    })

    return (
      <div className="table-responsive">
        <table className="my-5 table table-hover table-dark">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Company</th>
              <th scope="col">Title</th>
              <th scope="col">Stack</th>
              <th scope="col">Link</th>
            </tr>
          </thead>
          <tbody>{rows}</tbody>
        </table>
      </div>
    );
}

export default Table