import './App.css';
import { BrowserRouter as Router, Routes, Route, useLocation } from "react-router-dom";
import Navbar from './Navbar/Navbar.jsx';
import Page1 from './Pages/Page1.jsx';
import FormPage from './Pages/FormPage.jsx';
import Page2 from './Pages/Page2.jsx';
import Page3 from './Pages/Page3.jsx';

function App() {
  return (
    <Router>
      <MainComponent />
    </Router>
  );
}

function MainComponent() {
  const location = useLocation(); // ✅ Get current route

  // ✅ Show Navbar only on Page1 and FormPage
  const showNavbar = location.pathname === "/page1" || location.pathname === "/form" || location.pathname === "/";

  return (
    <div className="App">
      {showNavbar && <Navbar />} {/* ✅ Conditionally render Navbar */}

      <Routes>
        <Route path="/page1" element={<Page1 />} />
        <Route path="/form" element={<FormPage />} />
        <Route path="/page2" element={<Page2 />} />
        <Route path="/page3" element={<Page3 />} />
        <Route path="/" element={<Page1 />} /> 
      </Routes>
    </div>
  );
}

export default App;
