import React, {useState} from 'react';
import Box from '@mui/material/Box';
import TextField from '@mui/material/TextField';
import Button from '@mui/material/Button';
import { FormControl, FormLabel } from '@mui/material';
import InputLabel from '@mui/material/InputLabel';
import MenuItem from '@mui/material/MenuItem';
import Select from '@mui/material/Select';
import axios from 'axios';

const RecReqView = () => {
  const [schoolYear, setSchoolYear] = useState('');
  const [balance, setBalance] = useState('');
  const [target, setTarget] = useState('');
  const [window, setWindow] = useState('');
  const [sdg, setSdg] = useState('');
  const [gc, setGc] = useState('');
  const [aoe, setAoe] = useState('');

  const submitFundRecRequest = () => {
    axios.post('https://127.0.0.1:8080/submit', {
      school_year: schoolYear,
      balance: balance,
      target: target,
      window: window,
      sdg: sdg,
      gc: gc,
      aoe: aoe
    },
    {
      headers: {
        'Content-Type': 'application/json'
      }
    }
    )
    .then((response) => {
      console.log(response);
    })
    .catch((error) => {
      console.log(error);
    });
  }

  return (
    <Box
      display="flex"
      justifyContent="center"
      alignItems="center"
    >
      <FormControl>
        <FormLabel htmlFor="school_year">School Year</FormLabel>
        <Select
          id="school_year"
          onChange={(e) => setSchoolYear(e.target.value)}
        >
          <MenuItem value={"sophomore"}>Sophomore</MenuItem>
          <MenuItem value={"junior"}>Junior</MenuItem>
          <MenuItem value={"senior"}>Senior</MenuItem>
        </Select>

        <FormLabel htmlFor="balance">Your Balance</FormLabel>
        <TextField
          id="balance"
          onChange={(e) => setBalance(e.target.value)}
        />

        <FormLabel htmlFor="target">Amount To Spend</FormLabel>
        <TextField
          id="target"
          onChange={(e) => setTarget(e.target.value)}
        />

        <FormLabel htmlFor="window">GLASS Window</FormLabel>
        <Select
          id="window"
          onChange={(e) => setWindow(e.target.value)}
        >
          <MenuItem value={"global"}>Global Competency</MenuItem>
          <MenuItem value={"service"}>Commitment to Service</MenuItem>
          <MenuItem value={"leadership"}>Leadership Development</MenuItem>
          <MenuItem value={"academic"}>Academic Excellence</MenuItem>
          <MenuItem value={"professional"}>Professional Development</MenuItem>
        </Select>

        <FormLabel htmlFor="sdg">Sustainable Development Goal</FormLabel>
        <TextField
          id="sdg"
          onChange={(e) => setSdg(e.target.value)}
        />

        <FormLabel htmlFor="gc">Grand Challenge</FormLabel>
        <TextField
          id="gc"
          onChange={(e) => setGc(e.target.value)}
        />

        <FormLabel htmlFor="aoe">Area of Excellence</FormLabel>
        <TextField
          id="aoe"
          onChange={(e) => setAoe(e.target.value)}
        />

        <Button variant="contained" onClick={submitFundRecRequest}>Submit</Button>
      </FormControl>
    </Box>
  );
}

export default RecReqView;
