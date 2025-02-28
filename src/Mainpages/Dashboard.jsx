import React, { useEffect, useState } from "react";
import axios from "axios";
import './Dashboard.css';
import user from '../Asset/user.png';
import ScoreCard from "../Card/ScoreCard";
function Dashboard() {

    const [quizScores, setQuizScores] = useState([]);
    const [userData, setUserData] = useState(null);

    useEffect(() => {
        const fetchScores = async () => {
            try {
                const storedUser = localStorage.getItem("userData");

                if (storedUser) {
                    setUserData(storedUser);
                }

                const user = JSON.parse(storedUser);
                // console.log(user);

                if (user) {
                    setUserData(user);
                }


                // Fetch quiz scores for the logged-in user
                const response = await axios.get(`http://localhost:8081/user_quiz_history/getMark/${user.id}`);

                setQuizScores(response.data);                               // Update state with fetched data
                // console.log(response.data);
            } catch (error) {
                console.error("Error fetching quiz scores:", error);
            }
        };

        // Fetch scores every 3 seconds
        const interval = setInterval(fetchScores, 3000);

        // Cleanup interval on component unmount
        return () => clearInterval(interval);
    }, []);


    return (
        <div className="Dashboard">
            <div className="Dashboard-1">
                <h2>Welcome back {userData ? userData.username : "Loading..."}</h2>
                <div className="Dashboard-1-left">
                    <p>{userData ? userData.email : "Loading..."}</p>
                    <div className="Profile-logo">
                        <img src={user} alt="" className="userprofileLogo" />
                    </div>
                </div>
            </div>
            <div className="Dashboard-2">
                <div className="Dashboard-2-left">
                    <span className="Dashboard-title">My Dashboard</span>
                    <div className="UserProfile">
                        <div className="Profile-image">
                            <img src={user} alt="" className="userprofileLogo" />
                        </div>
                        <p>ID: {userData ? userData.id : "Loading..."}</p>
                        <button className="ChangeImage">Change Image</button>
                    </div>
                </div>
                <div className="Dashboard-2-right">
                    <span className="Dashboard-title">Scores of Quiz</span>
                    <div className="Scores">
                        <div id="Score_1">
                            <p>Quiz_Name</p>
                            <p>Quiz_Mark</p>
                            <p>Quiz_Date</p>
                        </div>
                        <div id="Score_2">
                            {quizScores.length > 0 ? (
                                quizScores.map((quiz) => (
                                    <ScoreCard
                                        key={quiz.id}
                                        quizName={quiz.quizName}  // Corrected property name
                                        quizMark={quiz.quizMark}  // Corrected property name
                                        quizDate={quiz.quizDate}  // Corrected property name
                                    />
                                ))
                            ) : (
                                <p>No quiz records available.</p>
                            )}
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};
export default Dashboard;