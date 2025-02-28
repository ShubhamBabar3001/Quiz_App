import React from "react";
import Card from "../Card/Card";
import FrontPageImage from '../Asset/FrontPageLogo.png';
import './Page1.css';
import {faCuttlefish, faJava, faPython } from "@fortawesome/free-brands-svg-icons";
function Page1() {
    return (
        <div className="Page1">
            <div className="Page1_Top">
                <div className="Page1_Top_Left">
                    <img src={FrontPageImage} alt="" />
                </div>
                <div className="Page1_Top_Right">
                    <h1>
                        Daily Quiz, Daily Bonus- Play Today!
                    </h1>
                    <p>
                        QuizKwiz is the daily Trivia and quiz playing platform. It brings some exciting surprises every day.
                    </p>
                </div>
            </div>
            <div className="Page1_2">
                <p>Chose One from Categories below  & see how many questions you can asnwer <br /> Correctly out of 20 questions</p>
                <div className="Page1_2_Card">
                    <Card bgColor="#14b6ff" icon={faCuttlefish} title="C programming" description="Test your C expertise!" />
                    <Card bgColor="#ed3f7a" icon={faJava} title="Java" description="Master Java coding concepts!" />
                    <Card bgColor="#ff6433" icon={faPython} title="Python" description="Improve your Python knowledge!" />
                    <Card bgColor="#ff6433" icon={faPython} title="Python" description="Improve your Python knowledge!" />
                </div>
                <button className="main-btn">Start Test</button>
            </div>
            <div className="Page1_2">
                <h1>Contact Me</h1>
                 <div className="feedback">
                    <input type="text" placeholder="Name" />
                    <input type="email" placeholder="Email" />
                 </div>
                 <div className="feedback">
                    <textarea name="" id="" placeholder="Enter the Massage"></textarea>
                 </div>
                 <button className="main-btn">Submit feedback</button>
            </div>
        </div>
    );
};
export default Page1