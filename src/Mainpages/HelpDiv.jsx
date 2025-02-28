import React, { useState } from "react";
import './HelpDiv.css';
import axios from 'axios';
import user from '../Asset/user.png';


function HelpDiv() {
    const [issue, setIssue] = useState(""); // State to store the issue
    const [userId,setId] = useState(0);

    const handleSubmit = async (e) => {
        e.preventDefault();
    
        const userdata = localStorage.getItem("userData");
        if (!userdata) {
            alert("User data not found. Please log in.");
            return;
        }
    
        const user = JSON.parse(userdata);
        const userId = user.id;  // Directly use user.id instead of using useState
    
        try {
            const response = await axios.post("http://localhost:8081/feedback/save", 
                { userId:userId, feedback: issue } // Change `issue` to `feedback` to match your backend entity
            );
    
            if (response.status === 200) {
                alert("Issue submitted successfully!");
                setIssue(""); // Clear the textarea after successful submission
            } else {
                alert("Failed to submit the issue.");
            }
    
        } catch (error) {
            console.error("Error submitting issue:", error);
            alert("An error occurred while submitting the issue.");
        }
    };
    

    return (
        <div className="HelpDiv">
            <div className="HelpDiv-1">
                <h2>Help Desk</h2>
                <div className="HelpDiv-1-left">
                    <p>shubhambabar551@gmail.com</p>
                    <div className="Profile-logo">
                        <img src={user} alt="" className="userprofileLogo" />
                    </div>
                </div>
            </div>
            <div className="HelpDiv-2">
                <form onSubmit={handleSubmit}>
                    <span>Enter the Issue</span>
                     <textarea 
                        value={issue} 
                        onChange={(e) => setIssue(e.target.value)} 
                        required 
                    />
                    <button className="submitQuery">Submit</button>
                </form>
            </div>
        </div>
    );
};
export default HelpDiv