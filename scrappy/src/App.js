import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'
import RingLoader from 'react-spinners/RingLoader'
import Table from './components/Table'
import StackBtn from './components/StackBtn'

const App = () => {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(true)
    const [failure, setFailure] = useState(false)
    const [stack, setStack] = useState([])
    useEffect(() => {
        axios.get("/jobs")
        .then((res) => {
            setData(res.data.response)
            setLoading(false)
        })
        .catch((err) => {
          setLoading(false)
          setFailure(true)
          console.log(`Error in axios request`, err)
        })

        axios.get("/tech")
        .then((res) => {
            setStack(res.data.response)
        })
        .catch((err) => {
          console.log(`Error in axios request for tech`, err)
        })
    }, []);

    useEffect(()=> {
        console.log(data)
        console.log(stack)
    }, [data, stack])

    const stackItems = stack.map(item => {
      return <StackBtn name={item}/>
    })

    return (
      <div>
        <Nav />
        <div className="container">

          <h1 className="mt-3 text-center main-header">Tech@SG</h1>
          <div className="text-center">Supported Technologies as of 29 Aug</div>
          <div className="mt-3 w-75 mx-auto text-center">{stackItems}</div>
          {!failure && !loading && 
            <Table data={data} />}
          {loading && (<div className="my-5">
              <RingLoader
                css={"margin: 0 auto;"}
                color={"#d84242"}
                size={150}
                loading={loading}
              />
              <div className="text-center mt-3">
                <span className="main-loading-txt">Getting jobs...</span>
              </div>
            </div>)}

          {failure && <div className="text-center mt-3">
                <span className="main-loading-txt">Failed to get jobs.</span>
              </div>}
        </div>
      </div>
    );

};


export default App;
