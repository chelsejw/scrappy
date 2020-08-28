import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'

import Table from './components/Table'

const App = () => {
    const [data, setData] = useState([]);
    useEffect(() => {
        axios.get("/jobs").then((res) => {
            setData(res.data.response)
        }).catch(err => console.log(`Error in axios request`, err))
    }, []);

    useEffect(()=> {
        console.log(data)
    }, [data])


    return (
      <div>
        <Nav />
        <div className="container">
          {data.length > 1 ? <Table data={data} /> : <div className="text-center my-5 mx-0"><h2>Loading...</h2></div>}
        </div>
      </div>
    );

};


export default App;
