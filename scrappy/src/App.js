import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'
import RingLoader from 'react-spinners/RingLoader'
import Table from './components/Table'
import StackBtn from './components/StackBtn'
import moment from 'moment'

const App = () => {
    const [jobs, setJobs] = useState([]);
    const [loading, setLoading] = useState(true)
    const [failure, setFailure] = useState(false)
    const [lastUpdate, setLastUpdate] = useState({})
    const [stack, setStack] = useState([])
    useEffect(() => {
        axios.get("/jobs")
        .then((res) => {
            setJobs(res.data.response.jobs)
            setLastUpdate(prev => {
              return {...prev, jobs: res.data.response.last_update}
            })
            setLoading(false)
        })
        .catch((err) => {
          setLoading(false)
          setFailure(true)
          console.log(`Error in axios request`, err)
        })

        axios.get("/tech")
        .then((res) => {
            setStack(res.data.response.tech)
            setLastUpdate(prev => {
              return {...prev, tech: res.data.response.last_update}
            })
        })
        .catch((err) => {
          console.log(`Error in axios request for tech`, err)
        })
    }, []);

    useEffect(()=> {
        console.log(jobs)
        console.log(stack)
        console.log(lastUpdate)
    }, [jobs, stack, lastUpdate])

    const stackItems = stack.map(item => {
      return <StackBtn name={item}/>
    })

    return (
      <div>
        <Nav />
        <div className="container">

          <h1 className="mt-3 text-center main-header">Tech@SG</h1>
          <div className="text-center">Supported Technologies as of {moment(lastUpdate.tech).format("DD MMMM YYYY")}</div>
          <div className="my-3 w-75 mx-auto text-center">{stackItems}</div>
          {!failure && !loading && 
            (<div>
              <div className="text-center">Last added jobs: {moment(lastUpdate.jobs).format("DD MMM, h:mm:ss a")}</div>
              <Table data={jobs} />
            </div>)}
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
