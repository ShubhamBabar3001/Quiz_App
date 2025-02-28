import React from "react";
import './ScoreCard.css';

function ScoreCard({ quizName, quizMark, quizDate }){
    return(
        <div className="Scorecard">
            <p>{quizName}</p>
            <p>{quizMark}</p>
            <p>{quizDate}</p>
        </div>
    );
};
export default ScoreCard;