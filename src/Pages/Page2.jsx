import React, { useState } from "react";
import './Page2.css';
import Sidebar from "../Navbar/Sidebar.jsx";
import Dashboard from '../Mainpages/Dashboard.jsx';
import QuizDiv from "../Mainpages/QuizDiv.jsx";
import HelpDiv from "../Mainpages/HelpDiv.jsx";
function Page2() {
    const [selectedComponent, setSelectedComponent] = useState("Dashboard");

    // Function to render the selected component
    const renderComponent = () => {
        switch (selectedComponent) {
            case "Dashboard":
                return <Dashboard />;
            case "My Quiz":
                return <QuizDiv />;
            case "Help":
                return <HelpDiv />;
            default:
                return <Dashboard />;
        }
    };

    return (
        <div className="Page2">
            <div className="Page2-1">
                <Sidebar setSelectedComponent={setSelectedComponent} />
                {renderComponent()}
            </div>
        </div>
    );
};
export default Page2;