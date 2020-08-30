import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'
import RingLoader from 'react-spinners/RingLoader'
import Table from './components/Table'
import moment from 'moment'
import MainData from './components/MainData'
import SupportedHeader from './components/SupportedHeader'
const App = () => {
    const [jobs, setJobs] = useState([]);
    const [loading, setLoading] = useState(true)
    const [failure, setFailure] = useState(false)
    const [lastUpdate, setLastUpdate] = useState({})
    const [stack, setStack] = useState([])
    useEffect(() => {
        axios.get("/hello")
        .then((res) => {
            console.log(res.data)
            setJobs(res.data.response.jobs)
            setLastUpdate((prev) => {
              return {
                ...prev,
                jobs: res.data.response.jobs[0].created_at,
              };
            });
            setLoading(false)
        })
        .catch((err) => {
          setLoading(false)
          setFailure(true)
          console.log(`Error in axios request`, err)
        })

        axios.get("/tech")
        .then((res) => {
            setStack(res.data)
            setLastUpdate(prev => {
              return {...prev, tech: res.data[res.data.length-1].created_at}
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

    return (
      <div>
        <Nav />
        <div className="container">
          <SupportedHeader
            lastUpdate={moment(lastUpdate.tech).format("DD MMMM YYYY")}
            stack={stack}
          />

          <MainData
            loading={loading}
            failure={failure}
            lastUpdate={moment(lastUpdate.jobs).format("DD MMM, h:mm:ss a")}
            data={jobs}
          />
          
        </div>
      </div>
    );

};


export default App;
