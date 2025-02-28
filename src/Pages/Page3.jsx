import React, { useEffect, useState, useCallback  } from 'react';
import { useLocation } from "react-router-dom";
import './Page3.css';
import axios from "axios";
import QuestionCard from '../Card/QuestionCard';
import { useNavigate } from "react-router-dom";


function Page3() {
    const [questions, setQuestions] = useState([]);                 // ✅ Store API questions
    const [index, setIndex] = useState(0);                          // ✅ Controls which question is displayed
    const [selectedOptions, setSelectedOptions] = useState([]);     // ✅ Stores selected options
    const location = useLocation();
    const { quiz_name, quiz_time, table_name } = location.state || {};
    const [timeLeft, setTimeLeft] = useState(quiz_time * 60);
    const [quizSubmitted, setQuizSubmitted] = useState(false);
    
    const navigate = useNavigate();


    // ✅ Function to Fetch Questions from API
    useEffect(() => {
        const fetchQuestions = async () => {
            if (!table_name) {
                console.error("Error: table_name is missing");
                return;
            }

            try {
                const response = await axios.get(`http://localhost:8081/quiz_api/questions/${table_name}`);

                const formattedQuestions = response.data.map((q) => ({
                    id: q[0],
                    question: q[1],
                    options: q.slice(2)
                }));

                setQuestions(formattedQuestions);
                setSelectedOptions(Array(formattedQuestions.length).fill(null));
            } catch (error) {
                console.error("Error fetching questions:", error);
            }
        };

        fetchQuestions();
    }, [table_name]);

//------------------------------------------------ Handle Submit -------------------------------
const handleSubmit = useCallback(async () => {
    if (quizSubmitted) return;

    try {
        const response = await axios.get(`http://localhost:8081/quiz_api/questions/${table_name}/answer`);
        const correctAnswers = response.data;
        console.log(correctAnswers);

        let calculatedScore = selectedOptions.reduce((score, option, i) => {
            if (option && correctAnswers[i]) {
                return option.trim().toLowerCase() === correctAnswers[i].trim().toLowerCase()
                    ? score + 1
                    : score;
            }
            return score;
        }, 0);

        console.log("Final Calculated Score:", calculatedScore); 
        setQuizSubmitted(true);

        const storedUser = localStorage.getItem("userData");
        const user = storedUser ? JSON.parse(storedUser) : null;
        const userId = user ? user.id : null;


        const currentDate = new Date().toISOString().split("T")[0];

        const response2 = await axios.post(`http://localhost:8081/user_quiz_history/save`, {
            userId,   // ✅ Use the correct field name
            quizName:quiz_name, 
            quizMark: calculatedScore,
            quiz_date: currentDate
        });

        if (response2.status === 200) {
            alert(`Quiz submitted!`);
        }

        navigate('/page2', { replace: true });

    } catch (error) {
        console.error("Error fetching correct answers:", error);
    }
}, [quizSubmitted, selectedOptions, table_name, navigate, quiz_name]);



    //------------------------------------------------- Handle Option Change ----------------------------------
    const handleOptionChange = (questionIndex, value) => {
        let newOptions = [...selectedOptions];
        newOptions[questionIndex] = value;
        setSelectedOptions(newOptions);
    };

    // Function to clear answer for a specific question
    const handleOptionClear = (questionIndex) => {
        let newOptions = [...selectedOptions];
        newOptions[questionIndex] = null;
        setSelectedOptions(newOptions);
    };

    //Timer Logic 
    useEffect(() => {
        if (timeLeft <= 0 && !quizSubmitted) {
            handleSubmit();
            return;
        }
    
        if (quizSubmitted) return;
    
        const timer = setInterval(() => {
            setTimeLeft(prevTime => prevTime - 1);
        }, 1000);
    
        return () => clearInterval(timer);
    }, [timeLeft, quizSubmitted, handleSubmit]);



    // Function submit quiz
    const submitQuiz = () => {
        if (!quizSubmitted) {
            handleSubmit();
        }
    };


    return (
        <div className="Page3">
            {
                questions.length === 0 ?
                    (
                        <p style={{ color: "#fff", margin: "auto", textAlign: "center" }}>
                            Loading...
                        </p>


                    ) :
                    (
                        <>
                            <div className="Page3_1">
                                <div><span className='QuizTitleInside'>{quiz_name}</span></div >
                                <span className='TimerClock'>Time Left: {Math.floor(timeLeft / 60)}:{(timeLeft % 60).toString().padStart(2, '0')}</span>

                            </div >
                            <div className="Page3_2">
                                <QuestionCard
                                    key={questions[index]?.id}
                                    questionIndex={index}
                                    question={questions[index]?.question}
                                    options={questions[index]?.options}
                                    selectedOption={selectedOptions[index]}
                                    handleOptionChange={handleOptionChange}
                                    handleOptionClear={handleOptionClear}
                                />
                            </div>

                            <div className="Page3_3">
                                <button className="QuizStartBtn" onClick={() => setIndex(index - 1)} disabled={index === 0}>
                                    Previous
                                </button>
                                <button className="QuizStartBtn" onClick={() => setIndex(index + 1)} disabled={index === questions.length - 1}>
                                    Next
                                </button>
                                <button className='Quizsubmit' onClick={submitQuiz}>Submit</button>
                            </div>
                        </>
                    )
            }
        </div >
    );
};
export default Page3