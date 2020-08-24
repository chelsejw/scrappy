import React, { useState, useEffect } from "react";
import axios from "axios";
import Nav from './components/Nav'

import Table from './components/Table'

const App = (props) => {
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

          <Table data={data} />
        </div>
      </div>
    );

};


export default App;
