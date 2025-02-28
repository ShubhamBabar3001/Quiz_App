import React from "react";
import './Card.css';

import { FontAwesomeIcon } from "@fortawesome/react-fontawesome";
import { faC, faCuttlefish, faJava, faPython } from "@fortawesome/free-brands-svg-icons";
function Card({ bgColor, icon, title, description }) {
    return (
        <div className="Card"  style={{ backgroundColor: bgColor}}>
           <FontAwesomeIcon icon={icon} className="CardIcon" />
            <h2 style={{ backgroundColor: bgColor }}>{title}</h2>
            <p style={{ backgroundColor: bgColor }}>{description}</p>
        </div>
    );
};
export default Card