import './Wallet.css';
import Web3 from "web3";
import ABI from "./ABI.json"
import {useState} from "react";

const Wallet =({saveState})=>{
      const [connected,setConnected] = useState(true);
      const init = async() => {
            try{
                  const web3 = new Web3(window.ethereum);
                  await window.ethereum.request({method:'eth_requestAccounts'});
                  const contract = new web3.eth.Contract(ABI,"0xF088268b482FB8d4Cf2428Df4bFAB6dec6109676");
                  saveState({web3:web3,contract:contract})
                  setConnected(false)
            }
            catch(error)
            {
                  alert("Install metamask first");
            }
      }

      return<>
      <div className="header">
      {false  && <button className="connectBTN">
         <a href="https://metamask.app.link/dapp/sriche.netlify.app/">Click For Mobile</a>
        </button>  } 
       <button className="connectBTN" onClick={init} disabled={!connected}>{connected?"Connect Metamask":"Connected"}</button>
      </div>
      </>
}
export default Wallet;