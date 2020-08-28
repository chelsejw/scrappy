import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'
import RingLoader from 'react-spinners/RingLoader'
import Table from './components/Table'

const App = () => {
    const [data, setData] = useState([]);
    const [loading, setLoading] = useState(true)
    useEffect(() => {
        axios.get("/jobs").then((res) => {
            setData(res.data.response)
            setLoading(false)
        }).catch(err => console.log(`Error in axios request`, err))
    }, []);

    useEffect(()=> {
        console.log(data)
    }, [data])


    return (
      <div>
        <Nav />
        <div className="container">
          {data.length > 1 ? (
            <Table data={data} />
          ) : (
            <div className="my-5">
              <RingLoader
                css={"margin: 0 auto;"}
                color={"#d84242"}
                size={150}
                loading={loading}
              />
              <div className="text-center mt-3">
                <span className="main-loading-txt">Getting jobs...</span>
              </div>
            </div>
          )}
        </div>
      </div>
    );

};


export default App;
