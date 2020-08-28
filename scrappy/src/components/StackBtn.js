import React from 'react'

const StackBtn = (props)=> {


    let name = props.name.toLowerCase()

    switch (name) {
        case "node":
            name = 'nodejs'
            break;
        case "golang":
            name = 'go'
            break;
        case "c#":
            name = 'csharp'
            break;
        case "angular":
            name = "angularjs"
            break;
        default:
            break;
    }

    return (
      <div className={`stack-btn mr-2 mb-1`}>
        <i
          className={`devicon-${name.toLowerCase()}-plain stack-${name.toLowerCase()}`}
        ></i>
      </div>
    );
}

export default StackBtn