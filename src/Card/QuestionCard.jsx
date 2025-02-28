import React from "react";
import './QuestionCard.css';

function QuestionCard({ questionIndex, question, options, selectedOption, handleOptionChange, handleOptionClear }) {


    return (
        <div className="QuestionCard">
            <div className="QuestionDiv">
                <span>{questionIndex+1}.</span>
                <span className="Question">{question}</span>
            </div>

            <div className="OptionsContainer">
                <div className="OptionRow">
                    <label className="OptionLabel">
                        <input
                            type="radio"
                            name={`question-${questionIndex}`} // Unique name per question
                            value={options[0]}
                            checked={selectedOption === options[0]}
                            onChange={() => handleOptionChange(questionIndex, options[0])}
                        />
                        {options[0]}
                    </label>
                    <label className="OptionLabel">
                        <input
                            type="radio"
                            name={`question-${questionIndex}`}
                            value={options[1]}
                            checked={selectedOption === options[1]}
                            onChange={() => handleOptionChange(questionIndex, options[1])}
                        />
                        {options[1]}
                    </label>
                </div>
                <div className="OptionRow">
                    <label className="OptionLabel">
                        <input
                            type="radio"
                            name={`question-${questionIndex}`}
                            value={options[2]}
                            checked={selectedOption === options[2]}
                            onChange={() => handleOptionChange(questionIndex, options[2])}
                        />
                        {options[2]}
                    </label>
                    <label className="OptionLabel">
                        <input
                            type="radio"
                            name={`question-${questionIndex}`}
                            value={options[3]}
                            checked={selectedOption === options[3]}
                            onChange={() => handleOptionChange(questionIndex, options[3])}
                        />
                        {options[3]}
                    </label>
                </div>
            </div>

            <div className="QuestionButtonDiv">
                <button className="QuizStartBtn" onClick={() => handleOptionClear(questionIndex)}>Clear</button>
            </div>
        </div>
    );
}

export default QuestionCard;
