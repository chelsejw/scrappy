import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'
import RingLoader from 'react-spinners/RingLoader'
import Table from './components/Table'

const App = () => {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(true)
    const [failure, setFailure] = useState(false)
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
    }, []);

    useEffect(()=> {
        console.log(data)
    }, [data])


    return (
      <div>
        <Nav />
        <div className="container">
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
