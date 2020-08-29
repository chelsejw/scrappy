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
        <table className="my-5 table table-dark">
          <thead>
            <tr>
              <th scope="col">#</th>
              <th scope="col">Company</th>
              <th scope="col">Title</th>
              <th scope="col">Stack</th>
            </tr>
          </thead>
          <tbody>{rows}</tbody>
        </table>

        {props.data.length < 1 && "There is no data."}
      </div>
    );
}

export default Table