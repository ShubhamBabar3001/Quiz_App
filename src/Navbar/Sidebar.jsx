import React, { useState } from 'react';
import './Sidebar.css';

function Slidebar({ setSelectedComponent }) {

    const [activeIndex, setActiveIndex] = useState(0);

    const menuItems = [
        { icon: 'fas fa-tachometer-alt', label: 'Dashboard' },
        { icon: 'fas fa-book', label: 'My Quiz' },
        { icon: 'fas fa-users', label: 'Help' }
    ];

    return (
        <div className="sidebar">
            <h1>Quiz App</h1>
            <ul>
                {menuItems.map((item, index) => (
                    <li
                        key={index}
                        className={activeIndex === index ? "active" : ""}
                        onClick={() => {
                            setActiveIndex(index);
                            setSelectedComponent(item.label);
                        }}
                    >
                        <i className={item.icon}></i> {item.label}
                    </li>
                ))}
            </ul>
        </div>
    );
};
export default Slidebar