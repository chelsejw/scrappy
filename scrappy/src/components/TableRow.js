import React from 'react'
import StackBtn from './StackBtn'
const TableRow = (props) => {

    const stackButtons = props.data.stack.map((tech, i) => {
        return <StackBtn key={i} name={tech} />;
    })

    return (
      <tr>
        <th scope="row">{props.num}</th>
        <td>{props.data.company}</td>
        <td>{props.data.title}</td>
        <td>{stackButtons.length > 0 ? stackButtons : "-"}</td>
        <td><a className="text-light" href={props.data.link}>View Posting</a></td>
      </tr>
    );
}

export default TableRow