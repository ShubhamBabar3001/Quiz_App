import React, { useState,useEffect } from "react";
import axios from "axios";
import { useNavigate } from "react-router-dom";
import './FormPage.css';
import Igris from '../Asset/igris.jpg';
import Beru from '../Asset/beru.jpg';
function FormPage() {
    const [formState, setFormState] = useState(false);
    const navigate = useNavigate();

    const [userName, setUserName] = useState("");
    const [userEmail, setUserEmail] = useState("");
    const [userPassword, setPassword] = useState("");
    const [confirmPassword, resetPassword] = useState("");
    const [otp,setOtp] = useState();
    const [verified,setVerified] = useState(false);

    //------------------------------------------------- Form Login Submit ✅--------------------------------
    const handleLoginSubmit = async (e) => {
        e.preventDefault();
        console.log({userEmail});
        console.log({userPassword});
        try {
            const response = await axios.post("http://localhost:8081/quiz_api/user/login", 
                { userEmail, userPassword }
            );
    
    
            if (response.status === 200 && response.data) {
                // console.log("Response Data:", response.data); // ✅ Log response data
    
                // ✅ Extract user details correctly
                const user = {
                    id: response.data.userId,                          // ✅ Correct key
                    username: response.data.userName, // ✅ Correct key
                    email: response.data.userEmail,
                    quizCompleted: response.data.quizCompleted
                };
    
                // console.log("User Data:", user);
                localStorage.setItem("userData", JSON.stringify(user)); // ✅ Store user data
    
                navigate("/page2", { state: { userId: user.id } }); // ✅ Navigate to Page2 with userId
            } else {
                console.error("User data is missing in response");
                alert("Login failed. Please check your credentials.");
            }
        } catch (error) {
            console.error("Error:", error);
            alert("User Not Present or Incorrect Credentials");
        }
    };

    //------------------------------------- Send OTP ---------------------------------------------------

    useEffect(() => {
        if (verified) {
            signUpUser();
        }
    }, [verified]);


    const sendOtp = async () => {
        if (!userEmail) {
          alert("Please enter an email");
          return;
        }
      
        try {
          const response = await axios.post("http://localhost:8081/api/otp/send", { userEmail });
          
          alert(response); // Assuming the API sends a plain text response
        } catch (error) {
          alert(error.response?.data || "Error sending OTP");
        }
      };
    

    //------------------------------------ Form SignIn Submit ------------------------------------------
    const handleSignInSubmit = async (e) => {
        e.preventDefault();
        if (userPassword !== confirmPassword) {
            alert("Passwords do not match!");
            return;
        }
        if(!otp){
            alert("Please enter OTP");
            return;
        }

        try {
            const response = await axios.post("http://localhost:8081/api/otp/verify", { userEmail, otp });
        
            alert(response.data); // Display the API response message
        
            if (response.status === 200) {
                setVerified(!verified);
                console.log({verified});
            }
        } catch (error) {
            alert(error.response?.data || "Error verifying OTP");
        }

    }
    const signUpUser = async () => {
        try {
            const response = await axios.post("http://localhost:8081/quiz_api/user/signIn", {
                userName, userEmail, userPassword
            });
            console.log(response);
            if (response.status === 200) {
                alert("Signup Successful! Please Login.");
                navigate("/page2");
            }
        } catch (error) {
            alert("Error during Signup. Please try again.");
        }
    };

    // Form Chnage
    function formChange() {
        setFormState(!formState);
    }

    return (
        <div className="Form-div1">
            <div className="Form-div2">
                <div className="FormLeft">
                    {formState ? (<img src={Beru} alt="" />) : (<img src={Igris} alt="" />)}
                </div>
                <div className="FormRight">
                    {formState ?
                        (<form onSubmit={handleLoginSubmit}>
                            <p className="Form-title"> Sign In</p>
                            <div className="Form-div3">
                                <p>Hello</p>
                                <p>We are Glad to See you</p>
                            </div>

                            <input type="email" placeholder="Name" className="inputFullField" onChange={(e) => setUserEmail(e.target.value)} required/>
                            <input type="password" placeholder="Password" className="inputFullField" onChange={(e) => setPassword(e.target.value)} required/>

                            <div className="Form-btn">
                                <button type="submit" className="main-btn">Submit</button>
                            </div>
                            <p className="Resend" onClick={formChange}>Don't have Account? SignUp</p>
                        </form>) :
                        (<form onSubmit={handleSignInSubmit}>
                            <p className="Form-title"> Sign In</p>
                            <div className="Form-div3">
                                <p>Hello</p>
                                <p>We are Glad to See you</p>
                            </div>

                            <input type="text" placeholder="Name" className="inputFullField" required onChange={(e) => setUserName(e.target.value)} />
                            <input type="email" placeholder="Email" className="inputFullField" required onChange={(e) => setUserEmail(e.target.value)} />

                            <div className="Form-div4">
                                <input type="password" placeholder="Password" required onChange={(e) => setPassword(e.target.value)} />
                                <input type="password" placeholder="Repeate Password" required onChange={(e) => resetPassword(e.target.value)} />
                            </div>
                            <div className="OTPDiv">
                                <input type="text" placeholder="OTP"onChange={(e) => setOtp(e.target.value)} />
                                <button className="otp-btn" type="button" onClick={sendOtp} >SEND OTP</button>
                            </div>
                            <div className="Form-btn">
                                <button type="submit" className="main-btn">Submit</button>
                            </div>
                            <p className="Resend" onClick={formChange}>Already have an account? Login</p>
                        </form>)
                    }
                </div>
            </div>
        </div>
    );
};
export default FormPage