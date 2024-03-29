import React, { useState} from 'react'
import { Modal, ModalBody, Row } from "reactstrap"
import heroImg from '../../assets/hero-img.png'
import './Hero.css'

const Hero = () => {
    const [modal, setModal] = useState(false);

    return (
        <section className="hero">
        <div className="container">
            <div className="hero-text">
                <p><span>Nitin Srivastva </span>
                    is a Blockchain Developer From India.</p>
                <h1>I develop decentralised apps in web3 space.</h1>
                <h3>And also have a good hold on DataStructure and Algorithms</h3>

                <Modal size='md' isOpen={modal} toggle={() => setModal(!modal)}>
                    <ModalBody>
                            <Row className="text-align">
                                <label htmlFor="" toggle={() => setModal(!modal)}>
                                    Mail Id - nitinsrivastava2all@gmail.com
                                </label>

                            </Row>
                    </ModalBody>
                </Modal>

                <button className="msg-btn" onClick={() => setModal(true)}>Get in Touch</button>
                {/*  =========popup bootstrap end==========  */}

            </div>
            <div className="hero-img">

                <div className="img-container">
                    <img src={heroImg} alt="profilePhoto" />
                </div>
            </div>
        </div>
    </section>
    )
}

export default Hero
