import React from 'react'

const Paginator = (props)=> {

    const {next, prev, count} = props.info
    const current = props.current
    return (
      <div className="my-3 text-center">
        {prev && (
          <button
            className="btn btn-success btn-sm"
            onClick={() => {
              props.setPage(current - 1);
            }}
          >
            Previous
          </button>
        )}
        {count} Results Current Page: {current}
        {next && (
          <button
            className="btn btn-success btn-sm"
            onClick={() => {
              props.setPage(current + 1);
            }}
          >
            Next
          </button>
        )}
      </div>
    );
}

export default Paginator